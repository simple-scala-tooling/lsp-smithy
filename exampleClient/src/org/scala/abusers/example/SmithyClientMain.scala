package org.scala.abusers.example

import cats.effect._
import cats.syntax.all._
import fs2.io.process.Processes
import fs2.Stream
import jsonrpclib.fs2._
import jsonrpclib.smithy4sinterop.ClientStub
import jsonrpclib.smithy4sinterop.ServerEndpoints
import jsonrpclib.CallId

import _root_.example.ExampleLspClient
import _root_.example.ExampleLspServer
import _root_.lsp._

object SmithyClientMain extends IOApp.Simple {

  // Reserving a method for cancelation.
  val cancelEndpoint = CancelTemplate.make[CallId]("$/cancel", identity, identity)

  type IOStream[A] = fs2.Stream[IO, A]
  def log(str: String): IOStream[Unit] = Stream.eval(IO.consoleForIO.errorln(str))

  // Implementing the generated interface
  object Client extends ExampleLspClient[IO] {
    def initialized(params: InitializedParams): IO[Unit] =
      IO.consoleForIO.errorln("client received initialized")
  }

  def run: IO[Unit] = {
    val run = for {
      ////////////////////////////////////////////////////////
      /////// BOOTSTRAPPING
      ////////////////////////////////////////////////////////
      _         <- log("Starting client")
      serverJar <- sys.env.get("SERVER_JAR").liftTo[IOStream](new Exception("SERVER_JAR env var does not exist"))
      // Starting the server
      rp <- Stream.resource(
        Processes[IO]
          .spawn(
            fs2.io.process.ProcessBuilder(
              "java",
              "-jar",
              serverJar,
            )
          )
      )
      // Creating a channel that will be used to communicate to the server
      fs2Channel <- FS2Channel.stream[IO](cancelTemplate = cancelEndpoint.some)
      // Mounting our implementation of the generated interface onto the channel
      _ <- fs2Channel.withEndpointsStream(
        ServerEndpoints(Client).toOption.getOrElse(sys.error("Couldn't create ServerEndpoints"))
      )
      // Creating stubs to talk to the remote server
      server: ExampleLspServer[IO] = ClientStub(ExampleLspServer, fs2Channel).toOption.getOrElse(
        sys.error("Couldn't create ClientStub")
      )
      _ <- Stream(())
        .concurrently(
          fs2Channel.output
            // .evalTap(IO.println)
            .through(lsp.encodeMessages)
            // .through(lsp.decodePayloads)
            // .evalTap(IO.println)
            // .through(lsp.encodePayloads)
            .through(rp.stdin)
        )
        .concurrently(
          rp.stdout
            // .through(lsp.decodePayloads)
            // .evalTap(IO.println(_))
            // .through(lsp.encodePayloads)
            .through(lsp.decodeMessages)
            .through(fs2Channel.inputOrBounce)
        )
        .concurrently(rp.stderr.through(fs2.io.stderr[IO]))

      ////////////////////////////////////////////////////////
      /////// INTERACTION
      ////////////////////////////////////////////////////////
      result1 <- Stream.eval(
        server.initializeOp(
          InitializeParams(
            processId = Some(1),
            rootUri = Some("/bin/"),
            capabilities = ClientCapabilities(),
          )
        )
      )
      _ <- log(s"Client received $result1")
      _ <- Stream.eval(
        server.textDocumentDidOpen(
          DidOpenTextDocumentParams(
            TextDocumentItem(
              uri = "/home/bla.txt",
              languageId = LanguageKind.SCALA,
              version = 0,
              text = "Hello!",
            )
          )
        )
      )
    } yield ()
    run.compile.drain.guarantee(IO.consoleForIO.errorln("Terminating client"))
  }

}
