$version: "2.0"

namespace example

use jsonrpclib#jsonRpc
use lsp#InitializeOp
use lsp#Initialized
use lsp#TextDocumentDidOpen

@jsonRpc
service ExampleLspClient {
    operations: [
        Initialized
    ]
}

@jsonRpc
service ExampleLspServer {
    operations: [
        InitializeOp
        TextDocumentDidOpen
    ]
}
