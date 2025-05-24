$version: "2.0"

namespace example

use jsonrpclib#jsonRPC
use lsp#InitializeOp
use lsp#Initialized
use lsp#TextDocumentDidOpen

@jsonRPC
service ExampleLspClient {
    operations: [Initialized]
}

@jsonRPC
service ExampleLspServer {
    operations: [InitializeOp, TextDocumentDidOpen]
}
