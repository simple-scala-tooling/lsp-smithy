# LSP Smithy

Smithy definitions for the Language Server Protocol (LSP), enabling type-safe LSP client and server implementations in Scala.

## Overview

This project converts the official [LSP specification](https://microsoft.github.io/language-server-protocol/) into Smithy format, allowing you to generate type-safe Scala code using [Smithy4s](https://github.com/disneystreaming/smithy4s). The generated code can be used with [jsonrpclib](https://github.com/neandertech/jsonrpclib)'s smithy4s integration to build LSP clients and servers.

## Published Modules

### `lsp-smithy-definitions`

The core artifact containing the Smithy definitions for LSP.

**sbt:**
```scala
libraryDependencies += "io.github.simple-scala-tooling" % "lsp-smithy-definitions" % "x.y.z"
```

**Mill:**
```scala
ivy"io.github.simple-scala-tooling:lsp-smithy-definitions:x.y.z"
```

**scala-cli:**
```scala
//> using dep io.github.simple-scala-tooling:lsp-smithy-definitions:x.y.z
```

This artifact includes:
- `lsp.smithy` - Complete LSP specification in Smithy format
- Manifest file for Smithy code generation

## Examples

See the [`exampleClient`](exampleClient/src/org/scala/abusers/example/SmithyClientMain.scala) module for a complete working example of an LSP client.

For a real-world usage example, check out [SLS (Simple Language Server)](https://github.com/simple-scala-tooling/sls), a Scala language server that uses this library to provide type-safe LSP communication.

## LSP Version

This project tracks the official LSP specification. The current version is based on LSP 3.18.

## Dependencies

This project relies on:
- [jsonrpclib](https://github.com/neandertech/jsonrpclib) - JSON-RPC implementation
- [Smithy4s](https://github.com/disneystreaming/smithy4s) - Smithy code generation for Scala
- [alloy-core](https://github.com/disneystreaming/alloy) - Additional Smithy traits

## License

Apache 2.0 - See [LICENSE](LICENSE) for details.

## Contributing

Contributions are welcome! The Smithy definitions are automatically generated from the official LSP specification.

## Maintainers

- [Kasper Kondzielski](https://github.com/ghostbuster91)
- [Jakub Kozłowski](https://github.com/kubukoz)
