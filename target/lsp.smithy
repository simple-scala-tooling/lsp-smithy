$version: "2.0"

namespace lsp

operation CallHierarchyIncomingCallsOp {
    input: CallHierarchyIncomingCallsOpInput
    output: CallHierarchyIncomingCallsOpOutput
}

operation CallHierarchyOutgoingCallsOp {
    input: CallHierarchyOutgoingCallsOpInput
    output: CallHierarchyOutgoingCallsOpOutput
}

operation CancelRequest {
    input: CancelRequestInput
    output: Unit
}

operation ClientRegisterCapabilityOp {
    input: ClientRegisterCapabilityOpInput
    output: ClientRegisterCapabilityOpOutput
}

operation ClientUnregisterCapabilityOp {
    input: ClientUnregisterCapabilityOpInput
    output: ClientUnregisterCapabilityOpOutput
}

operation CodeActionResolveOp {
    input: CodeActionResolveOpInput
    output: CodeActionResolveOpOutput
}

operation CodeLensResolveOp {
    input: CodeLensResolveOpInput
    output: CodeLensResolveOpOutput
}

operation CompletionItemResolveOp {
    input: CompletionItemResolveOpInput
    output: CompletionItemResolveOpOutput
}

operation DocumentLinkResolveOp {
    input: DocumentLinkResolveOpInput
    output: DocumentLinkResolveOpOutput
}

operation Exit {
    input: ExitInput
    output: Unit
}

operation Initialized {
    input: InitializedInput
    output: Unit
}

operation InitializeOp {
    input: InitializeOpInput
    output: InitializeOpOutput
}

operation InlayHintResolveOp {
    input: InlayHintResolveOpInput
    output: InlayHintResolveOpOutput
}

operation LogTrace {
    input: LogTraceInput
    output: Unit
}

operation NotebookDocumentDidChange {
    input: NotebookDocumentDidChangeInput
    output: Unit
}

operation NotebookDocumentDidClose {
    input: NotebookDocumentDidCloseInput
    output: Unit
}

operation NotebookDocumentDidOpen {
    input: NotebookDocumentDidOpenInput
    output: Unit
}

operation NotebookDocumentDidSave {
    input: NotebookDocumentDidSaveInput
    output: Unit
}

operation Progress {
    input: ProgressInput
    output: Unit
}

operation SetTrace {
    input: SetTraceInput
    output: Unit
}

operation ShutdownOp {
    input: ShutdownOpInput
    output: ShutdownOpOutput
}

operation TelemetryEvent {
    input: TelemetryEventInput
    output: Unit
}

operation TextDocumentCodeActionOp {
    input: TextDocumentCodeActionOpInput
    output: TextDocumentCodeActionOpOutput
}

operation TextDocumentCodeLensOp {
    input: TextDocumentCodeLensOpInput
    output: TextDocumentCodeLensOpOutput
}

operation TextDocumentColorPresentationOp {
    input: TextDocumentColorPresentationOpInput
    output: TextDocumentColorPresentationOpOutput
}

operation TextDocumentCompletionOp {
    input: TextDocumentCompletionOpInput
    output: TextDocumentCompletionOpOutput
}

operation TextDocumentDeclarationOp {
    input: TextDocumentDeclarationOpInput
    output: TextDocumentDeclarationOpOutput
}

operation TextDocumentDefinitionOp {
    input: TextDocumentDefinitionOpInput
    output: TextDocumentDefinitionOpOutput
}

operation TextDocumentDiagnosticOp {
    input: TextDocumentDiagnosticOpInput
    output: TextDocumentDiagnosticOpOutput
}

operation TextDocumentDidChange {
    input: TextDocumentDidChangeInput
    output: Unit
}

operation TextDocumentDidClose {
    input: TextDocumentDidCloseInput
    output: Unit
}

operation TextDocumentDidOpen {
    input: TextDocumentDidOpenInput
    output: Unit
}

operation TextDocumentDidSave {
    input: TextDocumentDidSaveInput
    output: Unit
}

operation TextDocumentDocumentColorOp {
    input: TextDocumentDocumentColorOpInput
    output: TextDocumentDocumentColorOpOutput
}

operation TextDocumentDocumentHighlightOp {
    input: TextDocumentDocumentHighlightOpInput
    output: TextDocumentDocumentHighlightOpOutput
}

operation TextDocumentDocumentLinkOp {
    input: TextDocumentDocumentLinkOpInput
    output: TextDocumentDocumentLinkOpOutput
}

operation TextDocumentDocumentSymbolOp {
    input: TextDocumentDocumentSymbolOpInput
    output: TextDocumentDocumentSymbolOpOutput
}

operation TextDocumentFoldingRangeOp {
    input: TextDocumentFoldingRangeOpInput
    output: TextDocumentFoldingRangeOpOutput
}

operation TextDocumentFormattingOp {
    input: TextDocumentFormattingOpInput
    output: TextDocumentFormattingOpOutput
}

operation TextDocumentHoverOp {
    input: TextDocumentHoverOpInput
    output: TextDocumentHoverOpOutput
}

operation TextDocumentImplementationOp {
    input: TextDocumentImplementationOpInput
    output: TextDocumentImplementationOpOutput
}

operation TextDocumentInlayHintOp {
    input: TextDocumentInlayHintOpInput
    output: TextDocumentInlayHintOpOutput
}

operation TextDocumentInlineValueOp {
    input: TextDocumentInlineValueOpInput
    output: TextDocumentInlineValueOpOutput
}

operation TextDocumentLinkedEditingRangeOp {
    input: TextDocumentLinkedEditingRangeOpInput
    output: TextDocumentLinkedEditingRangeOpOutput
}

operation TextDocumentMonikerOp {
    input: TextDocumentMonikerOpInput
    output: TextDocumentMonikerOpOutput
}

operation TextDocumentOnTypeFormattingOp {
    input: TextDocumentOnTypeFormattingOpInput
    output: TextDocumentOnTypeFormattingOpOutput
}

operation TextDocumentPrepareCallHierarchyOp {
    input: TextDocumentPrepareCallHierarchyOpInput
    output: TextDocumentPrepareCallHierarchyOpOutput
}

operation TextDocumentPrepareRenameOp {
    input: TextDocumentPrepareRenameOpInput
    output: TextDocumentPrepareRenameOpOutput
}

operation TextDocumentPrepareTypeHierarchyOp {
    input: TextDocumentPrepareTypeHierarchyOpInput
    output: TextDocumentPrepareTypeHierarchyOpOutput
}

operation TextDocumentPublishDiagnostics {
    input: TextDocumentPublishDiagnosticsInput
    output: Unit
}

operation TextDocumentRangeFormattingOp {
    input: TextDocumentRangeFormattingOpInput
    output: TextDocumentRangeFormattingOpOutput
}

operation TextDocumentReferencesOp {
    input: TextDocumentReferencesOpInput
    output: TextDocumentReferencesOpOutput
}

operation TextDocumentRenameOp {
    input: TextDocumentRenameOpInput
    output: TextDocumentRenameOpOutput
}

operation TextDocumentSelectionRangeOp {
    input: TextDocumentSelectionRangeOpInput
    output: TextDocumentSelectionRangeOpOutput
}

operation TextDocumentSemanticTokensFullDeltaOp {
    input: TextDocumentSemanticTokensFullDeltaOpInput
    output: TextDocumentSemanticTokensFullDeltaOpOutput
}

operation TextDocumentSemanticTokensFullOp {
    input: TextDocumentSemanticTokensFullOpInput
    output: TextDocumentSemanticTokensFullOpOutput
}

operation TextDocumentSemanticTokensRangeOp {
    input: TextDocumentSemanticTokensRangeOpInput
    output: TextDocumentSemanticTokensRangeOpOutput
}

operation TextDocumentSignatureHelpOp {
    input: TextDocumentSignatureHelpOpInput
    output: TextDocumentSignatureHelpOpOutput
}

operation TextDocumentTypeDefinitionOp {
    input: TextDocumentTypeDefinitionOpInput
    output: TextDocumentTypeDefinitionOpOutput
}

operation TextDocumentWillSave {
    input: TextDocumentWillSaveInput
    output: Unit
}

operation TextDocumentWillSaveWaitUntilOp {
    input: TextDocumentWillSaveWaitUntilOpInput
    output: TextDocumentWillSaveWaitUntilOpOutput
}

operation TypeHierarchySubtypesOp {
    input: TypeHierarchySubtypesOpInput
    output: TypeHierarchySubtypesOpOutput
}

operation TypeHierarchySupertypesOp {
    input: TypeHierarchySupertypesOpInput
    output: TypeHierarchySupertypesOpOutput
}

operation WindowLogMessage {
    input: WindowLogMessageInput
    output: Unit
}

operation WindowShowDocumentOp {
    input: WindowShowDocumentOpInput
    output: WindowShowDocumentOpOutput
}

operation WindowShowMessage {
    input: WindowShowMessageInput
    output: Unit
}

operation WindowShowMessageRequestOp {
    input: WindowShowMessageRequestOpInput
    output: WindowShowMessageRequestOpOutput
}

operation WindowWorkDoneProgressCancel {
    input: WindowWorkDoneProgressCancelInput
    output: Unit
}

operation WindowWorkDoneProgressCreateOp {
    input: WindowWorkDoneProgressCreateOpInput
    output: WindowWorkDoneProgressCreateOpOutput
}

operation WorkspaceApplyEditOp {
    input: WorkspaceApplyEditOpInput
    output: WorkspaceApplyEditOpOutput
}

operation WorkspaceCodeLensRefreshOp {
    input: WorkspaceCodeLensRefreshOpInput
    output: WorkspaceCodeLensRefreshOpOutput
}

operation WorkspaceConfigurationOp {
    input: WorkspaceConfigurationOpInput
    output: WorkspaceConfigurationOpOutput
}

operation WorkspaceDiagnosticOp {
    input: WorkspaceDiagnosticOpInput
    output: WorkspaceDiagnosticOpOutput
}

operation WorkspaceDiagnosticRefreshOp {
    input: WorkspaceDiagnosticRefreshOpInput
    output: WorkspaceDiagnosticRefreshOpOutput
}

operation WorkspaceDidChangeConfiguration {
    input: WorkspaceDidChangeConfigurationInput
    output: Unit
}

operation WorkspaceDidChangeWatchedFiles {
    input: WorkspaceDidChangeWatchedFilesInput
    output: Unit
}

operation WorkspaceDidChangeWorkspaceFolders {
    input: WorkspaceDidChangeWorkspaceFoldersInput
    output: Unit
}

operation WorkspaceDidCreateFiles {
    input: WorkspaceDidCreateFilesInput
    output: Unit
}

operation WorkspaceDidDeleteFiles {
    input: WorkspaceDidDeleteFilesInput
    output: Unit
}

operation WorkspaceDidRenameFiles {
    input: WorkspaceDidRenameFilesInput
    output: Unit
}

operation WorkspaceExecuteCommandOp {
    input: WorkspaceExecuteCommandOpInput
    output: WorkspaceExecuteCommandOpOutput
}

operation WorkspaceInlayHintRefreshOp {
    input: WorkspaceInlayHintRefreshOpInput
    output: WorkspaceInlayHintRefreshOpOutput
}

operation WorkspaceInlineValueRefreshOp {
    input: WorkspaceInlineValueRefreshOpInput
    output: WorkspaceInlineValueRefreshOpOutput
}

operation WorkspaceSemanticTokensRefreshOp {
    input: WorkspaceSemanticTokensRefreshOpInput
    output: WorkspaceSemanticTokensRefreshOpOutput
}

operation WorkspaceSymbolOp {
    input: WorkspaceSymbolOpInput
    output: WorkspaceSymbolOpOutput
}

operation WorkspaceSymbolResolveOp {
    input: WorkspaceSymbolResolveOpInput
    output: WorkspaceSymbolResolveOpOutput
}

operation WorkspaceWillCreateFilesOp {
    input: WorkspaceWillCreateFilesOpInput
    output: WorkspaceWillCreateFilesOpOutput
}

operation WorkspaceWillDeleteFilesOp {
    input: WorkspaceWillDeleteFilesOpInput
    output: WorkspaceWillDeleteFilesOpOutput
}

operation WorkspaceWillRenameFilesOp {
    input: WorkspaceWillRenameFilesOpInput
    output: WorkspaceWillRenameFilesOpOutput
}

operation WorkspaceWorkspaceFoldersOp {
    input: WorkspaceWorkspaceFoldersOpInput
    output: WorkspaceWorkspaceFoldersOpOutput
}

/// The initialize parameters
structure _InitializeParams with [WorkDoneProgressParams] {
    /// The process Id of the parent process that started
    /// the server.
    /// 
    /// Is `null` if the process has not been started by another process.
    /// If the parent process is not alive then the server should exit.
    @required
    processId: IntegerOrNULL
    /// Information about the client
    /// 
    /// @since 3.15.0
    clientInfo: ClientInfo
    /// The locale the client is currently showing the user interface
    /// in. This must not necessarily be the locale of the operating
    /// system.
    /// 
    /// Uses IETF language tags as the value's syntax
    /// (See https://en.wikipedia.org/wiki/IETF_language_tag)
    /// 
    /// @since 3.16.0
    locale: String
    /// The rootPath of the workspace. Is null
    /// if no folder is open.
    /// 
    /// @deprecated in favour of rootUri.
    rootPath: StringOrNULL
    /// The rootUri of the workspace. Is null if no
    /// folder is open. If both `rootPath` and `rootUri` are set
    /// `rootUri` wins.
    /// 
    /// @deprecated in favour of workspaceFolders.
    @required
    rootUri: DocumentUriOrNULL
    /// The capabilities provided by the client (editor or tool)
    @required
    capabilities: ClientCapabilities
    /// User provided initialization options.
    initializationOptions: Document
    /// The initial trace setting. If omitted trace is disabled ('off').
    trace: TraceValue
}

/// A special text edit with an additional change annotation.
/// 
/// @since 3.16.0.
structure AnnotatedTextEdit {
    /// The actual identifier of the change annotation
    @required
    annotationId: ChangeAnnotationIdentifier
}

/// The parameters passed via an apply workspace edit request.
structure ApplyWorkspaceEditParams {
    /// An optional label of the workspace edit. This label is
    /// presented in the user interface for example on an undo
    /// stack to undo the workspace edit.
    label: String
    /// The edits to apply.
    @required
    edit: WorkspaceEdit
}

/// The result returned from the apply workspace edit request.
/// 
/// @since 3.17 renamed from ApplyWorkspaceEditResponse
structure ApplyWorkspaceEditResult {
    /// Indicates whether the edit was applied or not.
    @required
    applied: Boolean
    /// An optional textual description for why the edit was not applied.
    /// This may be used by the server for diagnostic logging or to provide
    /// a suitable error for a request that triggered the edit.
    failureReason: String
    /// Depending on the client's failure handling strategy `failedChange` might
    /// contain the index of the change that failed. This property is only available
    /// if the client signals a `failureHandlingStrategy` in its client capabilities.
    failedChange: Integer
}

/// A base for all symbol information.
structure BaseSymbolInformation {
    /// The name of this symbol.
    @required
    name: String
    /// The kind of this symbol.
    @required
    kind: SymbolKind
    /// Tags for this symbol.
    /// 
    /// @since 3.16.0
    tags: ListOf_SymbolTag
    /// The name of the symbol containing this symbol. This information is for
    /// user interface purposes (e.g. to render a qualifier in the user interface
    /// if necessary). It can't be used to re-infer a hierarchy for the document
    /// symbols.
    containerName: String
}

/// @since 3.16.0
structure CallHierarchyClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is set to `true`
    /// the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`
    /// return value for the corresponding server capability as well.
    dynamicRegistration: Boolean
}

/// Represents an incoming call, e.g. a caller of a method or constructor.
/// 
/// @since 3.16.0
structure CallHierarchyIncomingCall {
    /// The item that makes the call.
    @required
    from: CallHierarchyItem
    /// The ranges at which the calls appear. This is relative to the caller
    /// denoted by {@link CallHierarchyIncomingCall.from `this.from`}.
    @required
    fromRanges: ListOf_Range
}

structure CallHierarchyIncomingCallsOpInput {
    params: CallHierarchyIncomingCallsParams
}

structure CallHierarchyIncomingCallsOpOutput {
    result: ListOfCallHierarchyIncomingCallOrNULL
}

/// The parameter of a `callHierarchy/incomingCalls` request.
/// 
/// @since 3.16.0
structure CallHierarchyIncomingCallsParams {
    @required
    item: CallHierarchyItem
}

/// Represents programming constructs like functions or constructors in the context
/// of call hierarchy.
/// 
/// @since 3.16.0
structure CallHierarchyItem {
    /// The name of this item.
    @required
    name: String
    /// The kind of this item.
    @required
    kind: SymbolKind
    /// Tags for this item.
    tags: ListOf_SymbolTag
    /// More detail for this item, e.g. the signature of a function.
    detail: String
    /// The resource identifier of this item.
    @required
    uri: String
    /// The range enclosing this symbol not including leading/trailing whitespace but everything else, e.g. comments and code.
    @required
    range: Range
    /// The range that should be selected and revealed when this symbol is being picked, e.g. the name of a function.
    /// Must be contained by the {@link CallHierarchyItem.range `range`}.
    @required
    selectionRange: Range
    /// A data entry field that is preserved between a call hierarchy prepare and
    /// incoming calls or outgoing calls requests.
    data: Document
}

/// Call hierarchy options used during static registration.
/// 
/// @since 3.16.0
structure CallHierarchyOptions with [WorkDoneProgressOptions] {}

/// Represents an outgoing call, e.g. calling a getter from a method or a method from a constructor etc.
/// 
/// @since 3.16.0
structure CallHierarchyOutgoingCall {
    /// The item that is called.
    @required
    to: CallHierarchyItem
    /// The range at which this item is called. This is the range relative to the caller, e.g the item
    /// passed to {@link CallHierarchyItemProvider.provideCallHierarchyOutgoingCalls `provideCallHierarchyOutgoingCalls`}
    /// and not {@link CallHierarchyOutgoingCall.to `this.to`}.
    @required
    fromRanges: ListOf_Range
}

structure CallHierarchyOutgoingCallsOpInput {
    params: CallHierarchyOutgoingCallsParams
}

structure CallHierarchyOutgoingCallsOpOutput {
    result: ListOfCallHierarchyOutgoingCallOrNULL
}

/// The parameter of a `callHierarchy/outgoingCalls` request.
/// 
/// @since 3.16.0
structure CallHierarchyOutgoingCallsParams {
    @required
    item: CallHierarchyItem
}

/// The parameter of a `textDocument/prepareCallHierarchy` request.
/// 
/// @since 3.16.0
structure CallHierarchyPrepareParams {}

/// Call hierarchy options used during static or dynamic registration.
/// 
/// @since 3.16.0
structure CallHierarchyRegistrationOptions {}

structure CancelParams {
    /// The request id to cancel.
    @required
    id: IntegerOrString
}

structure CancelRequestInput {
    params: CancelParams
}

/// Additional information that describes document changes.
/// 
/// @since 3.16.0
structure ChangeAnnotation {
    /// A human-readable string describing the actual change. The string
    /// is rendered prominent in the user interface.
    @required
    label: String
    /// A flag which indicates that user confirmation is needed
    /// before applying the change.
    needsConfirmation: Boolean
    /// A human-readable string which is rendered less prominent in
    /// the user interface.
    description: String
}

/// @since 3.18.0
structure ChangeAnnotationsSupportOptions {
    /// Whether the client groups edits with equal labels into tree nodes,
    /// for instance all edits labelled with "Changes in Strings" would
    /// be a tree node.
    groupsOnLabel: Boolean
}

/// Defines the capabilities provided by the client.
structure ClientCapabilities {
    /// Workspace specific client capabilities.
    workspace: WorkspaceClientCapabilities
    /// Text document specific client capabilities.
    textDocument: TextDocumentClientCapabilities
    /// Capabilities specific to the notebook document support.
    /// 
    /// @since 3.17.0
    notebookDocument: NotebookDocumentClientCapabilities
    /// Window specific client capabilities.
    window: WindowClientCapabilities
    /// General client capabilities.
    /// 
    /// @since 3.16.0
    general: GeneralClientCapabilities
    /// Experimental client capabilities.
    experimental: Document
}

/// @since 3.18.0
structure ClientCodeActionKindOptions {
    /// The code action kind values the client supports. When this
    /// property exists the client also guarantees that it will
    /// handle values outside its set gracefully and falls back
    /// to a default value when unknown.
    @required
    valueSet: ListOf_CodeActionKind
}

/// @since 3.18.0
structure ClientCodeActionLiteralOptions {
    /// The code action kind is support with the following value
    /// set.
    @required
    codeActionKind: ClientCodeActionKindOptions
}

/// @since 3.18.0
structure ClientCodeActionResolveOptions {
    /// The properties that a client can resolve lazily.
    @required
    properties: ListOf_String
}

/// @since 3.18.0
structure ClientCodeLensResolveOptions {
    /// The properties that a client can resolve lazily.
    @required
    properties: ListOf_String
}

/// @since 3.18.0
structure ClientCompletionItemInsertTextModeOptions {
    @required
    valueSet: ListOf_InsertTextMode
}

/// @since 3.18.0
structure ClientCompletionItemOptions {
    /// Client supports snippets as insert text.
    /// 
    /// A snippet can define tab stops and placeholders with `$1`, `$2`
    /// and `${3:foo}`. `$0` defines the final tab stop, it defaults to
    /// the end of the snippet. Placeholders with equal identifiers are linked,
    /// that is typing in one will update others too.
    snippetSupport: Boolean
    /// Client supports commit characters on a completion item.
    commitCharactersSupport: Boolean
    /// Client supports the following content formats for the documentation
    /// property. The order describes the preferred format of the client.
    documentationFormat: ListOf_MarkupKind
    /// Client supports the deprecated property on a completion item.
    deprecatedSupport: Boolean
    /// Client supports the preselect property on a completion item.
    preselectSupport: Boolean
    /// Client supports the tag property on a completion item. Clients supporting
    /// tags have to handle unknown tags gracefully. Clients especially need to
    /// preserve unknown tags when sending a completion item back to the server in
    /// a resolve call.
    /// 
    /// @since 3.15.0
    tagSupport: CompletionItemTagOptions
    /// Client support insert replace edit to control different behavior if a
    /// completion item is inserted in the text or should replace text.
    /// 
    /// @since 3.16.0
    insertReplaceSupport: Boolean
    /// Indicates which properties a client can resolve lazily on a completion
    /// item. Before version 3.16.0 only the predefined properties `documentation`
    /// and `details` could be resolved lazily.
    /// 
    /// @since 3.16.0
    resolveSupport: ClientCompletionItemResolveOptions
    /// The client supports the `insertTextMode` property on
    /// a completion item to override the whitespace handling mode
    /// as defined by the client (see `insertTextMode`).
    /// 
    /// @since 3.16.0
    insertTextModeSupport: ClientCompletionItemInsertTextModeOptions
    /// The client has support for completion item label
    /// details (see also `CompletionItemLabelDetails`).
    /// 
    /// @since 3.17.0
    labelDetailsSupport: Boolean
}

/// @since 3.18.0
structure ClientCompletionItemOptionsKind {
    /// The completion item kind values the client supports. When this
    /// property exists the client also guarantees that it will
    /// handle values outside its set gracefully and falls back
    /// to a default value when unknown.
    /// 
    /// If this property is not present the client only supports
    /// the completion items kinds from `Text` to `Reference` as defined in
    /// the initial version of the protocol.
    valueSet: ListOf_CompletionItemKind
}

/// @since 3.18.0
structure ClientCompletionItemResolveOptions {
    /// The properties that a client can resolve lazily.
    @required
    properties: ListOf_String
}

/// @since 3.18.0
structure ClientDiagnosticsTagOptions {
    /// The tags supported by the client.
    @required
    valueSet: ListOf_DiagnosticTag
}

/// @since 3.18.0
structure ClientFoldingRangeKindOptions {
    /// The folding range kind values the client supports. When this
    /// property exists the client also guarantees that it will
    /// handle values outside its set gracefully and falls back
    /// to a default value when unknown.
    valueSet: ListOf_FoldingRangeKind
}

/// @since 3.18.0
structure ClientFoldingRangeOptions {
    /// If set, the client signals that it supports setting collapsedText on
    /// folding ranges to display custom labels instead of the default text.
    /// 
    /// @since 3.17.0
    collapsedText: Boolean
}

/// Information about the client
/// 
/// @since 3.15.0
/// @since 3.18.0 ClientInfo type name added.
structure ClientInfo {
    /// The name of the client as defined by the client.
    @required
    name: String
    /// The client's version as defined by the client.
    version: String
}

/// @since 3.18.0
structure ClientInlayHintResolveOptions {
    /// The properties that a client can resolve lazily.
    @required
    properties: ListOf_String
}

structure ClientRegisterCapabilityOpInput {
    params: RegistrationParams
}

structure ClientRegisterCapabilityOpOutput {}

/// @since 3.18.0
structure ClientSemanticTokensRequestFullDelta {
    /// The client will send the `textDocument/semanticTokens/full/delta` request if
    /// the server provides a corresponding handler.
    delta: Boolean
}

/// @since 3.18.0
structure ClientSemanticTokensRequestOptions {
    /// The client will send the `textDocument/semanticTokens/range` request if
    /// the server provides a corresponding handler.
    range: BooleanUnion
    /// The client will send the `textDocument/semanticTokens/full` request if
    /// the server provides a corresponding handler.
    full: BooleanOrClientSemanticTokensRequestFullDelta
}

/// @since 3.18.0
structure ClientShowMessageActionItemOptions {
    /// Whether the client supports additional attributes which
    /// are preserved and send back to the server in the
    /// request's response.
    additionalPropertiesSupport: Boolean
}

/// @since 3.18.0
structure ClientSignatureInformationOptions {
    /// Client supports the following content formats for the documentation
    /// property. The order describes the preferred format of the client.
    documentationFormat: ListOf_MarkupKind
    /// Client capabilities specific to parameter information.
    parameterInformation: ClientSignatureParameterInformationOptions
    /// The client supports the `activeParameter` property on `SignatureInformation`
    /// literal.
    /// 
    /// @since 3.16.0
    activeParameterSupport: Boolean
}

/// @since 3.18.0
structure ClientSignatureParameterInformationOptions {
    /// The client supports processing label offsets instead of a
    /// simple label string.
    /// 
    /// @since 3.14.0
    labelOffsetSupport: Boolean
}

/// @since 3.18.0
structure ClientSymbolKindOptions {
    /// The symbol kind values the client supports. When this
    /// property exists the client also guarantees that it will
    /// handle values outside its set gracefully and falls back
    /// to a default value when unknown.
    /// 
    /// If this property is not present the client only supports
    /// the symbol kinds from `File` to `Array` as defined in
    /// the initial version of the protocol.
    valueSet: ListOf_SymbolKind
}

/// @since 3.18.0
structure ClientSymbolResolveOptions {
    /// The properties that a client can resolve lazily. Usually
    /// `location.range`
    @required
    properties: ListOf_String
}

/// @since 3.18.0
structure ClientSymbolTagOptions {
    /// The tags supported by the client.
    @required
    valueSet: ListOf_SymbolTag
}

structure ClientUnregisterCapabilityOpInput {
    params: UnregistrationParams
}

structure ClientUnregisterCapabilityOpOutput {}

/// A code action represents a change that can be performed in code, e.g. to fix a problem or
/// to refactor code.
/// 
/// A CodeAction must set either `edit` and/or a `command`. If both are supplied, the `edit` is applied first, then the `command` is executed.
structure CodeAction {
    /// A short, human-readable, title for this code action.
    @required
    title: String
    /// The kind of the code action.
    /// 
    /// Used to filter code actions.
    kind: CodeActionKind
    /// The diagnostics that this code action resolves.
    diagnostics: ListOf_Diagnostic
    /// Marks this as a preferred action. Preferred actions are used by the `auto fix` command and can be targeted
    /// by keybindings.
    /// 
    /// A quick fix should be marked preferred if it properly addresses the underlying error.
    /// A refactoring should be marked preferred if it is the most reasonable choice of actions to take.
    /// 
    /// @since 3.15.0
    isPreferred: Boolean
    /// Marks that the code action cannot currently be applied.
    /// 
    /// Clients should follow the following guidelines regarding disabled code actions:
    /// 
    ///   - Disabled code actions are not shown in automatic [lightbulbs](https://code.visualstudio.com/docs/editor/editingevolved#_code-action)
    ///     code action menus.
    /// 
    ///   - Disabled actions are shown as faded out in the code action menu when the user requests a more specific type
    ///     of code action, such as refactorings.
    /// 
    ///   - If the user has a [keybinding](https://code.visualstudio.com/docs/editor/refactoring#_keybindings-for-code-actions)
    ///     that auto applies a code action and only disabled code actions are returned, the client should show the user an
    ///     error message with `reason` in the editor.
    /// 
    /// @since 3.16.0
    disabled: CodeActionDisabled
    /// The workspace edit this code action performs.
    edit: WorkspaceEdit
    /// A command this code action executes. If a code action
    /// provides an edit and a command, first the edit is
    /// executed and then the command.
    command: Command
    /// A data entry field that is preserved on a code action between
    /// a `textDocument/codeAction` and a `codeAction/resolve` request.
    /// 
    /// @since 3.16.0
    data: Document
    /// Tags for this code action.
    /// 
    /// @since 3.18.0 - proposed
    tags: ListOf_CodeActionTag
}

/// The Client Capabilities of a {@link CodeActionRequest}.
structure CodeActionClientCapabilities {
    /// Whether code action supports dynamic registration.
    dynamicRegistration: Boolean
    /// The client support code action literals of type `CodeAction` as a valid
    /// response of the `textDocument/codeAction` request. If the property is not
    /// set the request can only return `Command` literals.
    /// 
    /// @since 3.8.0
    codeActionLiteralSupport: ClientCodeActionLiteralOptions
    /// Whether code action supports the `isPreferred` property.
    /// 
    /// @since 3.15.0
    isPreferredSupport: Boolean
    /// Whether code action supports the `disabled` property.
    /// 
    /// @since 3.16.0
    disabledSupport: Boolean
    /// Whether code action supports the `data` property which is
    /// preserved between a `textDocument/codeAction` and a
    /// `codeAction/resolve` request.
    /// 
    /// @since 3.16.0
    dataSupport: Boolean
    /// Whether the client supports resolving additional code action
    /// properties via a separate `codeAction/resolve` request.
    /// 
    /// @since 3.16.0
    resolveSupport: ClientCodeActionResolveOptions
    /// Whether the client honors the change annotations in
    /// text edits and resource operations returned via the
    /// `CodeAction#edit` property by for example presenting
    /// the workspace edit in the user interface and asking
    /// for confirmation.
    /// 
    /// @since 3.16.0
    honorsChangeAnnotations: Boolean
    /// Client supports the tag property on a code action. Clients
    /// supporting tags have to handle unknown tags gracefully.
    /// 
    /// @since 3.18.0 - proposed
    tagSupport: CodeActionTagOptions
}

/// Contains additional diagnostic information about the context in which
/// a {@link CodeActionProvider.provideCodeActions code action} is run.
structure CodeActionContext {
    /// An array of diagnostics known on the client side overlapping the range provided to the
    /// `textDocument/codeAction` request. They are provided so that the server knows which
    /// errors are currently presented to the user for the given range. There is no guarantee
    /// that these accurately reflect the error state of the resource. The primary parameter
    /// to compute code actions is the provided range.
    @required
    diagnostics: ListOf_Diagnostic
    /// Requested kind of actions to return.
    /// 
    /// Actions not of this kind are filtered out by the client before being shown. So servers
    /// can omit computing them.
    only: ListOf_CodeActionKind
    /// The reason why code actions were requested.
    /// 
    /// @since 3.17.0
    triggerKind: CodeActionTriggerKind
}

/// Captures why the code action is currently disabled.
/// 
/// @since 3.18.0
structure CodeActionDisabled {
    /// Human readable description of why the code action is currently disabled.
    /// 
    /// This is displayed in the code actions UI.
    @required
    reason: String
}

/// Provider options for a {@link CodeActionRequest}.
structure CodeActionOptions with [WorkDoneProgressOptions] {
    /// CodeActionKinds that this server may return.
    /// 
    /// The list of kinds may be generic, such as `CodeActionKind.Refactor`, or the server
    /// may list out every specific kind they provide.
    codeActionKinds: ListOf_CodeActionKind
    /// The server provides support to resolve additional
    /// information for a code action.
    /// 
    /// @since 3.16.0
    resolveProvider: Boolean
}

/// The parameters of a {@link CodeActionRequest}.
structure CodeActionParams {
    /// The document in which the command was invoked.
    @required
    textDocument: TextDocumentIdentifier
    /// The range for which the command was invoked.
    @required
    range: Range
    /// Context carrying additional information.
    @required
    context: CodeActionContext
}

/// Registration options for a {@link CodeActionRequest}.
structure CodeActionRegistrationOptions {}

structure CodeActionResolveOpInput {
    params: CodeAction
}

structure CodeActionResolveOpOutput {
    result: CodeAction
}

/// @since 3.18.0 - proposed
structure CodeActionTagOptions {
    /// The tags supported by the client.
    @required
    valueSet: ListOf_CodeActionTag
}

/// Structure to capture a description for an error code.
/// 
/// @since 3.16.0
structure CodeDescription {
    /// An URI to open with more information about the diagnostic error.
    @required
    href: String
}

/// A code lens represents a {@link Command command} that should be shown along with
/// source text, like the number of references, a way to run tests, etc.
/// 
/// A code lens is _unresolved_ when no command is associated to it. For performance
/// reasons the creation of a code lens and resolving should be done in two stages.
structure CodeLens {
    /// The range in which this code lens is valid. Should only span a single line.
    @required
    range: Range
    /// The command this code lens represents.
    command: Command
    /// A data entry field that is preserved on a code lens item between
    /// a {@link CodeLensRequest} and a {@link CodeLensResolveRequest}
    data: Document
}

/// The client capabilities  of a {@link CodeLensRequest}.
structure CodeLensClientCapabilities {
    /// Whether code lens supports dynamic registration.
    dynamicRegistration: Boolean
    /// Whether the client supports resolving additional code lens
    /// properties via a separate `codeLens/resolve` request.
    /// 
    /// @since 3.18.0
    resolveSupport: ClientCodeLensResolveOptions
}

/// Code Lens provider options of a {@link CodeLensRequest}.
structure CodeLensOptions with [WorkDoneProgressOptions] {
    /// Code lens has a resolve provider as well.
    resolveProvider: Boolean
}

/// The parameters of a {@link CodeLensRequest}.
structure CodeLensParams {
    /// The document to request code lens for.
    @required
    textDocument: TextDocumentIdentifier
}

/// Registration options for a {@link CodeLensRequest}.
structure CodeLensRegistrationOptions {}

structure CodeLensResolveOpInput {
    params: CodeLens
}

structure CodeLensResolveOpOutput {
    result: CodeLens
}

/// @since 3.16.0
structure CodeLensWorkspaceClientCapabilities {
    /// Whether the client implementation supports a refresh request sent from the
    /// server to the client.
    /// 
    /// Note that this event is global and will force the client to refresh all
    /// code lenses currently shown. It should be used with absolute care and is
    /// useful for situation where a server for example detect a project wide
    /// change that requires such a calculation.
    refreshSupport: Boolean
}

/// Represents a color in RGBA space.
structure Color {
    /// The red component of this color in the range [0-1].
    @required
    red: Float
    /// The green component of this color in the range [0-1].
    @required
    green: Float
    /// The blue component of this color in the range [0-1].
    @required
    blue: Float
    /// The alpha component of this color in the range [0-1].
    @required
    alpha: Float
}

/// Represents a color range from a document.
structure ColorInformation {
    /// The range in the document where this color appears.
    @required
    range: Range
    /// The actual color value for this color range.
    @required
    color: Color
}

structure ColorPresentation {
    /// The label of this color presentation. It will be shown on the color
    /// picker header. By default this is also the text that is inserted when selecting
    /// this color presentation.
    @required
    label: String
    /// An {@link TextEdit edit} which is applied to a document when selecting
    /// this presentation for the color.  When `falsy` the {@link ColorPresentation.label label}
    /// is used.
    textEdit: TextEdit
    /// An optional array of additional {@link TextEdit text edits} that are applied when
    /// selecting this color presentation. Edits must not overlap with the main {@link ColorPresentation.textEdit edit} nor with themselves.
    additionalTextEdits: ListOf_TextEdit
}

/// Parameters for a {@link ColorPresentationRequest}.
structure ColorPresentationParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
    /// The color to request presentations for.
    @required
    color: Color
    /// The range where the color would be inserted. Serves as a context.
    @required
    range: Range
}

/// Represents a reference to a command. Provides a title which
/// will be used to represent a command in the UI and, optionally,
/// an array of arguments which will be passed to the command handler
/// function when invoked.
structure Command {
    /// Title of the command, like `save`.
    @required
    title: String
    /// The identifier of the actual command handler.
    @required
    command: String
    /// Arguments that the command handler should be
    /// invoked with.
    arguments: ListOf_Document
}

/// Completion client capabilities
structure CompletionClientCapabilities {
    /// Whether completion supports dynamic registration.
    dynamicRegistration: Boolean
    /// The client supports the following `CompletionItem` specific
    /// capabilities.
    completionItem: ClientCompletionItemOptions
    completionItemKind: ClientCompletionItemOptionsKind
    /// Defines how the client handles whitespace and indentation
    /// when accepting a completion item that uses multi line
    /// text in either `insertText` or `textEdit`.
    /// 
    /// @since 3.17.0
    insertTextMode: InsertTextMode
    /// The client supports to send additional context information for a
    /// `textDocument/completion` request.
    contextSupport: Boolean
    /// The client supports the following `CompletionList` specific
    /// capabilities.
    /// 
    /// @since 3.17.0
    completionList: CompletionListCapabilities
}

/// Contains additional information about the context in which a completion request is triggered.
structure CompletionContext {
    /// How the completion was triggered.
    @required
    triggerKind: CompletionTriggerKind
    /// The trigger character (a single character) that has trigger code complete.
    /// Is undefined if `triggerKind !== CompletionTriggerKind.TriggerCharacter`
    triggerCharacter: String
}

/// A completion item represents a text snippet that is
/// proposed to complete text that is being typed.
structure CompletionItem {
    /// The label of this completion item.
    /// 
    /// The label property is also by default the text that
    /// is inserted when selecting this completion.
    /// 
    /// If label details are provided the label itself should
    /// be an unqualified name of the completion item.
    @required
    label: String
    /// Additional details for the label
    /// 
    /// @since 3.17.0
    labelDetails: CompletionItemLabelDetails
    /// The kind of this completion item. Based of the kind
    /// an icon is chosen by the editor.
    kind: CompletionItemKind
    /// Tags for this completion item.
    /// 
    /// @since 3.15.0
    tags: ListOf_CompletionItemTag
    /// A human-readable string with additional information
    /// about this item, like type or symbol information.
    detail: String
    /// A human-readable string that represents a doc-comment.
    documentation: StringOrMarkupContent
    /// Indicates if this item is deprecated.
    /// @deprecated Use `tags` instead.
    deprecated: Boolean
    /// Select this item when showing.
    /// 
    /// *Note* that only one completion item can be selected and that the
    /// tool / client decides which item that is. The rule is that the *first*
    /// item of those that match best is selected.
    preselect: Boolean
    /// A string that should be used when comparing this item
    /// with other items. When `falsy` the {@link CompletionItem.label label}
    /// is used.
    sortText: String
    /// A string that should be used when filtering a set of
    /// completion items. When `falsy` the {@link CompletionItem.label label}
    /// is used.
    filterText: String
    /// A string that should be inserted into a document when selecting
    /// this completion. When `falsy` the {@link CompletionItem.label label}
    /// is used.
    /// 
    /// The `insertText` is subject to interpretation by the client side.
    /// Some tools might not take the string literally. For example
    /// VS Code when code complete is requested in this example
    /// `con<cursor position>` and a completion item with an `insertText` of
    /// `console` is provided it will only insert `sole`. Therefore it is
    /// recommended to use `textEdit` instead since it avoids additional client
    /// side interpretation.
    insertText: String
    /// The format of the insert text. The format applies to both the
    /// `insertText` property and the `newText` property of a provided
    /// `textEdit`. If omitted defaults to `InsertTextFormat.PlainText`.
    /// 
    /// Please note that the insertTextFormat doesn't apply to
    /// `additionalTextEdits`.
    insertTextFormat: InsertTextFormat
    /// How whitespace and indentation is handled during completion
    /// item insertion. If not provided the clients default value depends on
    /// the `textDocument.completion.insertTextMode` client capability.
    /// 
    /// @since 3.16.0
    insertTextMode: InsertTextMode
    /// An {@link TextEdit edit} which is applied to a document when selecting
    /// this completion. When an edit is provided the value of
    /// {@link CompletionItem.insertText insertText} is ignored.
    /// 
    /// Most editors support two different operations when accepting a completion
    /// item. One is to insert a completion text and the other is to replace an
    /// existing text with a completion text. Since this can usually not be
    /// predetermined by a server it can report both ranges. Clients need to
    /// signal support for `InsertReplaceEdits` via the
    /// `textDocument.completion.insertReplaceSupport` client capability
    /// property.
    /// 
    /// *Note 1:* The text edit's range as well as both ranges from an insert
    /// replace edit must be a [single line] and they must contain the position
    /// at which completion has been requested.
    /// *Note 2:* If an `InsertReplaceEdit` is returned the edit's insert range
    /// must be a prefix of the edit's replace range, that means it must be
    /// contained and starting at the same position.
    /// 
    /// @since 3.16.0 additional type `InsertReplaceEdit`
    textEdit: EditUnion
    /// The edit text used if the completion item is part of a CompletionList and
    /// CompletionList defines an item default for the text edit range.
    /// 
    /// Clients will only honor this property if they opt into completion list
    /// item defaults using the capability `completionList.itemDefaults`.
    /// 
    /// If not provided and a list's default range is provided the label
    /// property is used as a text.
    /// 
    /// @since 3.17.0
    textEditText: String
    /// An optional array of additional {@link TextEdit text edits} that are applied when
    /// selecting this completion. Edits must not overlap (including the same insert position)
    /// with the main {@link CompletionItem.textEdit edit} nor with themselves.
    /// 
    /// Additional text edits should be used to change text unrelated to the current cursor position
    /// (for example adding an import statement at the top of the file if the completion item will
    /// insert an unqualified type).
    additionalTextEdits: ListOf_TextEdit
    /// An optional set of characters that when pressed while this completion is active will accept it first and
    /// then type that character. *Note* that all commit characters should have `length=1` and that superfluous
    /// characters will be ignored.
    commitCharacters: ListOf_String
    /// An optional {@link Command command} that is executed *after* inserting this completion. *Note* that
    /// additional modifications to the current document should be described with the
    /// {@link CompletionItem.additionalTextEdits additionalTextEdits}-property.
    command: Command
    /// A data entry field that is preserved on a completion item between a
    /// {@link CompletionRequest} and a {@link CompletionResolveRequest}.
    data: Document
}

/// Specifies how fields from a completion item should be combined with those
/// from `completionList.itemDefaults`.
/// 
/// If unspecified, all fields will be treated as ApplyKind.Replace.
/// 
/// If a field's value is ApplyKind.Replace, the value from a completion item (if
/// provided and not `null`) will always be used instead of the value from
/// `completionItem.itemDefaults`.
/// 
/// If a field's value is ApplyKind.Merge, the values will be merged using the rules
/// defined against each field below.
/// 
/// Servers are only allowed to return `applyKind` if the client
/// signals support for this via the `completionList.applyKindSupport`
/// capability.
/// 
/// @since 3.18.0
structure CompletionItemApplyKinds {
    /// Specifies whether commitCharacters on a completion will replace or be
    /// merged with those in `completionList.itemDefaults.commitCharacters`.
    /// 
    /// If ApplyKind.Replace, the commit characters from the completion item will
    /// always be used unless not provided, in which case those from
    /// `completionList.itemDefaults.commitCharacters` will be used. An
    /// empty list can be used if a completion item does not have any commit
    /// characters and also should not use those from
    /// `completionList.itemDefaults.commitCharacters`.
    /// 
    /// If ApplyKind.Merge the commitCharacters for the completion will be the
    /// union of all values in both `completionList.itemDefaults.commitCharacters`
    /// and the completion's own `commitCharacters`.
    /// 
    /// @since 3.18.0
    commitCharacters: ApplyKind
    /// Specifies whether the `data` field on a completion will replace or
    /// be merged with data from `completionList.itemDefaults.data`.
    /// 
    /// If ApplyKind.Replace, the data from the completion item will be used if
    /// provided (and not `null`), otherwise
    /// `completionList.itemDefaults.data` will be used. An empty object can
    /// be used if a completion item does not have any data but also should
    /// not use the value from `completionList.itemDefaults.data`.
    /// 
    /// If ApplyKind.Merge, a shallow merge will be performed between
    /// `completionList.itemDefaults.data` and the completion's own data
    /// using the following rules:
    /// 
    /// - If a completion's `data` field is not provided (or `null`), the
    ///   entire `data` field from `completionList.itemDefaults.data` will be
    ///   used as-is.
    /// - If a completion's `data` field is provided, each field will
    ///   overwrite the field of the same name in
    ///   `completionList.itemDefaults.data` but no merging of nested fields
    ///   within that value will occur.
    /// 
    /// @since 3.18.0
    data: ApplyKind
}

/// In many cases the items of an actual completion result share the same
/// value for properties like `commitCharacters` or the range of a text
/// edit. A completion list can therefore define item defaults which will
/// be used if a completion item itself doesn't specify the value.
/// 
/// If a completion list specifies a default value and a completion item
/// also specifies a corresponding value, the rules for combining these are
/// defined by `applyKinds` (if the client supports it), defaulting to
/// ApplyKind.Replace.
/// 
/// Servers are only allowed to return default values if the client
/// signals support for this via the `completionList.itemDefaults`
/// capability.
/// 
/// @since 3.17.0
structure CompletionItemDefaults {
    /// A default commit character set.
    /// 
    /// @since 3.17.0
    commitCharacters: ListOf_String
    /// A default edit range.
    /// 
    /// @since 3.17.0
    editRange: RangeUnion
    /// A default insert text format.
    /// 
    /// @since 3.17.0
    insertTextFormat: InsertTextFormat
    /// A default insert text mode.
    /// 
    /// @since 3.17.0
    insertTextMode: InsertTextMode
    /// A default data value.
    /// 
    /// @since 3.17.0
    data: Document
}

/// Additional details for a completion item label.
/// 
/// @since 3.17.0
structure CompletionItemLabelDetails {
    /// An optional string which is rendered less prominently directly after {@link CompletionItem.label label},
    /// without any spacing. Should be used for function signatures and type annotations.
    detail: String
    /// An optional string which is rendered less prominently after {@link CompletionItem.detail}. Should be used
    /// for fully qualified names and file paths.
    description: String
}

structure CompletionItemResolveOpInput {
    params: CompletionItem
}

structure CompletionItemResolveOpOutput {
    result: CompletionItem
}

/// @since 3.18.0
structure CompletionItemTagOptions {
    /// The tags supported by the client.
    @required
    valueSet: ListOf_CompletionItemTag
}

/// Represents a collection of {@link CompletionItem completion items} to be presented
/// in the editor.
structure CompletionList {
    /// This list it not complete. Further typing results in recomputing this list.
    /// 
    /// Recomputed lists have all their items replaced (not appended) in the
    /// incomplete completion sessions.
    @required
    isIncomplete: Boolean
    /// In many cases the items of an actual completion result share the same
    /// value for properties like `commitCharacters` or the range of a text
    /// edit. A completion list can therefore define item defaults which will
    /// be used if a completion item itself doesn't specify the value.
    /// 
    /// If a completion list specifies a default value and a completion item
    /// also specifies a corresponding value, the rules for combining these are
    /// defined by `applyKinds` (if the client supports it), defaulting to
    /// ApplyKind.Replace.
    /// 
    /// Servers are only allowed to return default values if the client
    /// signals support for this via the `completionList.itemDefaults`
    /// capability.
    /// 
    /// @since 3.17.0
    itemDefaults: CompletionItemDefaults
    /// Specifies how fields from a completion item should be combined with those
    /// from `completionList.itemDefaults`.
    /// 
    /// If unspecified, all fields will be treated as ApplyKind.Replace.
    /// 
    /// If a field's value is ApplyKind.Replace, the value from a completion item
    /// (if provided and not `null`) will always be used instead of the value
    /// from `completionItem.itemDefaults`.
    /// 
    /// If a field's value is ApplyKind.Merge, the values will be merged using
    /// the rules defined against each field below.
    /// 
    /// Servers are only allowed to return `applyKind` if the client
    /// signals support for this via the `completionList.applyKindSupport`
    /// capability.
    /// 
    /// @since 3.18.0
    applyKind: CompletionItemApplyKinds
    /// The completion items.
    @required
    items: ListOf_CompletionItem
}

/// The client supports the following `CompletionList` specific
/// capabilities.
/// 
/// @since 3.17.0
structure CompletionListCapabilities {
    /// The client supports the following itemDefaults on
    /// a completion list.
    /// 
    /// The value lists the supported property names of the
    /// `CompletionList.itemDefaults` object. If omitted
    /// no properties are supported.
    /// 
    /// @since 3.17.0
    itemDefaults: ListOf_String
    /// Specifies whether the client supports `CompletionList.applyKind` to
    /// indicate how supported values from `completionList.itemDefaults`
    /// and `completion` will be combined.
    /// 
    /// If a client supports `applyKind` it must support it for all fields
    /// that it supports that are listed in `CompletionList.applyKind`. This
    /// means when clients add support for new/future fields in completion
    /// items the MUST also support merge for them if those fields are
    /// defined in `CompletionList.applyKind`.
    /// 
    /// @since 3.18.0
    applyKindSupport: Boolean
}

/// Completion options.
structure CompletionOptions with [WorkDoneProgressOptions] {
    /// Most tools trigger completion request automatically without explicitly requesting
    /// it using a keyboard shortcut (e.g. Ctrl+Space). Typically they do so when the user
    /// starts to type an identifier. For example if the user types `c` in a JavaScript file
    /// code complete will automatically pop up present `console` besides others as a
    /// completion item. Characters that make up identifiers don't need to be listed here.
    /// 
    /// If code complete should automatically be trigger on characters not being valid inside
    /// an identifier (for example `.` in JavaScript) list them in `triggerCharacters`.
    triggerCharacters: ListOf_String
    /// The list of all possible characters that commit a completion. This field can be used
    /// if clients don't support individual commit characters per completion item. See
    /// `ClientCapabilities.textDocument.completion.completionItem.commitCharactersSupport`
    /// 
    /// If a server provides both `allCommitCharacters` and commit characters on an individual
    /// completion item the ones on the completion item win.
    /// 
    /// @since 3.2.0
    allCommitCharacters: ListOf_String
    /// The server provides support to resolve additional
    /// information for a completion item.
    resolveProvider: Boolean
    /// The server supports the following `CompletionItem` specific
    /// capabilities.
    /// 
    /// @since 3.17.0
    completionItem: ServerCompletionItemOptions
}

/// Completion parameters
structure CompletionParams {
    /// The completion context. This is only available it the client specifies
    /// to send this using the client capability `textDocument.completion.contextSupport === true`
    context: CompletionContext
}

/// Registration options for a {@link CompletionRequest}.
structure CompletionRegistrationOptions {}

structure ConfigurationItem {
    /// The scope to get the configuration section for.
    scopeUri: String
    /// The configuration section asked for.
    section: String
}

/// The parameters of a configuration request.
structure ConfigurationParams {
    @required
    items: ListOf_ConfigurationItem
}

/// Create file operation.
structure CreateFile {
    /// A create
    @required
    kind: String
    /// The resource to create.
    @required
    uri: String
    /// Additional options
    options: CreateFileOptions
}

/// Options to create a file.
structure CreateFileOptions {
    /// Overwrite existing file. Overwrite wins over `ignoreIfExists`
    overwrite: Boolean
    /// Ignore if exists.
    ignoreIfExists: Boolean
}

/// The parameters sent in notifications/requests for user-initiated creation of
/// files.
/// 
/// @since 3.16.0
structure CreateFilesParams {
    /// An array of all files/folders created in this operation.
    @required
    files: ListOf_FileCreate
}

/// @since 3.14.0
structure DeclarationClientCapabilities {
    /// Whether declaration supports dynamic registration. If this is set to `true`
    /// the client supports the new `DeclarationRegistrationOptions` return value
    /// for the corresponding server capability as well.
    dynamicRegistration: Boolean
    /// The client supports additional metadata in the form of declaration links.
    linkSupport: Boolean
}

/// Represents the connection of two locations. Provides additional metadata over normal {@link Location locations},
/// including an origin range.
structure DeclarationLink {
    /// Span of the origin of this link.
    /// 
    /// Used as the underlined span for mouse interaction. Defaults to the word range at
    /// the definition position.
    originSelectionRange: Range
    /// The target resource identifier of this link.
    @required
    targetUri: String
    /// The full target range of this link. If the target for example is a symbol then target range is the
    /// range enclosing this symbol not including leading/trailing whitespace but everything else
    /// like comments. This information is typically used to highlight the range in the editor.
    @required
    targetRange: Range
    /// The range that should be selected and revealed when this link is being followed, e.g the name of a function.
    /// Must be contained by the `targetRange`. See also `DocumentSymbol#range`
    @required
    targetSelectionRange: Range
}

structure DeclarationOptions with [WorkDoneProgressOptions] {}

structure DeclarationParams {}

structure DeclarationRegistrationOptions {}

/// Client Capabilities for a {@link DefinitionRequest}.
structure DefinitionClientCapabilities {
    /// Whether definition supports dynamic registration.
    dynamicRegistration: Boolean
    /// The client supports additional metadata in the form of definition links.
    /// 
    /// @since 3.14.0
    linkSupport: Boolean
}

/// Represents the connection of two locations. Provides additional metadata over normal {@link Location locations},
/// including an origin range.
structure DefinitionLink {
    /// Span of the origin of this link.
    /// 
    /// Used as the underlined span for mouse interaction. Defaults to the word range at
    /// the definition position.
    originSelectionRange: Range
    /// The target resource identifier of this link.
    @required
    targetUri: String
    /// The full target range of this link. If the target for example is a symbol then target range is the
    /// range enclosing this symbol not including leading/trailing whitespace but everything else
    /// like comments. This information is typically used to highlight the range in the editor.
    @required
    targetRange: Range
    /// The range that should be selected and revealed when this link is being followed, e.g the name of a function.
    /// Must be contained by the `targetRange`. See also `DocumentSymbol#range`
    @required
    targetSelectionRange: Range
}

/// Server Capabilities for a {@link DefinitionRequest}.
structure DefinitionOptions with [WorkDoneProgressOptions] {}

/// Parameters for a {@link DefinitionRequest}.
structure DefinitionParams {}

/// Registration options for a {@link DefinitionRequest}.
structure DefinitionRegistrationOptions {}

/// Delete file operation
structure DeleteFile {
    /// A delete
    @required
    kind: String
    /// The file to delete.
    @required
    uri: String
    /// Delete options.
    options: DeleteFileOptions
}

/// Delete file options
structure DeleteFileOptions {
    /// Delete the content recursively if a folder is denoted.
    recursive: Boolean
    /// Ignore the operation if the file doesn't exist.
    ignoreIfNotExists: Boolean
}

/// The parameters sent in notifications/requests for user-initiated deletes of
/// files.
/// 
/// @since 3.16.0
structure DeleteFilesParams {
    /// An array of all files/folders deleted in this operation.
    @required
    files: ListOf_FileDelete
}

/// Represents a diagnostic, such as a compiler error or warning. Diagnostic objects
/// are only valid in the scope of a resource.
structure Diagnostic {
    /// The range at which the message applies
    @required
    range: Range
    /// The diagnostic's severity. To avoid interpretation mismatches when a
    /// server is used with different clients it is highly recommended that servers
    /// always provide a severity value.
    severity: DiagnosticSeverity
    /// The diagnostic's code, which usually appear in the user interface.
    code: IntegerOrString
    /// An optional property to describe the error code.
    /// Requires the code field (above) to be present/not null.
    /// 
    /// @since 3.16.0
    codeDescription: CodeDescription
    /// A human-readable string describing the source of this
    /// diagnostic, e.g. 'typescript' or 'super lint'. It usually
    /// appears in the user interface.
    source: String
    /// The diagnostic's message. It usually appears in the user interface
    @required
    message: String
    /// Additional metadata about the diagnostic.
    /// 
    /// @since 3.15.0
    tags: ListOf_DiagnosticTag
    /// An array of related diagnostic information, e.g. when symbol-names within
    /// a scope collide all definitions can be marked via this property.
    relatedInformation: ListOf_DiagnosticRelatedInformation
    /// A data entry field that is preserved between a `textDocument/publishDiagnostics`
    /// notification and `textDocument/codeAction` request.
    /// 
    /// @since 3.16.0
    data: Document
}

/// Client capabilities specific to diagnostic pull requests.
/// 
/// @since 3.17.0
structure DiagnosticClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is set to `true`
    /// the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`
    /// return value for the corresponding server capability as well.
    dynamicRegistration: Boolean
    /// Whether the clients supports related documents for document diagnostic pulls.
    relatedDocumentSupport: Boolean
}

/// Diagnostic options.
/// 
/// @since 3.17.0
structure DiagnosticOptions with [WorkDoneProgressOptions] {
    /// An optional identifier under which the diagnostics are
    /// managed by the client.
    identifier: String
    /// Whether the language has inter file dependencies meaning that
    /// editing code in one file can result in a different diagnostic
    /// set in another file. Inter file dependencies are common for
    /// most programming languages and typically uncommon for linters.
    @required
    interFileDependencies: Boolean
    /// The server provides support for workspace diagnostics as well.
    @required
    workspaceDiagnostics: Boolean
}

/// Diagnostic registration options.
/// 
/// @since 3.17.0
structure DiagnosticRegistrationOptions {}

/// Represents a related message and source code location for a diagnostic. This should be
/// used to point to code locations that cause or related to a diagnostics, e.g when duplicating
/// a symbol in a scope.
structure DiagnosticRelatedInformation {
    /// The location of this related diagnostic information.
    @required
    location: Location
    /// The message of this related diagnostic information.
    @required
    message: String
}

/// General diagnostics capabilities for pull and push model.
structure DiagnosticsCapabilities {
    /// Whether the clients accepts diagnostics with related information.
    relatedInformation: Boolean
    /// Client supports the tag property to provide meta data about a diagnostic.
    /// Clients supporting tags have to handle unknown tags gracefully.
    /// 
    /// @since 3.15.0
    tagSupport: ClientDiagnosticsTagOptions
    /// Client supports a codeDescription property
    /// 
    /// @since 3.16.0
    codeDescriptionSupport: Boolean
    /// Whether code action supports the `data` property which is
    /// preserved between a `textDocument/publishDiagnostics` and
    /// `textDocument/codeAction` request.
    /// 
    /// @since 3.16.0
    dataSupport: Boolean
}

/// Cancellation data returned from a diagnostic request.
/// 
/// @since 3.17.0
structure DiagnosticServerCancellationData {
    @required
    retriggerRequest: Boolean
}

/// Workspace client capabilities specific to diagnostic pull requests.
/// 
/// @since 3.17.0
structure DiagnosticWorkspaceClientCapabilities {
    /// Whether the client implementation supports a refresh request sent from
    /// the server to the client.
    /// 
    /// Note that this event is global and will force the client to refresh all
    /// pulled diagnostics currently shown. It should be used with absolute care and
    /// is useful for situation where a server for example detects a project wide
    /// change that requires such a calculation.
    refreshSupport: Boolean
}

structure DidChangeConfigurationClientCapabilities {
    /// Did change configuration notification supports dynamic registration.
    dynamicRegistration: Boolean
}

/// The parameters of a change configuration notification.
structure DidChangeConfigurationParams {
    /// The actual changed settings
    @required
    settings: Document
}

structure DidChangeConfigurationRegistrationOptions {
    section: StringUnion
}

/// The params sent in a change notebook document notification.
/// 
/// @since 3.17.0
structure DidChangeNotebookDocumentParams {
    /// The notebook document that did change. The version number points
    /// to the version after all provided changes have been applied. If
    /// only the text document content of a cell changes the notebook version
    /// doesn't necessarily have to change.
    @required
    notebookDocument: VersionedNotebookDocumentIdentifier
    /// The actual changes to the notebook document.
    /// 
    /// The changes describe single state changes to the notebook document.
    /// So if there are two changes c1 (at array index 0) and c2 (at array
    /// index 1) for a notebook in state S then c1 moves the notebook from
    /// S to S' and c2 from S' to S''. So c1 is computed on the state S and
    /// c2 is computed on the state S'.
    /// 
    /// To mirror the content of a notebook using change events use the following approach:
    /// - start with the same initial content
    /// - apply the 'notebookDocument/didChange' notifications in the order you receive them.
    /// - apply the `NotebookChangeEvent`s in a single notification in the order
    ///   you receive them.
    @required
    change: NotebookDocumentChangeEvent
}

/// The change text document notification's parameters.
structure DidChangeTextDocumentParams {
    /// The document that did change. The version number points
    /// to the version after all provided content changes have
    /// been applied.
    @required
    textDocument: VersionedTextDocumentIdentifier
    /// The actual content changes. The content changes describe single state changes
    /// to the document. So if there are two content changes c1 (at array index 0) and
    /// c2 (at array index 1) for a document in state S then c1 moves the document from
    /// S to S' and c2 from S' to S''. So c1 is computed on the state S and c2 is computed
    /// on the state S'.
    /// 
    /// To mirror the content of a document using change events use the following approach:
    /// - start with the same initial content
    /// - apply the 'textDocument/didChange' notifications in the order you receive them.
    /// - apply the `TextDocumentContentChangeEvent`s in a single notification in the order
    ///   you receive them.
    @required
    contentChanges: ListOf_TextDocumentContentChangeEvent
}

structure DidChangeWatchedFilesClientCapabilities {
    /// Did change watched files notification supports dynamic registration. Please note
    /// that the current protocol doesn't support static configuration for file changes
    /// from the server side.
    dynamicRegistration: Boolean
    /// Whether the client has support for {@link  RelativePattern relative pattern}
    /// or not.
    /// 
    /// @since 3.17.0
    relativePatternSupport: Boolean
}

/// The watched files change notification's parameters.
structure DidChangeWatchedFilesParams {
    /// The actual file events.
    @required
    changes: ListOf_FileEvent
}

/// Describe options to be used when registered for text document change events.
structure DidChangeWatchedFilesRegistrationOptions {
    /// The watchers to register.
    @required
    watchers: ListOf_FileSystemWatcher
}

/// The parameters of a `workspace/didChangeWorkspaceFolders` notification.
structure DidChangeWorkspaceFoldersParams {
    /// The actual workspace folder change event.
    @required
    event: WorkspaceFoldersChangeEvent
}

/// The params sent in a close notebook document notification.
/// 
/// @since 3.17.0
structure DidCloseNotebookDocumentParams {
    /// The notebook document that got closed.
    @required
    notebookDocument: NotebookDocumentIdentifier
    /// The text documents that represent the content
    /// of a notebook cell that got closed.
    @required
    cellTextDocuments: ListOf_TextDocumentIdentifier
}

/// The parameters sent in a close text document notification
structure DidCloseTextDocumentParams {
    /// The document that was closed.
    @required
    textDocument: TextDocumentIdentifier
}

/// The params sent in an open notebook document notification.
/// 
/// @since 3.17.0
structure DidOpenNotebookDocumentParams {
    /// The notebook document that got opened.
    @required
    notebookDocument: NotebookDocument
    /// The text documents that represent the content
    /// of a notebook cell.
    @required
    cellTextDocuments: ListOf_TextDocumentItem
}

/// The parameters sent in an open text document notification
structure DidOpenTextDocumentParams {
    /// The document that was opened.
    @required
    textDocument: TextDocumentItem
}

/// The params sent in a save notebook document notification.
/// 
/// @since 3.17.0
structure DidSaveNotebookDocumentParams {
    /// The notebook document that got saved.
    @required
    notebookDocument: NotebookDocumentIdentifier
}

/// The parameters sent in a save text document notification
structure DidSaveTextDocumentParams {
    /// The document that was saved.
    @required
    textDocument: TextDocumentIdentifier
    /// Optional the content when saved. Depends on the includeText value
    /// when the save notification was requested.
    text: String
}

structure DocumentColorClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is set to `true`
    /// the client supports the new `DocumentColorRegistrationOptions` return value
    /// for the corresponding server capability as well.
    dynamicRegistration: Boolean
}

structure DocumentColorOptions with [WorkDoneProgressOptions] {}

/// Parameters for a {@link DocumentColorRequest}.
structure DocumentColorParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
}

structure DocumentColorRegistrationOptions {}

/// Parameters of the document diagnostic request.
/// 
/// @since 3.17.0
structure DocumentDiagnosticParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
    /// The additional identifier  provided during registration.
    identifier: String
    /// The result id of a previous response if provided.
    previousResultId: String
}

/// A partial result for a document diagnostic report.
/// 
/// @since 3.17.0
structure DocumentDiagnosticReportPartialResult {
    @required
    relatedDocuments: MapOf_String_to_DocumentDiagnosticReportUnion
}

/// Client capabilities of a {@link DocumentFormattingRequest}.
structure DocumentFormattingClientCapabilities {
    /// Whether formatting supports dynamic registration.
    dynamicRegistration: Boolean
}

/// Provider options for a {@link DocumentFormattingRequest}.
structure DocumentFormattingOptions with [WorkDoneProgressOptions] {}

/// The parameters of a {@link DocumentFormattingRequest}.
structure DocumentFormattingParams {
    /// The document to format.
    @required
    textDocument: TextDocumentIdentifier
    /// The format options.
    @required
    options: FormattingOptions
}

/// Registration options for a {@link DocumentFormattingRequest}.
structure DocumentFormattingRegistrationOptions {}

/// A document highlight is a range inside a text document which deserves
/// special attention. Usually a document highlight is visualized by changing
/// the background color of its range.
structure DocumentHighlight {
    /// The range this highlight applies to.
    @required
    range: Range
    /// The highlight kind, default is {@link DocumentHighlightKind.Text text}.
    kind: DocumentHighlightKind
}

/// Client Capabilities for a {@link DocumentHighlightRequest}.
structure DocumentHighlightClientCapabilities {
    /// Whether document highlight supports dynamic registration.
    dynamicRegistration: Boolean
}

/// Provider options for a {@link DocumentHighlightRequest}.
structure DocumentHighlightOptions with [WorkDoneProgressOptions] {}

/// Parameters for a {@link DocumentHighlightRequest}.
structure DocumentHighlightParams {}

/// Registration options for a {@link DocumentHighlightRequest}.
structure DocumentHighlightRegistrationOptions {}

/// A document link is a range in a text document that links to an internal or external resource, like another
/// text document or a web site.
structure DocumentLink {
    /// The range this link applies to.
    @required
    range: Range
    /// The uri this link points to. If missing a resolve request is sent later.
    target: String
    /// The tooltip text when you hover over this link.
    /// 
    /// If a tooltip is provided, is will be displayed in a string that includes instructions on how to
    /// trigger the link, such as `{0} (ctrl + click)`. The specific instructions vary depending on OS,
    /// user settings, and localization.
    /// 
    /// @since 3.15.0
    tooltip: String
    /// A data entry field that is preserved on a document link between a
    /// DocumentLinkRequest and a DocumentLinkResolveRequest.
    data: Document
}

/// The client capabilities of a {@link DocumentLinkRequest}.
structure DocumentLinkClientCapabilities {
    /// Whether document link supports dynamic registration.
    dynamicRegistration: Boolean
    /// Whether the client supports the `tooltip` property on `DocumentLink`.
    /// 
    /// @since 3.15.0
    tooltipSupport: Boolean
}

/// Provider options for a {@link DocumentLinkRequest}.
structure DocumentLinkOptions with [WorkDoneProgressOptions] {
    /// Document links have a resolve provider as well.
    resolveProvider: Boolean
}

/// The parameters of a {@link DocumentLinkRequest}.
structure DocumentLinkParams {
    /// The document to provide document links for.
    @required
    textDocument: TextDocumentIdentifier
}

/// Registration options for a {@link DocumentLinkRequest}.
structure DocumentLinkRegistrationOptions {}

structure DocumentLinkResolveOpInput {
    params: DocumentLink
}

structure DocumentLinkResolveOpOutput {
    result: DocumentLink
}

/// Client capabilities of a {@link DocumentOnTypeFormattingRequest}.
structure DocumentOnTypeFormattingClientCapabilities {
    /// Whether on type formatting supports dynamic registration.
    dynamicRegistration: Boolean
}

/// Provider options for a {@link DocumentOnTypeFormattingRequest}.
structure DocumentOnTypeFormattingOptions {
    /// A character on which formatting should be triggered, like `{`.
    @required
    firstTriggerCharacter: String
    /// More trigger characters.
    moreTriggerCharacter: ListOf_String
}

/// The parameters of a {@link DocumentOnTypeFormattingRequest}.
structure DocumentOnTypeFormattingParams {
    /// The document to format.
    @required
    textDocument: TextDocumentIdentifier
    /// The position around which the on type formatting should happen.
    /// This is not necessarily the exact position where the character denoted
    /// by the property `ch` got typed.
    @required
    position: Position
    /// The character that has been typed that triggered the formatting
    /// on type request. That is not necessarily the last character that
    /// got inserted into the document since the client could auto insert
    /// characters as well (e.g. like automatic brace completion).
    @required
    ch: String
    /// The formatting options.
    @required
    options: FormattingOptions
}

/// Registration options for a {@link DocumentOnTypeFormattingRequest}.
structure DocumentOnTypeFormattingRegistrationOptions {}

/// Client capabilities of a {@link DocumentRangeFormattingRequest}.
structure DocumentRangeFormattingClientCapabilities {
    /// Whether range formatting supports dynamic registration.
    dynamicRegistration: Boolean
}

/// Provider options for a {@link DocumentRangeFormattingRequest}.
structure DocumentRangeFormattingOptions with [WorkDoneProgressOptions] {}

/// The parameters of a {@link DocumentRangeFormattingRequest}.
structure DocumentRangeFormattingParams {
    /// The document to format.
    @required
    textDocument: TextDocumentIdentifier
    /// The range to format
    @required
    range: Range
    /// The format options
    @required
    options: FormattingOptions
}

/// Registration options for a {@link DocumentRangeFormattingRequest}.
structure DocumentRangeFormattingRegistrationOptions {}

/// Represents programming constructs like variables, classes, interfaces etc.
/// that appear in a document. Document symbols can be hierarchical and they
/// have two ranges: one that encloses its definition and one that points to
/// its most interesting range, e.g. the range of an identifier.
structure DocumentSymbol {
    /// The name of this symbol. Will be displayed in the user interface and therefore must not be
    /// an empty string or a string only consisting of white spaces.
    @required
    name: String
    /// More detail for this symbol, e.g the signature of a function.
    detail: String
    /// The kind of this symbol.
    @required
    kind: SymbolKind
    /// Tags for this document symbol.
    /// 
    /// @since 3.16.0
    tags: ListOf_SymbolTag
    /// Indicates if this symbol is deprecated.
    /// 
    /// @deprecated Use tags instead
    deprecated: Boolean
    /// The range enclosing this symbol not including leading/trailing whitespace but everything else
    /// like comments. This information is typically used to determine if the clients cursor is
    /// inside the symbol to reveal in the symbol in the UI.
    @required
    range: Range
    /// The range that should be selected and revealed when this symbol is being picked, e.g the name of a function.
    /// Must be contained by the `range`.
    @required
    selectionRange: Range
    /// Children of this symbol, e.g. properties of a class.
    children: ListOf_DocumentSymbol
}

/// Client Capabilities for a {@link DocumentSymbolRequest}.
structure DocumentSymbolClientCapabilities {
    /// Whether document symbol supports dynamic registration.
    dynamicRegistration: Boolean
    /// Specific capabilities for the `SymbolKind` in the
    /// `textDocument/documentSymbol` request.
    symbolKind: ClientSymbolKindOptions
    /// The client supports hierarchical document symbols.
    hierarchicalDocumentSymbolSupport: Boolean
    /// The client supports tags on `SymbolInformation`. Tags are supported on
    /// `DocumentSymbol` if `hierarchicalDocumentSymbolSupport` is set to true.
    /// Clients supporting tags have to handle unknown tags gracefully.
    /// 
    /// @since 3.16.0
    tagSupport: ClientSymbolTagOptions
    /// The client supports an additional label presented in the UI when
    /// registering a document symbol provider.
    /// 
    /// @since 3.16.0
    labelSupport: Boolean
}

/// Provider options for a {@link DocumentSymbolRequest}.
structure DocumentSymbolOptions with [WorkDoneProgressOptions] {
    /// A human-readable string that is shown when multiple outlines trees
    /// are shown for the same document.
    /// 
    /// @since 3.16.0
    label: String
}

/// Parameters for a {@link DocumentSymbolRequest}.
structure DocumentSymbolParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
}

/// Registration options for a {@link DocumentSymbolRequest}.
structure DocumentSymbolRegistrationOptions {}

/// Edit range variant that includes ranges for insert and replace operations.
/// 
/// @since 3.18.0
structure EditRangeWithInsertReplace {
    @required
    insert: Range
    @required
    replace: Range
}

/// The client capabilities of a {@link ExecuteCommandRequest}.
structure ExecuteCommandClientCapabilities {
    /// Execute command supports dynamic registration.
    dynamicRegistration: Boolean
}

/// The server capabilities of a {@link ExecuteCommandRequest}.
structure ExecuteCommandOptions with [WorkDoneProgressOptions] {
    /// The commands to be executed on the server
    @required
    commands: ListOf_String
}

/// The parameters of a {@link ExecuteCommandRequest}.
structure ExecuteCommandParams {
    /// The identifier of the actual command handler.
    @required
    command: String
    /// Arguments that the command should be invoked with.
    arguments: ListOf_Document
}

/// Registration options for a {@link ExecuteCommandRequest}.
structure ExecuteCommandRegistrationOptions {}

structure ExecutionSummary {
    /// A strict monotonically increasing value
    /// indicating the execution order of a cell
    /// inside a notebook.
    @required
    executionOrder: Integer
    /// Whether the execution was successful or
    /// not if known by the client.
    success: Boolean
}

structure ExitInput {}

/// Represents information on a file/folder create.
/// 
/// @since 3.16.0
structure FileCreate {
    /// A file:// URI for the location of the file/folder being created.
    @required
    uri: String
}

/// Represents information on a file/folder delete.
/// 
/// @since 3.16.0
structure FileDelete {
    /// A file:// URI for the location of the file/folder being deleted.
    @required
    uri: String
}

/// An event describing a file change.
structure FileEvent {
    /// The file's uri.
    @required
    uri: String
    /// The change type.
    @required
    type: FileChangeType
}

/// Capabilities relating to events from file operations by the user in the client.
/// 
/// These events do not come from the file system, they come from user operations
/// like renaming a file in the UI.
/// 
/// @since 3.16.0
structure FileOperationClientCapabilities {
    /// Whether the client supports dynamic registration for file requests/notifications.
    dynamicRegistration: Boolean
    /// The client has support for sending didCreateFiles notifications.
    didCreate: Boolean
    /// The client has support for sending willCreateFiles requests.
    willCreate: Boolean
    /// The client has support for sending didRenameFiles notifications.
    didRename: Boolean
    /// The client has support for sending willRenameFiles requests.
    willRename: Boolean
    /// The client has support for sending didDeleteFiles notifications.
    didDelete: Boolean
    /// The client has support for sending willDeleteFiles requests.
    willDelete: Boolean
}

/// A filter to describe in which file operation requests or notifications
/// the server is interested in receiving.
/// 
/// @since 3.16.0
structure FileOperationFilter {
    /// A Uri scheme like `file` or `untitled`.
    scheme: String
    /// The actual file operation pattern.
    @required
    pattern: FileOperationPattern
}

/// Options for notifications/requests for user operations on files.
/// 
/// @since 3.16.0
structure FileOperationOptions {
    /// The server is interested in receiving didCreateFiles notifications.
    didCreate: FileOperationRegistrationOptions
    /// The server is interested in receiving willCreateFiles requests.
    willCreate: FileOperationRegistrationOptions
    /// The server is interested in receiving didRenameFiles notifications.
    didRename: FileOperationRegistrationOptions
    /// The server is interested in receiving willRenameFiles requests.
    willRename: FileOperationRegistrationOptions
    /// The server is interested in receiving didDeleteFiles file notifications.
    didDelete: FileOperationRegistrationOptions
    /// The server is interested in receiving willDeleteFiles file requests.
    willDelete: FileOperationRegistrationOptions
}

/// A pattern to describe in which file operation requests or notifications
/// the server is interested in receiving.
/// 
/// @since 3.16.0
structure FileOperationPattern {
    /// The glob pattern to match. Glob patterns can have the following syntax:
    /// - `*` to match one or more characters in a path segment
    /// - `?` to match on one character in a path segment
    /// - `**` to match any number of path segments, including none
    /// - `{}` to group sub patterns into an OR expression. (e.g. `**​/*.{ts,js}` matches all TypeScript and JavaScript files)
    /// - `[]` to declare a range of characters to match in a path segment (e.g., `example.[0-9]` to match on `example.0`, `example.1`, …)
    /// - `[!...]` to negate a range of characters to match in a path segment (e.g., `example.[!0-9]` to match on `example.a`, `example.b`, but not `example.0`)
    @required
    glob: String
    /// Whether to match files or folders with this pattern.
    /// 
    /// Matches both if undefined.
    matches: FileOperationPatternKind
    /// Additional options used during matching.
    options: FileOperationPatternOptions
}

/// Matching options for the file operation pattern.
/// 
/// @since 3.16.0
structure FileOperationPatternOptions {
    /// The pattern should be matched ignoring casing.
    ignoreCase: Boolean
}

/// The options to register for file operations.
/// 
/// @since 3.16.0
structure FileOperationRegistrationOptions {
    /// The actual filters.
    @required
    filters: ListOf_FileOperationFilter
}

/// Represents information on a file/folder rename.
/// 
/// @since 3.16.0
structure FileRename {
    /// A file:// URI for the original location of the file/folder being renamed.
    @required
    oldUri: String
    /// A file:// URI for the new location of the file/folder being renamed.
    @required
    newUri: String
}

structure FileSystemWatcher {
    /// The glob pattern to watch. See {@link GlobPattern glob pattern} for more detail.
    /// 
    /// @since 3.17.0 support for relative patterns.
    @required
    globPattern: GlobPattern
    /// The kind of events of interest. If omitted it defaults
    /// to WatchKind.Create | WatchKind.Change | WatchKind.Delete
    /// which is 7.
    kind: WatchKind
}

/// Represents a folding range. To be valid, start and end line must be bigger than zero and smaller
/// than the number of lines in the document. Clients are free to ignore invalid ranges.
structure FoldingRange {
    /// The zero-based start line of the range to fold. The folded area starts after the line's last character.
    /// To be valid, the end must be zero or larger and smaller than the number of lines in the document.
    @required
    startLine: Integer
    /// The zero-based character offset from where the folded range starts. If not defined, defaults to the length of the start line.
    startCharacter: Integer
    /// The zero-based end line of the range to fold. The folded area ends with the line's last character.
    /// To be valid, the end must be zero or larger and smaller than the number of lines in the document.
    @required
    endLine: Integer
    /// The zero-based character offset before the folded range ends. If not defined, defaults to the length of the end line.
    endCharacter: Integer
    /// Describes the kind of the folding range such as 'comment' or 'region'. The kind
    /// is used to categorize folding ranges and used by commands like 'Fold all comments'.
    /// See {@link FoldingRangeKind} for an enumeration of standardized kinds.
    kind: FoldingRangeKind
    /// The text that the client should show when the specified range is
    /// collapsed. If not defined or not supported by the client, a default
    /// will be chosen by the client.
    /// 
    /// @since 3.17.0
    collapsedText: String
}

structure FoldingRangeClientCapabilities {
    /// Whether implementation supports dynamic registration for folding range
    /// providers. If this is set to `true` the client supports the new
    /// `FoldingRangeRegistrationOptions` return value for the corresponding
    /// server capability as well.
    dynamicRegistration: Boolean
    /// The maximum number of folding ranges that the client prefers to receive
    /// per document. The value serves as a hint, servers are free to follow the
    /// limit.
    rangeLimit: Integer
    /// If set, the client signals that it only supports folding complete lines.
    /// If set, client will ignore specified `startCharacter` and `endCharacter`
    /// properties in a FoldingRange.
    lineFoldingOnly: Boolean
    /// Specific options for the folding range kind.
    /// 
    /// @since 3.17.0
    foldingRangeKind: ClientFoldingRangeKindOptions
    /// Specific options for the folding range.
    /// 
    /// @since 3.17.0
    foldingRange: ClientFoldingRangeOptions
}

structure FoldingRangeOptions with [WorkDoneProgressOptions] {}

/// Parameters for a {@link FoldingRangeRequest}.
structure FoldingRangeParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
}

structure FoldingRangeRegistrationOptions {}

/// Value-object describing what options formatting should use.
structure FormattingOptions {
    /// Size of a tab in spaces.
    @required
    tabSize: Integer
    /// Prefer spaces over tabs.
    @required
    insertSpaces: Boolean
    /// Trim trailing whitespace on a line.
    /// 
    /// @since 3.15.0
    trimTrailingWhitespace: Boolean
    /// Insert a newline character at the end of the file if one does not exist.
    /// 
    /// @since 3.15.0
    insertFinalNewline: Boolean
    /// Trim all newlines after the final newline at the end of the file.
    /// 
    /// @since 3.15.0
    trimFinalNewlines: Boolean
}

/// A diagnostic report with a full set of problems.
/// 
/// @since 3.17.0
structure FullDocumentDiagnosticReport {
    /// A full document diagnostic report.
    @required
    kind: String
    /// An optional result id. If provided it will
    /// be sent on the next diagnostic request for the
    /// same document.
    resultId: String
    /// The actual items.
    @required
    items: ListOf_Diagnostic
}

/// General client capabilities.
/// 
/// @since 3.16.0
structure GeneralClientCapabilities {
    /// Client capability that signals how the client
    /// handles stale requests (e.g. a request
    /// for which the client will not process the response
    /// anymore since the information is outdated).
    /// 
    /// @since 3.17.0
    staleRequestSupport: StaleRequestSupportOptions
    /// Client capabilities specific to regular expressions.
    /// 
    /// @since 3.16.0
    regularExpressions: RegularExpressionsClientCapabilities
    /// Client capabilities specific to the client's markdown parser.
    /// 
    /// @since 3.16.0
    markdown: MarkdownClientCapabilities
    /// The position encodings supported by the client. Client and server
    /// have to agree on the same position encoding to ensure that offsets
    /// (e.g. character position in a line) are interpreted the same on both
    /// sides.
    /// 
    /// To keep the protocol backwards compatible the following applies: if
    /// the value 'utf-16' is missing from the array of position encodings
    /// servers can assume that the client supports UTF-16. UTF-16 is
    /// therefore a mandatory encoding.
    /// 
    /// If omitted it defaults to ['utf-16'].
    /// 
    /// Implementation considerations: since the conversion from one encoding
    /// into another requires the content of the file / line the conversion
    /// is best done where the file is read which is usually on the server
    /// side.
    /// 
    /// @since 3.17.0
    positionEncodings: ListOf_PositionEncodingKind
}

/// The result of a hover request.
structure Hover {
    /// The hover's content
    @required
    contents: AnonymousUnion
    /// An optional range inside the text document that is used to
    /// visualize the hover, e.g. by changing the background color.
    range: Range
}

structure HoverClientCapabilities {
    /// Whether hover supports dynamic registration.
    dynamicRegistration: Boolean
    /// Client supports the following content formats for the content
    /// property. The order describes the preferred format of the client.
    contentFormat: ListOf_MarkupKind
}

/// Hover options.
structure HoverOptions with [WorkDoneProgressOptions] {}

/// Parameters for a {@link HoverRequest}.
structure HoverParams {}

/// Registration options for a {@link HoverRequest}.
structure HoverRegistrationOptions {}

/// @since 3.6.0
structure ImplementationClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is set to `true`
    /// the client supports the new `ImplementationRegistrationOptions` return value
    /// for the corresponding server capability as well.
    dynamicRegistration: Boolean
    /// The client supports additional metadata in the form of definition links.
    /// 
    /// @since 3.14.0
    linkSupport: Boolean
}

structure ImplementationOptions with [WorkDoneProgressOptions] {}

structure ImplementationParams {}

structure ImplementationRegistrationOptions {}

structure InitializedInput {
    params: InitializedParams
}

structure InitializedParams {}

/// The data type of the ResponseError if the
/// initialize request fails.
structure InitializeError {
    /// Indicates whether the client execute the following retry logic:
    /// (1) show the message provided by the ResponseError to the user
    /// (2) user selects retry or cancel
    /// (3) if user selected retry the initialize method is sent again.
    @required
    retry: Boolean
}

structure InitializeOpInput {
    params: InitializeParams
}

structure InitializeOpOutput {
    result: InitializeResult
}

structure InitializeParams {}

/// The result returned from an initialize request.
structure InitializeResult {
    /// The capabilities the language server provides.
    @required
    capabilities: ServerCapabilities
    /// Information about the server.
    /// 
    /// @since 3.15.0
    serverInfo: ServerInfo
}

/// Inlay hint information.
/// 
/// @since 3.17.0
structure InlayHint {
    /// The position of this hint.
    /// 
    /// If multiple hints have the same position, they will be shown in the order
    /// they appear in the response.
    @required
    position: Position
    /// The label of this hint. A human readable string or an array of
    /// InlayHintLabelPart label parts.
    /// 
    /// *Note* that neither the string nor the label part can be empty.
    @required
    label: StringOrListOfInlayHintLabelPart
    /// The kind of this hint. Can be omitted in which case the client
    /// should fall back to a reasonable default.
    kind: InlayHintKind
    /// Optional text edits that are performed when accepting this inlay hint.
    /// 
    /// *Note* that edits are expected to change the document so that the inlay
    /// hint (or its nearest variant) is now part of the document and the inlay
    /// hint itself is now obsolete.
    textEdits: ListOf_TextEdit
    /// The tooltip text when you hover over this item.
    tooltip: StringOrMarkupContent
    /// Render padding before the hint.
    /// 
    /// Note: Padding should use the editor's background color, not the
    /// background color of the hint itself. That means padding can be used
    /// to visually align/separate an inlay hint.
    paddingLeft: Boolean
    /// Render padding after the hint.
    /// 
    /// Note: Padding should use the editor's background color, not the
    /// background color of the hint itself. That means padding can be used
    /// to visually align/separate an inlay hint.
    paddingRight: Boolean
    /// A data entry field that is preserved on an inlay hint between
    /// a `textDocument/inlayHint` and a `inlayHint/resolve` request.
    data: Document
}

/// Inlay hint client capabilities.
/// 
/// @since 3.17.0
structure InlayHintClientCapabilities {
    /// Whether inlay hints support dynamic registration.
    dynamicRegistration: Boolean
    /// Indicates which properties a client can resolve lazily on an inlay
    /// hint.
    resolveSupport: ClientInlayHintResolveOptions
}

/// An inlay hint label part allows for interactive and composite labels
/// of inlay hints.
/// 
/// @since 3.17.0
structure InlayHintLabelPart {
    /// The value of this label part.
    @required
    value: String
    /// The tooltip text when you hover over this label part. Depending on
    /// the client capability `inlayHint.resolveSupport` clients might resolve
    /// this property late using the resolve request.
    tooltip: StringOrMarkupContent
    /// An optional source code location that represents this
    /// label part.
    /// 
    /// The editor will use this location for the hover and for code navigation
    /// features: This part will become a clickable link that resolves to the
    /// definition of the symbol at the given location (not necessarily the
    /// location itself), it shows the hover that shows at the given location,
    /// and it shows a context menu with further code navigation commands.
    /// 
    /// Depending on the client capability `inlayHint.resolveSupport` clients
    /// might resolve this property late using the resolve request.
    location: Location
    /// An optional command for this label part.
    /// 
    /// Depending on the client capability `inlayHint.resolveSupport` clients
    /// might resolve this property late using the resolve request.
    command: Command
}

/// Inlay hint options used during static registration.
/// 
/// @since 3.17.0
structure InlayHintOptions with [WorkDoneProgressOptions] {
    /// The server provides support to resolve additional
    /// information for an inlay hint item.
    resolveProvider: Boolean
}

/// A parameter literal used in inlay hint requests.
/// 
/// @since 3.17.0
structure InlayHintParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
    /// The document range for which inlay hints should be computed.
    @required
    range: Range
}

/// Inlay hint options used during static or dynamic registration.
/// 
/// @since 3.17.0
structure InlayHintRegistrationOptions {}

structure InlayHintResolveOpInput {
    params: InlayHint
}

structure InlayHintResolveOpOutput {
    result: InlayHint
}

/// Client workspace capabilities specific to inlay hints.
/// 
/// @since 3.17.0
structure InlayHintWorkspaceClientCapabilities {
    /// Whether the client implementation supports a refresh request sent from
    /// the server to the client.
    /// 
    /// Note that this event is global and will force the client to refresh all
    /// inlay hints currently shown. It should be used with absolute care and
    /// is useful for situation where a server for example detects a project wide
    /// change that requires such a calculation.
    refreshSupport: Boolean
}

structure InlineStruct_a32dc9f64f1df03a8ce970b71df42503 {}

structure InlineStruct_bb20b45fd4d951383d93cb799b3970be {}

/// Client capabilities specific to inline values.
/// 
/// @since 3.17.0
structure InlineValueClientCapabilities {
    /// Whether implementation supports dynamic registration for inline value providers.
    dynamicRegistration: Boolean
}

/// @since 3.17.0
structure InlineValueContext {
    /// The stack frame (as a DAP Id) where the execution has stopped.
    @required
    frameId: Integer
    /// The document range where execution has stopped.
    /// Typically the end position of the range denotes the line where the inline values are shown.
    @required
    stoppedLocation: Range
}

/// Provide an inline value through an expression evaluation.
/// If only a range is specified, the expression will be extracted from the underlying document.
/// An optional expression can be used to override the extracted expression.
/// 
/// @since 3.17.0
structure InlineValueEvaluatableExpression {
    /// The document range for which the inline value applies.
    /// The range is used to extract the evaluatable expression from the underlying document.
    @required
    range: Range
    /// If specified the expression overrides the extracted expression.
    expression: String
}

/// Inline value options used during static registration.
/// 
/// @since 3.17.0
structure InlineValueOptions with [WorkDoneProgressOptions] {}

/// A parameter literal used in inline value requests.
/// 
/// @since 3.17.0
structure InlineValueParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
    /// The document range for which inline values should be computed.
    @required
    range: Range
    /// Additional information about the context in which inline values were
    /// requested.
    @required
    context: InlineValueContext
}

/// Inline value options used during static or dynamic registration.
/// 
/// @since 3.17.0
structure InlineValueRegistrationOptions {}

/// Provide inline value as text.
/// 
/// @since 3.17.0
structure InlineValueText {
    /// The document range for which the inline value applies.
    @required
    range: Range
    /// The text of the inline value.
    @required
    text: String
}

/// Provide inline value through a variable lookup.
/// If only a range is specified, the variable name will be extracted from the underlying document.
/// An optional variable name can be used to override the extracted name.
/// 
/// @since 3.17.0
structure InlineValueVariableLookup {
    /// The document range for which the inline value applies.
    /// The range is used to extract the variable name from the underlying document.
    @required
    range: Range
    /// If specified the name of the variable to look up.
    variableName: String
    /// How to perform the lookup.
    @required
    caseSensitiveLookup: Boolean
}

/// Client workspace capabilities specific to inline values.
/// 
/// @since 3.17.0
structure InlineValueWorkspaceClientCapabilities {
    /// Whether the client implementation supports a refresh request sent from the
    /// server to the client.
    /// 
    /// Note that this event is global and will force the client to refresh all
    /// inline values currently shown. It should be used with absolute care and is
    /// useful for situation where a server for example detects a project wide
    /// change that requires such a calculation.
    refreshSupport: Boolean
}

/// A special text edit to provide an insert and a replace operation.
/// 
/// @since 3.16.0
structure InsertReplaceEdit {
    /// The string to be inserted.
    @required
    newText: String
    /// The range if the insert is requested
    @required
    insert: Range
    /// The range if the replace is requested.
    @required
    replace: Range
}

/// Client capabilities for the linked editing range request.
/// 
/// @since 3.16.0
structure LinkedEditingRangeClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is set to `true`
    /// the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`
    /// return value for the corresponding server capability as well.
    dynamicRegistration: Boolean
}

structure LinkedEditingRangeOptions with [WorkDoneProgressOptions] {}

structure LinkedEditingRangeParams {}

structure LinkedEditingRangeRegistrationOptions {}

/// The result of a linked editing range request.
/// 
/// @since 3.16.0
structure LinkedEditingRanges {
    /// A list of ranges that can be edited together. The ranges must have
    /// identical length and contain identical text content. The ranges cannot overlap.
    @required
    ranges: ListOf_Range
    /// An optional word pattern (regular expression) that describes valid contents for
    /// the given ranges. If no pattern is provided, the client configuration's word
    /// pattern will be used.
    wordPattern: String
}

/// Represents a location inside a resource, such as a line
/// inside a text file.
structure Location {
    @required
    uri: String
    @required
    range: Range
}

/// Represents the connection of two locations. Provides additional metadata over normal {@link Location locations},
/// including an origin range.
structure LocationLink {
    /// Span of the origin of this link.
    /// 
    /// Used as the underlined span for mouse interaction. Defaults to the word range at
    /// the definition position.
    originSelectionRange: Range
    /// The target resource identifier of this link.
    @required
    targetUri: String
    /// The full target range of this link. If the target for example is a symbol then target range is the
    /// range enclosing this symbol not including leading/trailing whitespace but everything else
    /// like comments. This information is typically used to highlight the range in the editor.
    @required
    targetRange: Range
    /// The range that should be selected and revealed when this link is being followed, e.g the name of a function.
    /// Must be contained by the `targetRange`. See also `DocumentSymbol#range`
    @required
    targetSelectionRange: Range
}

/// Location with only uri and does not include range.
/// 
/// @since 3.18.0
structure LocationUriOnly {
    @required
    uri: String
}

/// The log message parameters.
structure LogMessageParams {
    /// The message type. See {@link MessageType}
    @required
    type: MessageType
    /// The actual message.
    @required
    message: String
}

structure LogTraceInput {
    params: LogTraceParams
}

structure LogTraceParams {
    @required
    message: String
    verbose: String
}

/// Client capabilities specific to the used markdown parser.
/// 
/// @since 3.16.0
structure MarkdownClientCapabilities {
    /// The name of the parser.
    @required
    parser: String
    /// The version of the parser.
    version: String
    /// A list of HTML tags that the client allows / supports in
    /// Markdown.
    /// 
    /// @since 3.17.0
    allowedTags: ListOf_String
}

/// @since 3.18.0
/// @deprecated use MarkupContent instead.
structure MarkedStringWithLanguage {
    @required
    language: String
    @required
    value: String
}

/// A `MarkupContent` literal represents a string value which content is interpreted base on its
/// kind flag. Currently the protocol supports `plaintext` and `markdown` as markup kinds.
/// 
/// If the kind is `markdown` then the value can contain fenced code blocks like in GitHub issues.
/// See https://help.github.com/articles/creating-and-highlighting-code-blocks/#syntax-highlighting
/// 
/// Here is an example how such a string can be constructed using JavaScript / TypeScript:
/// ```ts
/// let markdown: MarkdownContent = {
///  kind: MarkupKind.Markdown,
///  value: [
///    '# Header',
///    'Some text',
///    '```typescript',
///    'someCode();',
///    '```'
///  ].join('\n')
/// };
/// ```
/// 
/// *Please Note* that clients might sanitize the return markdown. A client could decide to
/// remove HTML from the markdown to avoid script execution.
structure MarkupContent {
    /// The type of the Markup
    @required
    kind: MarkupKind
    /// The content itself
    @required
    value: String
}

structure MessageActionItem {
    /// A short title like 'Retry', 'Open Log' etc.
    @required
    title: String
}

/// Moniker definition to match LSIF 0.5 moniker definition.
/// 
/// @since 3.16.0
structure Moniker {
    /// The scheme of the moniker. For example tsc or .Net
    @required
    scheme: String
    /// The identifier of the moniker. The value is opaque in LSIF however
    /// schema owners are allowed to define the structure if they want.
    @required
    identifier: String
    /// The scope in which the moniker is unique
    @required
    unique: UniquenessLevel
    /// The moniker kind if known.
    kind: MonikerKind
}

/// Client capabilities specific to the moniker request.
/// 
/// @since 3.16.0
structure MonikerClientCapabilities {
    /// Whether moniker supports dynamic registration. If this is set to `true`
    /// the client supports the new `MonikerRegistrationOptions` return value
    /// for the corresponding server capability as well.
    dynamicRegistration: Boolean
}

structure MonikerOptions with [WorkDoneProgressOptions] {}

structure MonikerParams {}

structure MonikerRegistrationOptions {}

/// A notebook cell.
/// 
/// A cell's document URI must be unique across ALL notebook
/// cells and can therefore be used to uniquely identify a
/// notebook cell or the cell's text document.
/// 
/// @since 3.17.0
structure NotebookCell {
    /// The cell's kind
    @required
    kind: NotebookCellKind
    /// The URI of the cell's text document
    /// content.
    @required
    document: String
    /// Additional metadata stored with the cell.
    /// 
    /// Note: should always be an object literal (e.g. LSPObject)
    metadata: LSPObject
    /// Additional execution summary information
    /// if supported by the client.
    executionSummary: ExecutionSummary
}

/// A change describing how to move a `NotebookCell`
/// array from state S to S'.
/// 
/// @since 3.17.0
structure NotebookCellArrayChange {
    /// The start oftest of the cell that changed.
    @required
    start: Integer
    /// The deleted cells
    @required
    deleteCount: Integer
    /// The new cells, if any
    cells: ListOf_NotebookCell
}

/// @since 3.18.0
structure NotebookCellLanguage {
    @required
    language: String
}

/// A notebook cell text document filter denotes a cell text
/// document by different properties.
/// 
/// @since 3.17.0
structure NotebookCellTextDocumentFilter {
    /// A filter that matches against the notebook
    /// containing the notebook cell. If a string
    /// value is provided it matches against the
    /// notebook type. '*' matches every notebook.
    @required
    notebook: StringOrNotebookDocumentFilter
    /// A language id like `python`.
    /// 
    /// Will be matched against the language id of the
    /// notebook cell document. '*' matches every language.
    language: String
}

/// A notebook document.
/// 
/// @since 3.17.0
structure NotebookDocument {
    /// The notebook document's uri.
    @required
    uri: String
    /// The type of the notebook.
    @required
    notebookType: String
    /// The version number of this document (it will increase after each
    /// change, including undo/redo).
    @required
    version: Integer
    /// Additional metadata stored with the notebook
    /// document.
    /// 
    /// Note: should always be an object literal (e.g. LSPObject)
    metadata: LSPObject
    /// The cells of a notebook.
    @required
    cells: ListOf_NotebookCell
}

/// Cell changes to a notebook document.
/// 
/// @since 3.18.0
structure NotebookDocumentCellChanges {
    /// Changes to the cell structure to add or
    /// remove cells.
    structure: NotebookDocumentCellChangeStructure
    /// Changes to notebook cells properties like its
    /// kind, execution summary or metadata.
    data: ListOf_NotebookCell
    /// Changes to the text content of notebook cells.
    textContent: ListOf_NotebookDocumentCellContentChanges
}

/// Structural changes to cells in a notebook document.
/// 
/// @since 3.18.0
structure NotebookDocumentCellChangeStructure {
    /// The change to the cell array.
    @required
    array: NotebookCellArrayChange
    /// Additional opened cell text documents.
    didOpen: ListOf_TextDocumentItem
    /// Additional closed cell text documents.
    didClose: ListOf_TextDocumentIdentifier
}

/// Content changes to a cell in a notebook document.
/// 
/// @since 3.18.0
structure NotebookDocumentCellContentChanges {
    @required
    document: VersionedTextDocumentIdentifier
    @required
    changes: ListOf_TextDocumentContentChangeEvent
}

/// A change event for a notebook document.
/// 
/// @since 3.17.0
structure NotebookDocumentChangeEvent {
    /// The changed meta data if any.
    /// 
    /// Note: should always be an object literal (e.g. LSPObject)
    metadata: LSPObject
    /// Changes to cells
    cells: NotebookDocumentCellChanges
}

/// Capabilities specific to the notebook document support.
/// 
/// @since 3.17.0
structure NotebookDocumentClientCapabilities {
    /// Capabilities specific to notebook document synchronization
    /// 
    /// @since 3.17.0
    @required
    synchronization: NotebookDocumentSyncClientCapabilities
}

structure NotebookDocumentDidChangeInput {
    params: DidChangeNotebookDocumentParams
}

structure NotebookDocumentDidCloseInput {
    params: DidCloseNotebookDocumentParams
}

structure NotebookDocumentDidOpenInput {
    params: DidOpenNotebookDocumentParams
}

structure NotebookDocumentDidSaveInput {
    params: DidSaveNotebookDocumentParams
}

/// A notebook document filter where `notebookType` is required field.
/// 
/// @since 3.18.0
structure NotebookDocumentFilterNotebookType {
    /// The type of the enclosing notebook.
    @required
    notebookType: String
    /// A Uri {@link Uri.scheme scheme}, like `file` or `untitled`.
    scheme: String
    /// A glob pattern.
    pattern: GlobPattern
}

/// A notebook document filter where `pattern` is required field.
/// 
/// @since 3.18.0
structure NotebookDocumentFilterPattern {
    /// The type of the enclosing notebook.
    notebookType: String
    /// A Uri {@link Uri.scheme scheme}, like `file` or `untitled`.
    scheme: String
    /// A glob pattern.
    @required
    pattern: GlobPattern
}

/// A notebook document filter where `scheme` is required field.
/// 
/// @since 3.18.0
structure NotebookDocumentFilterScheme {
    /// The type of the enclosing notebook.
    notebookType: String
    /// A Uri {@link Uri.scheme scheme}, like `file` or `untitled`.
    @required
    scheme: String
    /// A glob pattern.
    pattern: GlobPattern
}

/// @since 3.18.0
structure NotebookDocumentFilterWithCells {
    /// The notebook to be synced If a string
    /// value is provided it matches against the
    /// notebook type. '*' matches every notebook.
    notebook: StringOrNotebookDocumentFilter
    /// The cells of the matching notebook to be synced.
    @required
    cells: ListOf_NotebookCellLanguage
}

/// @since 3.18.0
structure NotebookDocumentFilterWithNotebook {
    /// The notebook to be synced If a string
    /// value is provided it matches against the
    /// notebook type. '*' matches every notebook.
    @required
    notebook: StringOrNotebookDocumentFilter
    /// The cells of the matching notebook to be synced.
    cells: ListOf_NotebookCellLanguage
}

/// A literal to identify a notebook document in the client.
/// 
/// @since 3.17.0
structure NotebookDocumentIdentifier {
    /// The notebook document's uri.
    @required
    uri: String
}

/// Notebook specific client capabilities.
/// 
/// @since 3.17.0
structure NotebookDocumentSyncClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is
    /// set to `true` the client supports the new
    /// `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`
    /// return value for the corresponding server capability as well.
    dynamicRegistration: Boolean
    /// The client supports sending execution summary data per cell.
    executionSummarySupport: Boolean
}

/// Options specific to a notebook plus its cells
/// to be synced to the server.
/// 
/// If a selector provides a notebook document
/// filter but no cell selector all cells of a
/// matching notebook document will be synced.
/// 
/// If a selector provides no notebook document
/// filter but only a cell selector all notebook
/// document that contain at least one matching
/// cell will be synced.
/// 
/// @since 3.17.0
structure NotebookDocumentSyncOptions {
    /// The notebooks to be synced
    @required
    notebookSelector: ListOf_NotebookDocumentFilterWithUnion
    /// Whether save notification should be forwarded to
    /// the server. Will only be honored if mode === `notebook`.
    save: Boolean
}

/// Registration options specific to a notebook.
/// 
/// @since 3.17.0
structure NotebookDocumentSyncRegistrationOptions {}

/// A text document identifier to optionally denote a specific version of a text document.
structure OptionalVersionedTextDocumentIdentifier {
    /// The version number of this document. If a versioned text document identifier
    /// is sent from the server to the client and the file is not open in the editor
    /// (the server has not received an open notification before) the server can send
    /// `null` to indicate that the version is unknown and the content on disk is the
    /// truth (as specified with document content ownership).
    @required
    version: IntegerOrNULL
}

/// Represents a parameter of a callable-signature. A parameter can
/// have a label and a doc-comment.
structure ParameterInformation {
    /// The label of this parameter information.
    /// 
    /// Either a string or an inclusive start and exclusive end offsets within its containing
    /// signature label. (see SignatureInformation.label). The offsets are based on a UTF-16
    /// string representation as `Position` and `Range` does.
    /// 
    /// To avoid ambiguities a server should use the [start, end] offset value instead of using
    /// a substring. Whether a client support this is controlled via `labelOffsetSupport` client
    /// capability.
    /// 
    /// *Note*: a label of type string should be a substring of its containing signature label.
    /// Its intended use case is to highlight the parameter label part in the `SignatureInformation.label`.
    @required
    label: StringUnion
    /// The human-readable doc-comment of this parameter. Will be shown
    /// in the UI but can be omitted.
    documentation: StringOrMarkupContent
}

@mixin
structure PartialResultParams {
    /// An optional token that a server can use to report partial results (e.g. streaming) to
    /// the client.
    partialResultToken: ProgressToken
}

/// Position in a text document expressed as zero-based line and character
/// offset. Prior to 3.17 the offsets were always based on a UTF-16 string
/// representation. So a string of the form `a𐐀b` the character offset of the
/// character `a` is 0, the character offset of `𐐀` is 1 and the character
/// offset of b is 3 since `𐐀` is represented using two code units in UTF-16.
/// Since 3.17 clients and servers can agree on a different string encoding
/// representation (e.g. UTF-8). The client announces it's supported encoding
/// via the client capability [`general.positionEncodings`](https://microsoft.github.io/language-server-protocol/specifications/specification-current/#clientCapabilities).
/// The value is an array of position encodings the client supports, with
/// decreasing preference (e.g. the encoding at index `0` is the most preferred
/// one). To stay backwards compatible the only mandatory encoding is UTF-16
/// represented via the string `utf-16`. The server can pick one of the
/// encodings offered by the client and signals that encoding back to the
/// client via the initialize result's property
/// [`capabilities.positionEncoding`](https://microsoft.github.io/language-server-protocol/specifications/specification-current/#serverCapabilities). If the string value
/// `utf-16` is missing from the client's capability `general.positionEncodings`
/// servers can safely assume that the client supports UTF-16. If the server
/// omits the position encoding in its initialize result the encoding defaults
/// to the string value `utf-16`. Implementation considerations: since the
/// conversion from one encoding into another requires the content of the
/// file / line the conversion is best done where the file is read which is
/// usually on the server side.
/// 
/// Positions are line end character agnostic. So you can not specify a position
/// that denotes `\r|\n` or `\n|` where `|` represents the character offset.
/// 
/// @since 3.17.0 - support for negotiated position encoding.
structure Position {
    /// Line position in a document (zero-based).
    @required
    line: Integer
    /// Character offset on a line in a document (zero-based).
    /// 
    /// The meaning of this offset is determined by the negotiated
    /// `PositionEncodingKind`.
    @required
    character: Integer
}

/// @since 3.18.0
structure PrepareRenameDefaultBehavior {
    @required
    defaultBehavior: Boolean
}

structure PrepareRenameParams {}

/// @since 3.18.0
structure PrepareRenamePlaceholder {
    @required
    range: Range
    @required
    placeholder: String
}

/// A previous result id in a workspace pull request.
/// 
/// @since 3.17.0
structure PreviousResultId {
    /// The URI for which the client knowns a
    /// result id.
    @required
    uri: String
    /// The value of the previous result id.
    @required
    value: String
}

structure ProgressInput {
    params: ProgressParams
}

structure ProgressParams {
    /// The progress token provided by the client or server.
    @required
    token: ProgressToken
    /// The progress data.
    @required
    value: Document
}

/// The publish diagnostic client capabilities.
structure PublishDiagnosticsClientCapabilities {
    /// Whether the client interprets the version property of the
    /// `textDocument/publishDiagnostics` notification's parameter.
    /// 
    /// @since 3.15.0
    versionSupport: Boolean
}

/// The publish diagnostic notification's parameters.
structure PublishDiagnosticsParams {
    /// The URI for which diagnostic information is reported.
    @required
    uri: String
    /// Optional the version number of the document the diagnostics are published for.
    /// 
    /// @since 3.15.0
    version: Integer
    /// An array of diagnostic information items.
    @required
    diagnostics: ListOf_Diagnostic
}

/// A range in a text document expressed as (zero-based) start and end positions.
/// 
/// If you want to specify a range that contains a line including the line ending
/// character(s) then use an end position denoting the start of the next line.
/// For example:
/// ```ts
/// {
///     start: { line: 5, character: 23 }
///     end : { line 6, character : 0 }
/// }
/// ```
structure Range {
    /// The range's start position.
    @required
    start: Position
    /// The range's end position.
    @required
    end: Position
}

/// Client Capabilities for a {@link ReferencesRequest}.
structure ReferenceClientCapabilities {
    /// Whether references supports dynamic registration.
    dynamicRegistration: Boolean
}

/// Value-object that contains additional information when
/// requesting references.
structure ReferenceContext {
    /// Include the declaration of the current symbol.
    @required
    includeDeclaration: Boolean
}

/// Reference options.
structure ReferenceOptions with [WorkDoneProgressOptions] {}

/// Parameters for a {@link ReferencesRequest}.
structure ReferenceParams {
    @required
    context: ReferenceContext
}

/// Registration options for a {@link ReferencesRequest}.
structure ReferenceRegistrationOptions {}

/// General parameters to register for a notification or to register a provider.
structure Registration {
    /// The id used to register the request. The id can be used to deregister
    /// the request again.
    @required
    id: String
    /// The method / capability to register for.
    @required
    method: String
    /// Options necessary for the registration.
    registerOptions: Document
}

structure RegistrationParams {
    @required
    registrations: ListOf_Registration
}

/// Client capabilities specific to regular expressions.
/// 
/// @since 3.16.0
structure RegularExpressionsClientCapabilities {
    /// The engine's name.
    @required
    engine: RegularExpressionEngineKind
    /// The engine's version.
    version: String
}

/// A full diagnostic report with a set of related documents.
/// 
/// @since 3.17.0
structure RelatedFullDocumentDiagnosticReport {
    /// Diagnostics of related documents. This information is useful
    /// in programming languages where code in a file A can generate
    /// diagnostics in a file B which A depends on. An example of
    /// such a language is C/C++ where marco definitions in a file
    /// a.cpp and result in errors in a header file b.hpp.
    /// 
    /// @since 3.17.0
    relatedDocuments: MapOf_String_to_DocumentDiagnosticReportUnion
}

/// An unchanged diagnostic report with a set of related documents.
/// 
/// @since 3.17.0
structure RelatedUnchangedDocumentDiagnosticReport {
    /// Diagnostics of related documents. This information is useful
    /// in programming languages where code in a file A can generate
    /// diagnostics in a file B which A depends on. An example of
    /// such a language is C/C++ where marco definitions in a file
    /// a.cpp and result in errors in a header file b.hpp.
    /// 
    /// @since 3.17.0
    relatedDocuments: MapOf_String_to_DocumentDiagnosticReportUnion
}

/// A relative pattern is a helper to construct glob patterns that are matched
/// relatively to a base URI. The common value for a `baseUri` is a workspace
/// folder root, but it can be another absolute URI as well.
/// 
/// @since 3.17.0
structure RelativePattern {
    /// A workspace folder or a base URI to which this pattern will be matched
    /// against relatively.
    @required
    baseUri: WorkspaceFolderOrUri
    /// The actual glob pattern;
    @required
    pattern: Pattern
}

structure RenameClientCapabilities {
    /// Whether rename supports dynamic registration.
    dynamicRegistration: Boolean
    /// Client supports testing for validity of rename operations
    /// before execution.
    /// 
    /// @since 3.12.0
    prepareSupport: Boolean
    /// Client supports the default behavior result.
    /// 
    /// The value indicates the default behavior used by the
    /// client.
    /// 
    /// @since 3.16.0
    prepareSupportDefaultBehavior: PrepareSupportDefaultBehavior
    /// Whether the client honors the change annotations in
    /// text edits and resource operations returned via the
    /// rename request's workspace edit by for example presenting
    /// the workspace edit in the user interface and asking
    /// for confirmation.
    /// 
    /// @since 3.16.0
    honorsChangeAnnotations: Boolean
}

/// Rename file operation
structure RenameFile {
    /// A rename
    @required
    kind: String
    /// The old (existing) location.
    @required
    oldUri: String
    /// The new location.
    @required
    newUri: String
    /// Rename options.
    options: RenameFileOptions
}

/// Rename file options
structure RenameFileOptions {
    /// Overwrite target if existing. Overwrite wins over `ignoreIfExists`
    overwrite: Boolean
    /// Ignores if target exists.
    ignoreIfExists: Boolean
}

/// The parameters sent in notifications/requests for user-initiated renames of
/// files.
/// 
/// @since 3.16.0
structure RenameFilesParams {
    /// An array of all files/folders renamed in this operation. When a folder is renamed, only
    /// the folder will be included, and not its children.
    @required
    files: ListOf_FileRename
}

/// Provider options for a {@link RenameRequest}.
structure RenameOptions with [WorkDoneProgressOptions] {
    /// Renames should be checked and tested before being executed.
    /// 
    /// @since version 3.12.0
    prepareProvider: Boolean
}

/// The parameters of a {@link RenameRequest}.
structure RenameParams {
    /// The document to rename.
    @required
    textDocument: TextDocumentIdentifier
    /// The position at which this request was sent.
    @required
    position: Position
    /// The new name of the symbol. If the given name is not valid the
    /// request must return a {@link ResponseError} with an
    /// appropriate message set.
    @required
    newName: String
}

/// Registration options for a {@link RenameRequest}.
structure RenameRegistrationOptions {}

/// A generic resource operation.
structure ResourceOperation {
    /// The resource operation kind.
    @required
    kind: String
    /// An optional annotation identifier describing the operation.
    /// 
    /// @since 3.16.0
    annotationId: ChangeAnnotationIdentifier
}

/// Save options.
structure SaveOptions {
    /// The client is supposed to include the content on save.
    includeText: Boolean
}

/// A selection range represents a part of a selection hierarchy. A selection range
/// may have a parent selection range that contains it.
structure SelectionRange {
    /// The {@link Range range} of this selection range.
    @required
    range: Range
    /// The parent selection range containing this range. Therefore `parent.range` must contain `this.range`.
    parent: SelectionRange
}

structure SelectionRangeClientCapabilities {
    /// Whether implementation supports dynamic registration for selection range providers. If this is set to `true`
    /// the client supports the new `SelectionRangeRegistrationOptions` return value for the corresponding server
    /// capability as well.
    dynamicRegistration: Boolean
}

structure SelectionRangeOptions with [WorkDoneProgressOptions] {}

/// A parameter literal used in selection range requests.
structure SelectionRangeParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
    /// The positions inside the text document.
    @required
    positions: ListOf_Position
}

structure SelectionRangeRegistrationOptions {}

/// @since 3.16.0
structure SemanticTokens {
    /// An optional result id. If provided and clients support delta updating
    /// the client will include the result id in the next semantic token request.
    /// A server can then instead of computing all semantic tokens again simply
    /// send a delta.
    resultId: String
    /// The actual tokens.
    @required
    data: ListOf_Integer
}

/// @since 3.16.0
structure SemanticTokensClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is set to `true`
    /// the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`
    /// return value for the corresponding server capability as well.
    dynamicRegistration: Boolean
    /// Which requests the client supports and might send to the server
    /// depending on the server's capability. Please note that clients might not
    /// show semantic tokens or degrade some of the user experience if a range
    /// or full request is advertised by the client but not provided by the
    /// server. If for example the client capability `requests.full` and
    /// `request.range` are both set to true but the server only provides a
    /// range provider the client might not render a minimap correctly or might
    /// even decide to not show any semantic tokens at all.
    @required
    requests: ClientSemanticTokensRequestOptions
    /// The token types that the client supports.
    @required
    tokenTypes: ListOf_String
    /// The token modifiers that the client supports.
    @required
    tokenModifiers: ListOf_String
    /// The token formats the clients supports.
    @required
    formats: ListOf_TokenFormat
    /// Whether the client supports tokens that can overlap each other.
    overlappingTokenSupport: Boolean
    /// Whether the client supports tokens that can span multiple lines.
    multilineTokenSupport: Boolean
    /// Whether the client allows the server to actively cancel a
    /// semantic token request, e.g. supports returning
    /// LSPErrorCodes.ServerCancelled. If a server does the client
    /// needs to retrigger the request.
    /// 
    /// @since 3.17.0
    serverCancelSupport: Boolean
    /// Whether the client uses semantic tokens to augment existing
    /// syntax tokens. If set to `true` client side created syntax
    /// tokens and semantic tokens are both used for colorization. If
    /// set to `false` the client only uses the returned semantic tokens
    /// for colorization.
    /// 
    /// If the value is `undefined` then the client behavior is not
    /// specified.
    /// 
    /// @since 3.17.0
    augmentsSyntaxTokens: Boolean
}

/// @since 3.16.0
structure SemanticTokensDelta {
    resultId: String
    /// The semantic token edits to transform a previous result into a new result.
    @required
    edits: ListOf_SemanticTokensEdit
}

/// @since 3.16.0
structure SemanticTokensDeltaParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
    /// The result id of a previous response. The result Id can either point to a full response
    /// or a delta response depending on what was received last.
    @required
    previousResultId: String
}

/// @since 3.16.0
structure SemanticTokensDeltaPartialResult {
    @required
    edits: ListOf_SemanticTokensEdit
}

/// @since 3.16.0
structure SemanticTokensEdit {
    /// The start offset of the edit.
    @required
    start: Integer
    /// The count of elements to remove.
    @required
    deleteCount: Integer
    /// The elements to insert.
    data: ListOf_Integer
}

/// Semantic tokens options to support deltas for full documents
/// 
/// @since 3.18.0
structure SemanticTokensFullDelta {
    /// The server supports deltas for full documents.
    delta: Boolean
}

/// @since 3.16.0
structure SemanticTokensLegend {
    /// The token types a server uses.
    @required
    tokenTypes: ListOf_String
    /// The token modifiers a server uses.
    @required
    tokenModifiers: ListOf_String
}

/// @since 3.16.0
structure SemanticTokensOptions with [WorkDoneProgressOptions] {
    /// The legend used by the server
    @required
    legend: SemanticTokensLegend
    /// Server supports providing semantic tokens for a specific range
    /// of a document.
    range: BooleanUnion
    /// Server supports providing semantic tokens for a full document.
    full: BooleanOrSemanticTokensFullDelta
}

/// @since 3.16.0
structure SemanticTokensParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
}

/// @since 3.16.0
structure SemanticTokensPartialResult {
    @required
    data: ListOf_Integer
}

/// @since 3.16.0
structure SemanticTokensRangeParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
    /// The range the semantic tokens are requested for.
    @required
    range: Range
}

/// @since 3.16.0
structure SemanticTokensRegistrationOptions {}

/// @since 3.16.0
structure SemanticTokensWorkspaceClientCapabilities {
    /// Whether the client implementation supports a refresh request sent from
    /// the server to the client.
    /// 
    /// Note that this event is global and will force the client to refresh all
    /// semantic tokens currently shown. It should be used with absolute care
    /// and is useful for situation where a server for example detects a project
    /// wide change that requires such a calculation.
    refreshSupport: Boolean
}

/// Defines the capabilities provided by a language
/// server.
structure ServerCapabilities {
    /// The position encoding the server picked from the encodings offered
    /// by the client via the client capability `general.positionEncodings`.
    /// 
    /// If the client didn't provide any position encodings the only valid
    /// value that a server can return is 'utf-16'.
    /// 
    /// If omitted it defaults to 'utf-16'.
    /// 
    /// @since 3.17.0
    positionEncoding: PositionEncodingKind
    /// Defines how text documents are synced. Is either a detailed structure
    /// defining each notification or for backwards compatibility the
    /// TextDocumentSyncKind number.
    textDocumentSync: TextDocumentSyncUnion
    /// Defines how notebook documents are synced.
    /// 
    /// @since 3.17.0
    notebookDocumentSync: NotebookDocumentSyncOptionsUnion
    /// The server provides completion support.
    completionProvider: CompletionOptions
    /// The server provides hover support.
    hoverProvider: BooleanOrHoverOptions
    /// The server provides signature help support.
    signatureHelpProvider: SignatureHelpOptions
    /// The server provides Goto Declaration support.
    declarationProvider: AnonymousUnion
    /// The server provides goto definition support.
    definitionProvider: BooleanOrDefinitionOptions
    /// The server provides Goto Type Definition support.
    typeDefinitionProvider: AnonymousUnion
    /// The server provides Goto Implementation support.
    implementationProvider: AnonymousUnion
    /// The server provides find references support.
    referencesProvider: BooleanOrReferenceOptions
    /// The server provides document highlight support.
    documentHighlightProvider: BooleanOrDocumentHighlightOptions
    /// The server provides document symbol support.
    documentSymbolProvider: BooleanOrDocumentSymbolOptions
    /// The server provides code actions. CodeActionOptions may only be
    /// specified if the client states that it supports
    /// `codeActionLiteralSupport` in its initial `initialize` request.
    codeActionProvider: BooleanOrCodeActionOptions
    /// The server provides code lens.
    codeLensProvider: CodeLensOptions
    /// The server provides document link support.
    documentLinkProvider: DocumentLinkOptions
    /// The server provides color provider support.
    colorProvider: AnonymousUnion
    /// The server provides workspace symbol support.
    workspaceSymbolProvider: BooleanOrWorkspaceSymbolOptions
    /// The server provides document formatting.
    documentFormattingProvider: BooleanOrDocumentFormattingOptions
    /// The server provides document range formatting.
    documentRangeFormattingProvider: BooleanOrDocumentRangeFormattingOptions
    /// The server provides document formatting on typing.
    documentOnTypeFormattingProvider: DocumentOnTypeFormattingOptions
    /// The server provides rename support. RenameOptions may only be
    /// specified if the client states that it supports
    /// `prepareSupport` in its initial `initialize` request.
    renameProvider: BooleanOrRenameOptions
    /// The server provides folding provider support.
    foldingRangeProvider: AnonymousUnion
    /// The server provides selection range support.
    selectionRangeProvider: AnonymousUnion
    /// The server provides execute command support.
    executeCommandProvider: ExecuteCommandOptions
    /// The server provides call hierarchy support.
    /// 
    /// @since 3.16.0
    callHierarchyProvider: AnonymousUnion
    /// The server provides linked editing range support.
    /// 
    /// @since 3.16.0
    linkedEditingRangeProvider: AnonymousUnion
    /// The server provides semantic tokens support.
    /// 
    /// @since 3.16.0
    semanticTokensProvider: SemanticTokensOptionsUnion
    /// The server provides moniker support.
    /// 
    /// @since 3.16.0
    monikerProvider: AnonymousUnion
    /// The server provides type hierarchy support.
    /// 
    /// @since 3.17.0
    typeHierarchyProvider: AnonymousUnion
    /// The server provides inline values.
    /// 
    /// @since 3.17.0
    inlineValueProvider: AnonymousUnion
    /// The server provides inlay hints.
    /// 
    /// @since 3.17.0
    inlayHintProvider: AnonymousUnion
    /// The server has support for pull model diagnostics.
    /// 
    /// @since 3.17.0
    diagnosticProvider: DiagnosticOptionsUnion
    /// Workspace specific server capabilities.
    workspace: WorkspaceOptions
    /// Experimental server capabilities.
    experimental: Document
}

/// @since 3.18.0
structure ServerCompletionItemOptions {
    /// The server has support for completion item label
    /// details (see also `CompletionItemLabelDetails`) when
    /// receiving a completion item in a resolve call.
    /// 
    /// @since 3.17.0
    labelDetailsSupport: Boolean
}

/// Information about the server
/// 
/// @since 3.15.0
/// @since 3.18.0 ServerInfo type name added.
structure ServerInfo {
    /// The name of the server as defined by the server.
    @required
    name: String
    /// The server's version as defined by the server.
    version: String
}

structure SetTraceInput {
    params: SetTraceParams
}

structure SetTraceParams {
    @required
    value: TraceValue
}

/// Client capabilities for the showDocument request.
/// 
/// @since 3.16.0
structure ShowDocumentClientCapabilities {
    /// The client has support for the showDocument
    /// request.
    @required
    support: Boolean
}

/// Params to show a resource in the UI.
/// 
/// @since 3.16.0
structure ShowDocumentParams {
    /// The uri to show.
    @required
    uri: String
    /// Indicates to show the resource in an external program.
    /// To show, for example, `https://code.visualstudio.com/`
    /// in the default WEB browser set `external` to `true`.
    external: Boolean
    /// An optional property to indicate whether the editor
    /// showing the document should take focus or not.
    /// Clients might ignore this property if an external
    /// program is started.
    takeFocus: Boolean
    /// An optional selection range if the document is a text
    /// document. Clients might ignore the property if an
    /// external program is started or the file is not a text
    /// file.
    selection: Range
}

/// The result of a showDocument request.
/// 
/// @since 3.16.0
structure ShowDocumentResult {
    /// A boolean indicating if the show was successful.
    @required
    success: Boolean
}

/// The parameters of a notification message.
structure ShowMessageParams {
    /// The message type. See {@link MessageType}
    @required
    type: MessageType
    /// The actual message.
    @required
    message: String
}

/// Show message request client capabilities
structure ShowMessageRequestClientCapabilities {
    /// Capabilities specific to the `MessageActionItem` type.
    messageActionItem: ClientShowMessageActionItemOptions
}

structure ShowMessageRequestParams {
    /// The message type. See {@link MessageType}
    @required
    type: MessageType
    /// The actual message.
    @required
    message: String
    /// The message action items to present.
    actions: ListOf_MessageActionItem
}

structure ShutdownOpInput {}

structure ShutdownOpOutput {}

/// Signature help represents the signature of something
/// callable. There can be multiple signature but only one
/// active and only one active parameter.
structure SignatureHelp {
    /// One or more signatures.
    @required
    signatures: ListOf_SignatureInformation
    /// The active signature. If omitted or the value lies outside the
    /// range of `signatures` the value defaults to zero or is ignored if
    /// the `SignatureHelp` has no signatures.
    /// 
    /// Whenever possible implementors should make an active decision about
    /// the active signature and shouldn't rely on a default value.
    /// 
    /// In future version of the protocol this property might become
    /// mandatory to better express this.
    activeSignature: Integer
    /// The active parameter of the active signature.
    /// 
    /// If `null`, no parameter of the signature is active (for example a named
    /// argument that does not match any declared parameters). This is only valid
    /// if the client specifies the client capability
    /// `textDocument.signatureHelp.noActiveParameterSupport === true`
    /// 
    /// If omitted or the value lies outside the range of
    /// `signatures[activeSignature].parameters` defaults to 0 if the active
    /// signature has parameters.
    /// 
    /// If the active signature has no parameters it is ignored.
    /// 
    /// In future version of the protocol this property might become
    /// mandatory (but still nullable) to better express the active parameter if
    /// the active signature does have any.
    activeParameter: UintegerOrNULL
}

/// Client Capabilities for a {@link SignatureHelpRequest}.
structure SignatureHelpClientCapabilities {
    /// Whether signature help supports dynamic registration.
    dynamicRegistration: Boolean
    /// The client supports the following `SignatureInformation`
    /// specific properties.
    signatureInformation: ClientSignatureInformationOptions
    /// The client supports to send additional context information for a
    /// `textDocument/signatureHelp` request. A client that opts into
    /// contextSupport will also support the `retriggerCharacters` on
    /// `SignatureHelpOptions`.
    /// 
    /// @since 3.15.0
    contextSupport: Boolean
}

/// Additional information about the context in which a signature help request was triggered.
/// 
/// @since 3.15.0
structure SignatureHelpContext {
    /// Action that caused signature help to be triggered.
    @required
    triggerKind: SignatureHelpTriggerKind
    /// Character that caused signature help to be triggered.
    /// 
    /// This is undefined when `triggerKind !== SignatureHelpTriggerKind.TriggerCharacter`
    triggerCharacter: String
    /// `true` if signature help was already showing when it was triggered.
    /// 
    /// Retriggers occurs when the signature help is already active and can be caused by actions such as
    /// typing a trigger character, a cursor move, or document content changes.
    @required
    isRetrigger: Boolean
    /// The currently active `SignatureHelp`.
    /// 
    /// The `activeSignatureHelp` has its `SignatureHelp.activeSignature` field updated based on
    /// the user navigating through available signatures.
    activeSignatureHelp: SignatureHelp
}

/// Server Capabilities for a {@link SignatureHelpRequest}.
structure SignatureHelpOptions with [WorkDoneProgressOptions] {
    /// List of characters that trigger signature help automatically.
    triggerCharacters: ListOf_String
    /// List of characters that re-trigger signature help.
    /// 
    /// These trigger characters are only active when signature help is already showing. All trigger characters
    /// are also counted as re-trigger characters.
    /// 
    /// @since 3.15.0
    retriggerCharacters: ListOf_String
}

/// Parameters for a {@link SignatureHelpRequest}.
structure SignatureHelpParams {
    /// The signature help context. This is only available if the client specifies
    /// to send this using the client capability `textDocument.signatureHelp.contextSupport === true`
    /// 
    /// @since 3.15.0
    context: SignatureHelpContext
}

/// Registration options for a {@link SignatureHelpRequest}.
structure SignatureHelpRegistrationOptions {}

/// Represents the signature of something callable. A signature
/// can have a label, like a function-name, a doc-comment, and
/// a set of parameters.
structure SignatureInformation {
    /// The label of this signature. Will be shown in
    /// the UI.
    @required
    label: String
    /// The human-readable doc-comment of this signature. Will be shown
    /// in the UI but can be omitted.
    documentation: StringOrMarkupContent
    /// The parameters of this signature.
    parameters: ListOf_ParameterInformation
    /// The index of the active parameter.
    /// 
    /// If `null`, no parameter of the signature is active (for example a named
    /// argument that does not match any declared parameters). This is only valid
    /// if the client specifies the client capability
    /// `textDocument.signatureHelp.noActiveParameterSupport === true`
    /// 
    /// If provided (or `null`), this is used in place of
    /// `SignatureHelp.activeParameter`.
    /// 
    /// @since 3.16.0
    activeParameter: UintegerOrNULL
}

/// @since 3.18.0
structure StaleRequestSupportOptions {
    /// The client will actively cancel the request.
    @required
    cancel: Boolean
    /// The list of requests for which the client
    /// will retry the request if it receives a
    /// response with error code `ContentModified`
    @required
    retryOnContentModified: ListOf_String
}

/// Static registration options to be returned in the initialize
/// request.
@mixin
structure StaticRegistrationOptions {
    /// The id used to register the request. The id can be used to deregister
    /// the request again. See also Registration#id.
    id: String
}

/// Represents information about programming constructs like variables, classes,
/// interfaces etc.
structure SymbolInformation {
    /// Indicates if this symbol is deprecated.
    /// 
    /// @deprecated Use tags instead
    deprecated: Boolean
    /// The location of this symbol. The location's range is used by a tool
    /// to reveal the location in the editor. If the symbol is selected in the
    /// tool the range's start information is used to position the cursor. So
    /// the range usually spans more than the actual symbol's name and does
    /// normally include things like visibility modifiers.
    /// 
    /// The range doesn't have to denote a node range in the sense of an abstract
    /// syntax tree. It can therefore not be used to re-construct a hierarchy of
    /// the symbols.
    @required
    location: Location
}

structure TelemetryEventInput {
    params: Document
}

/// Describe options to be used when registered for text document change events.
structure TextDocumentChangeRegistrationOptions {
    /// How documents are synced to the server.
    @required
    syncKind: TextDocumentSyncKind
}

/// Text document specific client capabilities.
structure TextDocumentClientCapabilities {
    /// Defines which synchronization capabilities the client supports.
    synchronization: TextDocumentSyncClientCapabilities
    /// Defines which filters the client supports.
    /// 
    /// @since 3.18.0
    filters: TextDocumentFilterClientCapabilities
    /// Capabilities specific to the `textDocument/completion` request.
    completion: CompletionClientCapabilities
    /// Capabilities specific to the `textDocument/hover` request.
    hover: HoverClientCapabilities
    /// Capabilities specific to the `textDocument/signatureHelp` request.
    signatureHelp: SignatureHelpClientCapabilities
    /// Capabilities specific to the `textDocument/declaration` request.
    /// 
    /// @since 3.14.0
    declaration: DeclarationClientCapabilities
    /// Capabilities specific to the `textDocument/definition` request.
    definition: DefinitionClientCapabilities
    /// Capabilities specific to the `textDocument/typeDefinition` request.
    /// 
    /// @since 3.6.0
    typeDefinition: TypeDefinitionClientCapabilities
    /// Capabilities specific to the `textDocument/implementation` request.
    /// 
    /// @since 3.6.0
    implementation: ImplementationClientCapabilities
    /// Capabilities specific to the `textDocument/references` request.
    references: ReferenceClientCapabilities
    /// Capabilities specific to the `textDocument/documentHighlight` request.
    documentHighlight: DocumentHighlightClientCapabilities
    /// Capabilities specific to the `textDocument/documentSymbol` request.
    documentSymbol: DocumentSymbolClientCapabilities
    /// Capabilities specific to the `textDocument/codeAction` request.
    codeAction: CodeActionClientCapabilities
    /// Capabilities specific to the `textDocument/codeLens` request.
    codeLens: CodeLensClientCapabilities
    /// Capabilities specific to the `textDocument/documentLink` request.
    documentLink: DocumentLinkClientCapabilities
    /// Capabilities specific to the `textDocument/documentColor` and the
    /// `textDocument/colorPresentation` request.
    /// 
    /// @since 3.6.0
    colorProvider: DocumentColorClientCapabilities
    /// Capabilities specific to the `textDocument/formatting` request.
    formatting: DocumentFormattingClientCapabilities
    /// Capabilities specific to the `textDocument/rangeFormatting` request.
    rangeFormatting: DocumentRangeFormattingClientCapabilities
    /// Capabilities specific to the `textDocument/onTypeFormatting` request.
    onTypeFormatting: DocumentOnTypeFormattingClientCapabilities
    /// Capabilities specific to the `textDocument/rename` request.
    rename: RenameClientCapabilities
    /// Capabilities specific to the `textDocument/foldingRange` request.
    /// 
    /// @since 3.10.0
    foldingRange: FoldingRangeClientCapabilities
    /// Capabilities specific to the `textDocument/selectionRange` request.
    /// 
    /// @since 3.15.0
    selectionRange: SelectionRangeClientCapabilities
    /// Capabilities specific to the `textDocument/publishDiagnostics` notification.
    publishDiagnostics: PublishDiagnosticsClientCapabilities
    /// Capabilities specific to the various call hierarchy requests.
    /// 
    /// @since 3.16.0
    callHierarchy: CallHierarchyClientCapabilities
    /// Capabilities specific to the various semantic token request.
    /// 
    /// @since 3.16.0
    semanticTokens: SemanticTokensClientCapabilities
    /// Capabilities specific to the `textDocument/linkedEditingRange` request.
    /// 
    /// @since 3.16.0
    linkedEditingRange: LinkedEditingRangeClientCapabilities
    /// Client capabilities specific to the `textDocument/moniker` request.
    /// 
    /// @since 3.16.0
    moniker: MonikerClientCapabilities
    /// Capabilities specific to the various type hierarchy requests.
    /// 
    /// @since 3.17.0
    typeHierarchy: TypeHierarchyClientCapabilities
    /// Capabilities specific to the `textDocument/inlineValue` request.
    /// 
    /// @since 3.17.0
    inlineValue: InlineValueClientCapabilities
    /// Capabilities specific to the `textDocument/inlayHint` request.
    /// 
    /// @since 3.17.0
    inlayHint: InlayHintClientCapabilities
    /// Capabilities specific to the diagnostic pull model.
    /// 
    /// @since 3.17.0
    diagnostic: DiagnosticClientCapabilities
}

structure TextDocumentCodeActionOpInput {
    params: CodeActionParams
}

structure TextDocumentCodeActionOpOutput {
    result: ListOfOrNULL
}

structure TextDocumentCodeLensOpInput {
    params: CodeLensParams
}

structure TextDocumentCodeLensOpOutput {
    result: ListOfCodeLensOrNULL
}

structure TextDocumentColorPresentationOpInput {
    params: ColorPresentationParams
}

structure TextDocumentColorPresentationOpOutput {
    result: ListOf_ColorPresentation
}

structure TextDocumentCompletionOpInput {
    params: CompletionParams
}

structure TextDocumentCompletionOpOutput {
    result: AnonymousUnion
}

/// @since 3.18.0
structure TextDocumentContentChangePartial {
    /// The range of the document that changed.
    @required
    range: Range
    /// The optional length of the range that got replaced.
    /// 
    /// @deprecated use range instead.
    rangeLength: Integer
    /// The new text for the provided range.
    @required
    text: String
}

/// @since 3.18.0
structure TextDocumentContentChangeWholeDocument {
    /// The new text of the whole document.
    @required
    text: String
}

structure TextDocumentDeclarationOpInput {
    params: DeclarationParams
}

structure TextDocumentDeclarationOpOutput {
    result: AnonymousUnion
}

structure TextDocumentDefinitionOpInput {
    params: DefinitionParams
}

structure TextDocumentDefinitionOpOutput {
    result: AnonymousUnion
}

structure TextDocumentDiagnosticOpInput {
    params: DocumentDiagnosticParams
}

structure TextDocumentDiagnosticOpOutput {
    result: DocumentDiagnosticReport
}

structure TextDocumentDidChangeInput {
    params: DidChangeTextDocumentParams
}

structure TextDocumentDidCloseInput {
    params: DidCloseTextDocumentParams
}

structure TextDocumentDidOpenInput {
    params: DidOpenTextDocumentParams
}

structure TextDocumentDidSaveInput {
    params: DidSaveTextDocumentParams
}

structure TextDocumentDocumentColorOpInput {
    params: DocumentColorParams
}

structure TextDocumentDocumentColorOpOutput {
    result: ListOf_ColorInformation
}

structure TextDocumentDocumentHighlightOpInput {
    params: DocumentHighlightParams
}

structure TextDocumentDocumentHighlightOpOutput {
    result: ListOfDocumentHighlightOrNULL
}

structure TextDocumentDocumentLinkOpInput {
    params: DocumentLinkParams
}

structure TextDocumentDocumentLinkOpOutput {
    result: ListOfDocumentLinkOrNULL
}

structure TextDocumentDocumentSymbolOpInput {
    params: DocumentSymbolParams
}

structure TextDocumentDocumentSymbolOpOutput {
    result: AnonymousUnion
}

/// Describes textual changes on a text document. A TextDocumentEdit describes all changes
/// on a document version Si and after they are applied move the document to version Si+1.
/// So the creator of a TextDocumentEdit doesn't need to sort the array of edits or do any
/// kind of ordering. However the edits must be non overlapping.
structure TextDocumentEdit {
    /// The text document to change.
    @required
    textDocument: OptionalVersionedTextDocumentIdentifier
    /// The edits to be applied.
    /// 
    /// @since 3.16.0 - support for AnnotatedTextEdit. This is guarded using a
    /// client capability.
    /// 
    /// @since 3.18.0 - support for SnippetTextEdit. This is guarded using a
    /// client capability.
    @required
    edits: ListOf_TextEditUnion
}

structure TextDocumentFilterClientCapabilities {
    /// The client supports Relative Patterns.
    /// 
    /// @since 3.18.0
    relativePatternSupport: Boolean
}

/// A document filter where `language` is required field.
/// 
/// @since 3.18.0
structure TextDocumentFilterLanguage {
    /// A language id, like `typescript`.
    @required
    language: String
    /// A Uri {@link Uri.scheme scheme}, like `file` or `untitled`.
    scheme: String
    /// A glob pattern, like **​/*.{ts,js}. See TextDocumentFilter for examples.
    /// 
    /// @since 3.18.0 - support for relative patterns. Whether clients support
    /// relative patterns depends on the client capability
    /// `textDocuments.filters.relativePatternSupport`.
    pattern: GlobPattern
}

/// A document filter where `pattern` is required field.
/// 
/// @since 3.18.0
structure TextDocumentFilterPattern {
    /// A language id, like `typescript`.
    language: String
    /// A Uri {@link Uri.scheme scheme}, like `file` or `untitled`.
    scheme: String
    /// A glob pattern, like **​/*.{ts,js}. See TextDocumentFilter for examples.
    /// 
    /// @since 3.18.0 - support for relative patterns. Whether clients support
    /// relative patterns depends on the client capability
    /// `textDocuments.filters.relativePatternSupport`.
    @required
    pattern: GlobPattern
}

/// A document filter where `scheme` is required field.
/// 
/// @since 3.18.0
structure TextDocumentFilterScheme {
    /// A language id, like `typescript`.
    language: String
    /// A Uri {@link Uri.scheme scheme}, like `file` or `untitled`.
    @required
    scheme: String
    /// A glob pattern, like **​/*.{ts,js}. See TextDocumentFilter for examples.
    /// 
    /// @since 3.18.0 - support for relative patterns. Whether clients support
    /// relative patterns depends on the client capability
    /// `textDocuments.filters.relativePatternSupport`.
    pattern: GlobPattern
}

structure TextDocumentFoldingRangeOpInput {
    params: FoldingRangeParams
}

structure TextDocumentFoldingRangeOpOutput {
    result: ListOfFoldingRangeOrNULL
}

structure TextDocumentFormattingOpInput {
    params: DocumentFormattingParams
}

structure TextDocumentFormattingOpOutput {
    result: ListOfTextEditOrNULL
}

structure TextDocumentHoverOpInput {
    params: HoverParams
}

structure TextDocumentHoverOpOutput {
    result: HoverOrNULL
}

/// A literal to identify a text document in the client.
structure TextDocumentIdentifier {
    /// The text document's uri.
    @required
    uri: String
}

structure TextDocumentImplementationOpInput {
    params: ImplementationParams
}

structure TextDocumentImplementationOpOutput {
    result: AnonymousUnion
}

structure TextDocumentInlayHintOpInput {
    params: InlayHintParams
}

structure TextDocumentInlayHintOpOutput {
    result: ListOfInlayHintOrNULL
}

structure TextDocumentInlineValueOpInput {
    params: InlineValueParams
}

structure TextDocumentInlineValueOpOutput {
    result: ListOfInlineValueOrNULL
}

/// An item to transfer a text document from the client to the
/// server.
structure TextDocumentItem {
    /// The text document's uri.
    @required
    uri: String
    /// The text document's language identifier.
    @required
    languageId: LanguageKind
    /// The version number of this document (it will increase after each
    /// change, including undo/redo).
    @required
    version: Integer
    /// The content of the opened text document.
    @required
    text: String
}

structure TextDocumentLinkedEditingRangeOpInput {
    params: LinkedEditingRangeParams
}

structure TextDocumentLinkedEditingRangeOpOutput {
    result: LinkedEditingRangesOrNULL
}

structure TextDocumentMonikerOpInput {
    params: MonikerParams
}

structure TextDocumentMonikerOpOutput {
    result: ListOfMonikerOrNULL
}

structure TextDocumentOnTypeFormattingOpInput {
    params: DocumentOnTypeFormattingParams
}

structure TextDocumentOnTypeFormattingOpOutput {
    result: ListOfTextEditOrNULL
}

/// A parameter literal used in requests to pass a text document and a position inside that
/// document.
structure TextDocumentPositionParams {
    /// The text document.
    @required
    textDocument: TextDocumentIdentifier
    /// The position inside the text document.
    @required
    position: Position
}

structure TextDocumentPrepareCallHierarchyOpInput {
    params: CallHierarchyPrepareParams
}

structure TextDocumentPrepareCallHierarchyOpOutput {
    result: ListOfCallHierarchyItemOrNULL
}

structure TextDocumentPrepareRenameOpInput {
    params: PrepareRenameParams
}

structure TextDocumentPrepareRenameOpOutput {
    result: PrepareRenameResultOrNULL
}

structure TextDocumentPrepareTypeHierarchyOpInput {
    params: TypeHierarchyPrepareParams
}

structure TextDocumentPrepareTypeHierarchyOpOutput {
    result: ListOfTypeHierarchyItemOrNULL
}

structure TextDocumentPublishDiagnosticsInput {
    params: PublishDiagnosticsParams
}

structure TextDocumentRangeFormattingOpInput {
    params: DocumentRangeFormattingParams
}

structure TextDocumentRangeFormattingOpOutput {
    result: ListOfTextEditOrNULL
}

structure TextDocumentReferencesOpInput {
    params: ReferenceParams
}

structure TextDocumentReferencesOpOutput {
    result: ListOfLocationOrNULL
}

/// General text document registration options.
structure TextDocumentRegistrationOptions {
    /// A document selector to identify the scope of the registration. If set to null
    /// the document selector provided on the client side will be used.
    @required
    documentSelector: DocumentSelectorOrNULL
}

structure TextDocumentRenameOpInput {
    params: RenameParams
}

structure TextDocumentRenameOpOutput {
    result: WorkspaceEditOrNULL
}

/// Save registration options.
structure TextDocumentSaveRegistrationOptions {}

structure TextDocumentSelectionRangeOpInput {
    params: SelectionRangeParams
}

structure TextDocumentSelectionRangeOpOutput {
    result: ListOfSelectionRangeOrNULL
}

structure TextDocumentSemanticTokensFullDeltaOpInput {
    params: SemanticTokensDeltaParams
}

structure TextDocumentSemanticTokensFullDeltaOpOutput {
    result: AnonymousUnion
}

structure TextDocumentSemanticTokensFullOpInput {
    params: SemanticTokensParams
}

structure TextDocumentSemanticTokensFullOpOutput {
    result: SemanticTokensOrNULL
}

structure TextDocumentSemanticTokensRangeOpInput {
    params: SemanticTokensRangeParams
}

structure TextDocumentSemanticTokensRangeOpOutput {
    result: SemanticTokensOrNULL
}

structure TextDocumentSignatureHelpOpInput {
    params: SignatureHelpParams
}

structure TextDocumentSignatureHelpOpOutput {
    result: SignatureHelpOrNULL
}

structure TextDocumentSyncClientCapabilities {
    /// Whether text document synchronization supports dynamic registration.
    dynamicRegistration: Boolean
    /// The client supports sending will save notifications.
    willSave: Boolean
    /// The client supports sending a will save request and
    /// waits for a response providing text edits which will
    /// be applied to the document before it is saved.
    willSaveWaitUntil: Boolean
    /// The client supports did save notifications.
    didSave: Boolean
}

structure TextDocumentSyncOptions {
    /// Open and close notifications are sent to the server. If omitted open close notification should not
    /// be sent.
    openClose: Boolean
    /// Change notifications are sent to the server. See TextDocumentSyncKind.None, TextDocumentSyncKind.Full
    /// and TextDocumentSyncKind.Incremental. If omitted it defaults to TextDocumentSyncKind.None.
    change: TextDocumentSyncKind
    /// If present will save notifications are sent to the server. If omitted the notification should not be
    /// sent.
    willSave: Boolean
    /// If present will save wait until requests are sent to the server. If omitted the request should not be
    /// sent.
    willSaveWaitUntil: Boolean
    /// If present save notifications are sent to the server. If omitted the notification should not be
    /// sent.
    save: BooleanOrSaveOptions
}

structure TextDocumentTypeDefinitionOpInput {
    params: TypeDefinitionParams
}

structure TextDocumentTypeDefinitionOpOutput {
    result: AnonymousUnion
}

structure TextDocumentWillSaveInput {
    params: WillSaveTextDocumentParams
}

structure TextDocumentWillSaveWaitUntilOpInput {
    params: WillSaveTextDocumentParams
}

structure TextDocumentWillSaveWaitUntilOpOutput {
    result: ListOfTextEditOrNULL
}

/// A text edit applicable to a text document.
structure TextEdit {
    /// The range of the text document to be manipulated. To insert
    /// text into a document create a range where start === end.
    @required
    range: Range
    /// The string to be inserted. For delete operations use an
    /// empty string.
    @required
    newText: String
}

/// Since 3.6.0
structure TypeDefinitionClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is set to `true`
    /// the client supports the new `TypeDefinitionRegistrationOptions` return value
    /// for the corresponding server capability as well.
    dynamicRegistration: Boolean
    /// The client supports additional metadata in the form of definition links.
    /// 
    /// Since 3.14.0
    linkSupport: Boolean
}

structure TypeDefinitionOptions with [WorkDoneProgressOptions] {}

structure TypeDefinitionParams {}

structure TypeDefinitionRegistrationOptions {}

/// @since 3.17.0
structure TypeHierarchyClientCapabilities {
    /// Whether implementation supports dynamic registration. If this is set to `true`
    /// the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`
    /// return value for the corresponding server capability as well.
    dynamicRegistration: Boolean
}

/// @since 3.17.0
structure TypeHierarchyItem {
    /// The name of this item.
    @required
    name: String
    /// The kind of this item.
    @required
    kind: SymbolKind
    /// Tags for this item.
    tags: ListOf_SymbolTag
    /// More detail for this item, e.g. the signature of a function.
    detail: String
    /// The resource identifier of this item.
    @required
    uri: String
    /// The range enclosing this symbol not including leading/trailing whitespace
    /// but everything else, e.g. comments and code.
    @required
    range: Range
    /// The range that should be selected and revealed when this symbol is being
    /// picked, e.g. the name of a function. Must be contained by the
    /// {@link TypeHierarchyItem.range `range`}.
    @required
    selectionRange: Range
    /// A data entry field that is preserved between a type hierarchy prepare and
    /// supertypes or subtypes requests. It could also be used to identify the
    /// type hierarchy in the server, helping improve the performance on
    /// resolving supertypes and subtypes.
    data: Document
}

/// Type hierarchy options used during static registration.
/// 
/// @since 3.17.0
structure TypeHierarchyOptions with [WorkDoneProgressOptions] {}

/// The parameter of a `textDocument/prepareTypeHierarchy` request.
/// 
/// @since 3.17.0
structure TypeHierarchyPrepareParams {}

/// Type hierarchy options used during static or dynamic registration.
/// 
/// @since 3.17.0
structure TypeHierarchyRegistrationOptions {}

structure TypeHierarchySubtypesOpInput {
    params: TypeHierarchySubtypesParams
}

structure TypeHierarchySubtypesOpOutput {
    result: ListOfTypeHierarchyItemOrNULL
}

/// The parameter of a `typeHierarchy/subtypes` request.
/// 
/// @since 3.17.0
structure TypeHierarchySubtypesParams {
    @required
    item: TypeHierarchyItem
}

structure TypeHierarchySupertypesOpInput {
    params: TypeHierarchySupertypesParams
}

structure TypeHierarchySupertypesOpOutput {
    result: ListOfTypeHierarchyItemOrNULL
}

/// The parameter of a `typeHierarchy/supertypes` request.
/// 
/// @since 3.17.0
structure TypeHierarchySupertypesParams {
    @required
    item: TypeHierarchyItem
}

/// A diagnostic report indicating that the last returned
/// report is still accurate.
/// 
/// @since 3.17.0
structure UnchangedDocumentDiagnosticReport {
    /// A document diagnostic report indicating
    /// no changes to the last result. A server can
    /// only return `unchanged` if result ids are
    /// provided.
    @required
    kind: String
    /// A result id which will be sent on the next
    /// diagnostic request for the same document.
    @required
    resultId: String
}

/// General parameters to unregister a request or notification.
structure Unregistration {
    /// The id used to unregister the request or notification. Usually an id
    /// provided during the register request.
    @required
    id: String
    /// The method to unregister for.
    @required
    method: String
}

structure UnregistrationParams {
    @required
    unregisterations: ListOf_Unregistration
}

/// A versioned notebook document identifier.
/// 
/// @since 3.17.0
structure VersionedNotebookDocumentIdentifier {
    /// The version number of this notebook document.
    @required
    version: Integer
    /// The notebook document's uri.
    @required
    uri: String
}

/// A text document identifier to denote a specific version of a text document.
structure VersionedTextDocumentIdentifier {
    /// The version number of this document.
    @required
    version: Integer
}

/// The parameters sent in a will save text document notification.
structure WillSaveTextDocumentParams {
    /// The document that will be saved.
    @required
    textDocument: TextDocumentIdentifier
    /// The 'TextDocumentSaveReason'.
    @required
    reason: TextDocumentSaveReason
}

structure WindowClientCapabilities {
    /// It indicates whether the client supports server initiated
    /// progress using the `window/workDoneProgress/create` request.
    /// 
    /// The capability also controls Whether client supports handling
    /// of progress notifications. If set servers are allowed to report a
    /// `workDoneProgress` property in the request specific server
    /// capabilities.
    /// 
    /// @since 3.15.0
    workDoneProgress: Boolean
    /// Capabilities specific to the showMessage request.
    /// 
    /// @since 3.16.0
    showMessage: ShowMessageRequestClientCapabilities
    /// Capabilities specific to the showDocument request.
    /// 
    /// @since 3.16.0
    showDocument: ShowDocumentClientCapabilities
}

structure WindowLogMessageInput {
    params: LogMessageParams
}

structure WindowShowDocumentOpInput {
    params: ShowDocumentParams
}

structure WindowShowDocumentOpOutput {
    result: ShowDocumentResult
}

structure WindowShowMessageInput {
    params: ShowMessageParams
}

structure WindowShowMessageRequestOpInput {
    params: ShowMessageRequestParams
}

structure WindowShowMessageRequestOpOutput {
    result: MessageActionItemOrNULL
}

structure WindowWorkDoneProgressCancelInput {
    params: WorkDoneProgressCancelParams
}

structure WindowWorkDoneProgressCreateOpInput {
    params: WorkDoneProgressCreateParams
}

structure WindowWorkDoneProgressCreateOpOutput {}

structure WorkDoneProgressBegin {
    @required
    kind: String
    /// Mandatory title of the progress operation. Used to briefly inform about
    /// the kind of operation being performed.
    /// 
    /// Examples: "Indexing" or "Linking dependencies".
    @required
    title: String
    /// Controls if a cancel button should show to allow the user to cancel the
    /// long running operation. Clients that don't support cancellation are allowed
    /// to ignore the setting.
    cancellable: Boolean
    /// Optional, more detailed associated progress message. Contains
    /// complementary information to the `title`.
    /// 
    /// Examples: "3/25 files", "project/src/module2", "node_modules/some_dep".
    /// If unset, the previous progress message (if any) is still valid.
    message: String
    /// Optional progress percentage to display (value 100 is considered 100%).
    /// If not provided infinite progress is assumed and clients are allowed
    /// to ignore the `percentage` value in subsequent in report notifications.
    /// 
    /// The value should be steadily rising. Clients are free to ignore values
    /// that are not following this rule. The value range is [0, 100].
    percentage: Integer
}

structure WorkDoneProgressCancelParams {
    /// The token to be used to report progress.
    @required
    token: ProgressToken
}

structure WorkDoneProgressCreateParams {
    /// The token to be used to report progress.
    @required
    token: ProgressToken
}

structure WorkDoneProgressEnd {
    @required
    kind: String
    /// Optional, a final message indicating to for example indicate the outcome
    /// of the operation.
    message: String
}

@mixin
structure WorkDoneProgressOptions {
    workDoneProgress: Boolean
}

@mixin
structure WorkDoneProgressParams {
    /// An optional token that a server can use to report work done progress.
    workDoneToken: ProgressToken
}

structure WorkDoneProgressReport {
    @required
    kind: String
    /// Controls enablement state of a cancel button.
    /// 
    /// Clients that don't support cancellation or don't support controlling the button's
    /// enablement state are allowed to ignore the property.
    cancellable: Boolean
    /// Optional, more detailed associated progress message. Contains
    /// complementary information to the `title`.
    /// 
    /// Examples: "3/25 files", "project/src/module2", "node_modules/some_dep".
    /// If unset, the previous progress message (if any) is still valid.
    message: String
    /// Optional progress percentage to display (value 100 is considered 100%).
    /// If not provided infinite progress is assumed and clients are allowed
    /// to ignore the `percentage` value in subsequent in report notifications.
    /// 
    /// The value should be steadily rising. Clients are free to ignore values
    /// that are not following this rule. The value range is [0, 100]
    percentage: Integer
}

structure WorkspaceApplyEditOpInput {
    params: ApplyWorkspaceEditParams
}

structure WorkspaceApplyEditOpOutput {
    result: ApplyWorkspaceEditResult
}

/// Workspace specific client capabilities.
structure WorkspaceClientCapabilities {
    /// The client supports applying batch edits
    /// to the workspace by supporting the request
    /// 'workspace/applyEdit'
    applyEdit: Boolean
    /// Capabilities specific to `WorkspaceEdit`s.
    workspaceEdit: WorkspaceEditClientCapabilities
    /// Capabilities specific to the `workspace/didChangeConfiguration` notification.
    didChangeConfiguration: DidChangeConfigurationClientCapabilities
    /// Capabilities specific to the `workspace/didChangeWatchedFiles` notification.
    didChangeWatchedFiles: DidChangeWatchedFilesClientCapabilities
    /// Capabilities specific to the `workspace/symbol` request.
    symbol: WorkspaceSymbolClientCapabilities
    /// Capabilities specific to the `workspace/executeCommand` request.
    executeCommand: ExecuteCommandClientCapabilities
    /// The client has support for workspace folders.
    /// 
    /// @since 3.6.0
    workspaceFolders: Boolean
    /// The client supports `workspace/configuration` requests.
    /// 
    /// @since 3.6.0
    configuration: Boolean
    /// Capabilities specific to the semantic token requests scoped to the
    /// workspace.
    /// 
    /// @since 3.16.0.
    semanticTokens: SemanticTokensWorkspaceClientCapabilities
    /// Capabilities specific to the code lens requests scoped to the
    /// workspace.
    /// 
    /// @since 3.16.0.
    codeLens: CodeLensWorkspaceClientCapabilities
    /// The client has support for file notifications/requests for user operations on files.
    /// 
    /// Since 3.16.0
    fileOperations: FileOperationClientCapabilities
    /// Capabilities specific to the inline values requests scoped to the
    /// workspace.
    /// 
    /// @since 3.17.0.
    inlineValue: InlineValueWorkspaceClientCapabilities
    /// Capabilities specific to the inlay hint requests scoped to the
    /// workspace.
    /// 
    /// @since 3.17.0.
    inlayHint: InlayHintWorkspaceClientCapabilities
    /// Capabilities specific to the diagnostic requests scoped to the
    /// workspace.
    /// 
    /// @since 3.17.0.
    diagnostics: DiagnosticWorkspaceClientCapabilities
}

structure WorkspaceCodeLensRefreshOpInput {}

structure WorkspaceCodeLensRefreshOpOutput {}

structure WorkspaceConfigurationOpInput {
    params: ConfigurationParams
}

structure WorkspaceConfigurationOpOutput {
    result: ListOf_Document
}

structure WorkspaceDiagnosticOpInput {
    params: WorkspaceDiagnosticParams
}

structure WorkspaceDiagnosticOpOutput {
    result: WorkspaceDiagnosticReport
}

/// Parameters of the workspace diagnostic request.
/// 
/// @since 3.17.0
structure WorkspaceDiagnosticParams {
    /// The additional identifier provided during registration.
    identifier: String
    /// The currently known diagnostic reports with their
    /// previous result ids.
    @required
    previousResultIds: ListOf_PreviousResultId
}

structure WorkspaceDiagnosticRefreshOpInput {}

structure WorkspaceDiagnosticRefreshOpOutput {}

/// A workspace diagnostic report.
/// 
/// @since 3.17.0
structure WorkspaceDiagnosticReport {
    @required
    items: ListOf_WorkspaceDocumentDiagnosticReport
}

/// A partial result for a workspace diagnostic report.
/// 
/// @since 3.17.0
structure WorkspaceDiagnosticReportPartialResult {
    @required
    items: ListOf_WorkspaceDocumentDiagnosticReport
}

structure WorkspaceDidChangeConfigurationInput {
    params: DidChangeConfigurationParams
}

structure WorkspaceDidChangeWatchedFilesInput {
    params: DidChangeWatchedFilesParams
}

structure WorkspaceDidChangeWorkspaceFoldersInput {
    params: DidChangeWorkspaceFoldersParams
}

structure WorkspaceDidCreateFilesInput {
    params: CreateFilesParams
}

structure WorkspaceDidDeleteFilesInput {
    params: DeleteFilesParams
}

structure WorkspaceDidRenameFilesInput {
    params: RenameFilesParams
}

/// A workspace edit represents changes to many resources managed in the workspace. The edit
/// should either provide `changes` or `documentChanges`. If documentChanges are present
/// they are preferred over `changes` if the client can handle versioned document edits.
/// 
/// Since version 3.13.0 a workspace edit can contain resource operations as well. If resource
/// operations are present clients need to execute the operations in the order in which they
/// are provided. So a workspace edit for example can consist of the following two changes:
/// (1) a create file a.txt and (2) a text document edit which insert text into file a.txt.
/// 
/// An invalid sequence (e.g. (1) delete file a.txt and (2) insert text into file a.txt) will
/// cause failure of the operation. How the client recovers from the failure is described by
/// the client capability: `workspace.workspaceEdit.failureHandling`
structure WorkspaceEdit {
    /// Holds changes to existing resources.
    changes: MapOf_String_to_ListOf_TextEdit
    /// Depending on the client capability `workspace.workspaceEdit.resourceOperations` document changes
    /// are either an array of `TextDocumentEdit`s to express changes to n different text documents
    /// where each text document edit addresses a specific version of a text document. Or it can contain
    /// above `TextDocumentEdit`s mixed with create, rename and delete file / folder operations.
    /// 
    /// Whether a client supports versioned document edits is expressed via
    /// `workspace.workspaceEdit.documentChanges` client capability.
    /// 
    /// If a client neither supports `documentChanges` nor `workspace.workspaceEdit.resourceOperations` then
    /// only plain `TextEdit`s using the `changes` property are supported.
    documentChanges: ListOf_AnonymousUnion
    /// A map of change annotations that can be referenced in `AnnotatedTextEdit`s or create, rename and
    /// delete file / folder operations.
    /// 
    /// Whether clients honor this property depends on the client capability `workspace.changeAnnotationSupport`.
    /// 
    /// @since 3.16.0
    changeAnnotations: MapOf_ChangeAnnotationIdentifier_to_ChangeAnnotation
}

structure WorkspaceEditClientCapabilities {
    /// The client supports versioned document changes in `WorkspaceEdit`s
    documentChanges: Boolean
    /// The resource operations the client supports. Clients should at least
    /// support 'create', 'rename' and 'delete' files and folders.
    /// 
    /// @since 3.13.0
    resourceOperations: ListOf_ResourceOperationKind
    /// The failure handling strategy of a client if applying the workspace edit
    /// fails.
    /// 
    /// @since 3.13.0
    failureHandling: FailureHandlingKind
    /// Whether the client normalizes line endings to the client specific
    /// setting.
    /// If set to `true` the client will normalize line ending characters
    /// in a workspace edit to the client-specified new line
    /// character.
    /// 
    /// @since 3.16.0
    normalizesLineEndings: Boolean
    /// Whether the client in general supports change annotations on text edits,
    /// create file, rename file and delete file changes.
    /// 
    /// @since 3.16.0
    changeAnnotationSupport: ChangeAnnotationsSupportOptions
}

structure WorkspaceExecuteCommandOpInput {
    params: ExecuteCommandParams
}

structure WorkspaceExecuteCommandOpOutput {
    result: LUnion
}

/// A workspace folder inside a client.
structure WorkspaceFolder {
    /// The associated URI for this workspace folder.
    @required
    uri: String
    /// The name of the workspace folder. Used to refer to this
    /// workspace folder in the user interface.
    @required
    name: String
}

/// The workspace folder change event.
structure WorkspaceFoldersChangeEvent {
    /// The array of added workspace folders
    @required
    added: ListOf_WorkspaceFolder
    /// The array of the removed workspace folders
    @required
    removed: ListOf_WorkspaceFolder
}

structure WorkspaceFoldersInitializeParams {
    /// The workspace folders configured in the client when the server starts.
    /// 
    /// This property is only available if the client supports workspace folders.
    /// It can be `null` if the client supports workspace folders but none are
    /// configured.
    /// 
    /// @since 3.6.0
    workspaceFolders: ListOfWorkspaceFolderOrNULL
}

structure WorkspaceFoldersServerCapabilities {
    /// The server has support for workspace folders
    supported: Boolean
    /// Whether the server wants to receive workspace folder
    /// change notifications.
    /// 
    /// If a string is provided the string is treated as an ID
    /// under which the notification is registered on the client
    /// side. The ID can be used to unregister for these events
    /// using the `client/unregisterCapability` request.
    changeNotifications: StringOrBoolean
}

/// A full document diagnostic report for a workspace diagnostic result.
/// 
/// @since 3.17.0
structure WorkspaceFullDocumentDiagnosticReport {
    /// The URI for which diagnostic information is reported.
    @required
    uri: String
    /// The version number for which the diagnostics are reported.
    /// If the document is not marked as open `null` can be provided.
    @required
    version: IntegerOrNULL
}

structure WorkspaceInlayHintRefreshOpInput {}

structure WorkspaceInlayHintRefreshOpOutput {}

structure WorkspaceInlineValueRefreshOpInput {}

structure WorkspaceInlineValueRefreshOpOutput {}

/// Defines workspace specific capabilities of the server.
/// 
/// @since 3.18.0
structure WorkspaceOptions {
    /// The server supports workspace folder.
    /// 
    /// @since 3.6.0
    workspaceFolders: WorkspaceFoldersServerCapabilities
    /// The server is interested in notifications/requests for operations on files.
    /// 
    /// @since 3.16.0
    fileOperations: FileOperationOptions
}

structure WorkspaceSemanticTokensRefreshOpInput {}

structure WorkspaceSemanticTokensRefreshOpOutput {}

/// A special workspace symbol that supports locations without a range.
/// 
/// See also SymbolInformation.
/// 
/// @since 3.17.0
structure WorkspaceSymbol {
    /// The location of the symbol. Whether a server is allowed to
    /// return a location without a range depends on the client
    /// capability `workspace.symbol.resolveSupport`.
    /// 
    /// See SymbolInformation#location for more details.
    @required
    location: LocationUnion
    /// A data entry field that is preserved on a workspace symbol between a
    /// workspace symbol request and a workspace symbol resolve request.
    data: Document
}

/// Client capabilities for a {@link WorkspaceSymbolRequest}.
structure WorkspaceSymbolClientCapabilities {
    /// Symbol request supports dynamic registration.
    dynamicRegistration: Boolean
    /// Specific capabilities for the `SymbolKind` in the `workspace/symbol` request.
    symbolKind: ClientSymbolKindOptions
    /// The client supports tags on `SymbolInformation`.
    /// Clients supporting tags have to handle unknown tags gracefully.
    /// 
    /// @since 3.16.0
    tagSupport: ClientSymbolTagOptions
    /// The client support partial workspace symbols. The client will send the
    /// request `workspaceSymbol/resolve` to the server to resolve additional
    /// properties.
    /// 
    /// @since 3.17.0
    resolveSupport: ClientSymbolResolveOptions
}

structure WorkspaceSymbolOpInput {
    params: WorkspaceSymbolParams
}

structure WorkspaceSymbolOpOutput {
    result: AnonymousUnion
}

/// Server capabilities for a {@link WorkspaceSymbolRequest}.
structure WorkspaceSymbolOptions with [WorkDoneProgressOptions] {
    /// The server provides support to resolve additional
    /// information for a workspace symbol.
    /// 
    /// @since 3.17.0
    resolveProvider: Boolean
}

/// The parameters of a {@link WorkspaceSymbolRequest}.
structure WorkspaceSymbolParams {
    /// A query string to filter symbols by. Clients may send an empty
    /// string here to request all symbols.
    /// 
    /// The `query`-parameter should be interpreted in a *relaxed way* as editors
    /// will apply their own highlighting and scoring on the results. A good rule
    /// of thumb is to match case-insensitive and to simply check that the
    /// characters of *query* appear in their order in a candidate symbol.
    /// Servers shouldn't use prefix, substring, or similar strict matching.
    @required
    query: String
}

/// Registration options for a {@link WorkspaceSymbolRequest}.
structure WorkspaceSymbolRegistrationOptions {}

structure WorkspaceSymbolResolveOpInput {
    params: WorkspaceSymbol
}

structure WorkspaceSymbolResolveOpOutput {
    result: WorkspaceSymbol
}

/// An unchanged document diagnostic report for a workspace diagnostic result.
/// 
/// @since 3.17.0
structure WorkspaceUnchangedDocumentDiagnosticReport {
    /// The URI for which diagnostic information is reported.
    @required
    uri: String
    /// The version number for which the diagnostics are reported.
    /// If the document is not marked as open `null` can be provided.
    @required
    version: IntegerOrNULL
}

structure WorkspaceWillCreateFilesOpInput {
    params: CreateFilesParams
}

structure WorkspaceWillCreateFilesOpOutput {
    result: WorkspaceEditOrNULL
}

structure WorkspaceWillDeleteFilesOpInput {
    params: DeleteFilesParams
}

structure WorkspaceWillDeleteFilesOpOutput {
    result: WorkspaceEditOrNULL
}

structure WorkspaceWillRenameFilesOpInput {
    params: RenameFilesParams
}

structure WorkspaceWillRenameFilesOpOutput {
    result: WorkspaceEditOrNULL
}

structure WorkspaceWorkspaceFoldersOpInput {}

structure WorkspaceWorkspaceFoldersOpOutput {
    result: ListOfWorkspaceFolderOrNULL
}

union AnonymousUnion {
    case0: Range
    case1: PrepareRenamePlaceholder
    case2: PrepareRenameDefaultBehavior
}

union BooleanOrClientSemanticTokensRequestFullDelta {
    case0: Boolean
    case1: ClientSemanticTokensRequestFullDelta
}

union BooleanOrCodeActionOptions {
    case0: Boolean
    case1: CodeActionOptions
}

union BooleanOrDefinitionOptions {
    case0: Boolean
    case1: DefinitionOptions
}

union BooleanOrDocumentFormattingOptions {
    case0: Boolean
    case1: DocumentFormattingOptions
}

union BooleanOrDocumentHighlightOptions {
    case0: Boolean
    case1: DocumentHighlightOptions
}

union BooleanOrDocumentRangeFormattingOptions {
    case0: Boolean
    case1: DocumentRangeFormattingOptions
}

union BooleanOrDocumentSymbolOptions {
    case0: Boolean
    case1: DocumentSymbolOptions
}

union BooleanOrHoverOptions {
    case0: Boolean
    case1: HoverOptions
}

union BooleanOrReferenceOptions {
    case0: Boolean
    case1: ReferenceOptions
}

union BooleanOrRenameOptions {
    case0: Boolean
    case1: RenameOptions
}

union BooleanOrSaveOptions {
    case0: Boolean
    case1: SaveOptions
}

union BooleanOrSemanticTokensFullDelta {
    case0: Boolean
    case1: SemanticTokensFullDelta
}

union BooleanOrWorkspaceSymbolOptions {
    case0: Boolean
    case1: WorkspaceSymbolOptions
}

union BooleanUnion {
    case0: Boolean
    case1: InlineStruct_a32dc9f64f1df03a8ce970b71df42503
}

union CommandOrCodeAction {
    case0: Command
    case1: CodeAction
}

union Declaration {
    case0: Location
    case1: ListOf_Location
}

union Definition {
    case0: Location
    case1: ListOf_Location
}

union DiagnosticOptionsUnion {
    case0: DiagnosticOptions
    case1: DiagnosticRegistrationOptions
}

union DocumentDiagnosticReport {
    case0: RelatedFullDocumentDiagnosticReport
    case1: RelatedUnchangedDocumentDiagnosticReport
}

union DocumentDiagnosticReportUnion {
    case0: FullDocumentDiagnosticReport
    case1: UnchangedDocumentDiagnosticReport
}

union DocumentFilter {
    case0: TextDocumentFilter
    case1: NotebookCellTextDocumentFilter
}

union DocumentSelectorOrNULL {
    case0: DocumentSelector
    case1: Unit
}

union DocumentUriOrNULL {
    case0: String
    case1: Unit
}

union EditUnion {
    case0: TextEdit
    case1: InsertReplaceEdit
}

union GlobPattern {
    case0: Pattern
    case1: RelativePattern
}

union HoverOrNULL {
    case0: Hover
    case1: Unit
}

union InlineValue {
    case0: InlineValueText
    case1: InlineValueVariableLookup
    case2: InlineValueEvaluatableExpression
}

union InlineValueUnion {
    case0: InlineValueText
    case1: InlineValueVariableLookup
    case2: InlineValueEvaluatableExpression
}

union IntegerOrNULL {
    case0: Integer
    case1: Unit
}

union IntegerOrString {
    case0: Integer
    case1: String
}

union LinkedEditingRangesOrNULL {
    case0: LinkedEditingRanges
    case1: Unit
}

union ListOfCallHierarchyIncomingCallOrNULL {
    case0: ListOf_CallHierarchyIncomingCall
    case1: Unit
}

union ListOfCallHierarchyItemOrNULL {
    case0: ListOf_CallHierarchyItem
    case1: Unit
}

union ListOfCallHierarchyOutgoingCallOrNULL {
    case0: ListOf_CallHierarchyOutgoingCall
    case1: Unit
}

union ListOfCodeLensOrNULL {
    case0: ListOf_CodeLens
    case1: Unit
}

union ListOfDocumentHighlightOrNULL {
    case0: ListOf_DocumentHighlight
    case1: Unit
}

union ListOfDocumentLinkOrNULL {
    case0: ListOf_DocumentLink
    case1: Unit
}

union ListOfFoldingRangeOrNULL {
    case0: ListOf_FoldingRange
    case1: Unit
}

union ListOfInlayHintOrNULL {
    case0: ListOf_InlayHint
    case1: Unit
}

union ListOfInlineValueOrNULL {
    case0: ListOf_InlineValue
    case1: Unit
}

union ListOfLocationOrNULL {
    case0: ListOf_Location
    case1: Unit
}

union ListOfMonikerOrNULL {
    case0: ListOf_Moniker
    case1: Unit
}

union ListOfOrNULL {
    case0: ListOf_CommandOrCodeAction
    case1: Unit
}

union ListOfSelectionRangeOrNULL {
    case0: ListOf_SelectionRange
    case1: Unit
}

union ListOfTextEditOrNULL {
    case0: ListOf_TextEdit
    case1: Unit
}

union ListOfTypeHierarchyItemOrNULL {
    case0: ListOf_TypeHierarchyItem
    case1: Unit
}

union ListOfWorkspaceFolderOrNULL {
    case0: ListOf_WorkspaceFolder
    case1: Unit
}

union LocationUnion {
    case0: Location
    case1: ListOf_Location
}

union LUnion {
    case0: Document
    case1: Unit
}

union MarkedString {
    case0: String
    case1: MarkedStringWithLanguage
}

union MessageActionItemOrNULL {
    case0: MessageActionItem
    case1: Unit
}

union NotebookDocumentFilter {
    case0: NotebookDocumentFilterNotebookType
    case1: NotebookDocumentFilterScheme
    case2: NotebookDocumentFilterPattern
}

union NotebookDocumentFilterUnion {
    case0: NotebookDocumentFilterNotebookType
    case1: NotebookDocumentFilterScheme
    case2: NotebookDocumentFilterPattern
}

union NotebookDocumentFilterWithUnion {
    case0: NotebookDocumentFilterWithNotebook
    case1: NotebookDocumentFilterWithCells
}

union NotebookDocumentSyncOptionsUnion {
    case0: NotebookDocumentSyncOptions
    case1: NotebookDocumentSyncRegistrationOptions
}

union PatternUnion {
    case0: Pattern
    case1: RelativePattern
}

union PrepareRenameResult {
    case0: Range
    case1: PrepareRenamePlaceholder
    case2: PrepareRenameDefaultBehavior
}

union PrepareRenameResultOrNULL {
    case0: PrepareRenameResult
    case1: Unit
}

union ProgressToken {
    case0: Integer
    case1: String
}

union RangeUnion {
    case0: Range
    case1: EditRangeWithInsertReplace
}

union RelatedDocumentDiagnosticReportUnion {
    case0: RelatedFullDocumentDiagnosticReport
    case1: RelatedUnchangedDocumentDiagnosticReport
}

union SemanticTokensOptionsUnion {
    case0: SemanticTokensOptions
    case1: SemanticTokensRegistrationOptions
}

union SemanticTokensOrNULL {
    case0: SemanticTokens
    case1: Unit
}

union SignatureHelpOrNULL {
    case0: SignatureHelp
    case1: Unit
}

union StringOrBoolean {
    case0: String
    case1: Boolean
}

union StringOrListOfInlayHintLabelPart {
    case0: String
    case1: ListOf_InlayHintLabelPart
}

union StringOrMarkupContent {
    case0: String
    case1: MarkupContent
}

union StringOrNotebookDocumentFilter {
    case0: String
    case1: NotebookDocumentFilter
}

union StringOrNULL {
    case0: String
    case1: Unit
}

union StringUnion {
    case0: String
    case1: MarkedStringWithLanguage
}

union TextDocumentContentChangeEvent {
    case0: TextDocumentContentChangePartial
    case1: TextDocumentContentChangeWholeDocument
}

union TextDocumentContentChangeUnion {
    case0: TextDocumentContentChangePartial
    case1: TextDocumentContentChangeWholeDocument
}

union TextDocumentFilter {
    case0: TextDocumentFilterLanguage
    case1: TextDocumentFilterScheme
    case2: TextDocumentFilterPattern
}

union TextDocumentFilterUnion {
    case0: TextDocumentFilterLanguage
    case1: TextDocumentFilterScheme
    case2: TextDocumentFilterPattern
}

union TextDocumentSyncUnion {
    case0: TextDocumentSyncOptions
    case1: TextDocumentSyncKind
}

union TextEditUnion {
    case0: TextEdit
    case1: AnnotatedTextEdit
}

union UintegerOrNULL {
    case0: Integer
    case1: Unit
}

union WorkspaceDocumentDiagnosticReport {
    case0: WorkspaceFullDocumentDiagnosticReport
    case1: WorkspaceUnchangedDocumentDiagnosticReport
}

union WorkspaceDocumentDiagnosticReportUnion {
    case0: WorkspaceFullDocumentDiagnosticReport
    case1: WorkspaceUnchangedDocumentDiagnosticReport
}

union WorkspaceEditOrNULL {
    case0: WorkspaceEdit
    case1: Unit
}

union WorkspaceFolderOrUri {
    case0: WorkspaceFolder
    case1: String
}

list DocumentSelector {
    member: DocumentFilter
}

list ListOf_AnonymousUnion {
    member: AnonymousUnion
}

list ListOf_CallHierarchyIncomingCall {
    member: CallHierarchyIncomingCall
}

list ListOf_CallHierarchyItem {
    member: CallHierarchyItem
}

list ListOf_CallHierarchyOutgoingCall {
    member: CallHierarchyOutgoingCall
}

list ListOf_CodeActionKind {
    member: CodeActionKind
}

list ListOf_CodeActionTag {
    member: CodeActionTag
}

list ListOf_CodeLens {
    member: CodeLens
}

list ListOf_ColorInformation {
    member: ColorInformation
}

list ListOf_ColorPresentation {
    member: ColorPresentation
}

list ListOf_CommandOrCodeAction {
    member: CommandOrCodeAction
}

list ListOf_CompletionItem {
    member: CompletionItem
}

list ListOf_CompletionItemKind {
    member: CompletionItemKind
}

list ListOf_CompletionItemTag {
    member: CompletionItemTag
}

list ListOf_ConfigurationItem {
    member: ConfigurationItem
}

list ListOf_DeclarationLink {
    member: DeclarationLink
}

list ListOf_DefinitionLink {
    member: DefinitionLink
}

list ListOf_Diagnostic {
    member: Diagnostic
}

list ListOf_DiagnosticRelatedInformation {
    member: DiagnosticRelatedInformation
}

list ListOf_DiagnosticTag {
    member: DiagnosticTag
}

list ListOf_Document {
    member: Document
}

list ListOf_DocumentFilter {
    member: DocumentFilter
}

list ListOf_DocumentHighlight {
    member: DocumentHighlight
}

list ListOf_DocumentLink {
    member: DocumentLink
}

list ListOf_DocumentSymbol {
    member: DocumentSymbol
}

list ListOf_FileCreate {
    member: FileCreate
}

list ListOf_FileDelete {
    member: FileDelete
}

list ListOf_FileEvent {
    member: FileEvent
}

list ListOf_FileOperationFilter {
    member: FileOperationFilter
}

list ListOf_FileRename {
    member: FileRename
}

list ListOf_FileSystemWatcher {
    member: FileSystemWatcher
}

list ListOf_FoldingRange {
    member: FoldingRange
}

list ListOf_FoldingRangeKind {
    member: FoldingRangeKind
}

list ListOf_InlayHint {
    member: InlayHint
}

list ListOf_InlayHintLabelPart {
    member: InlayHintLabelPart
}

list ListOf_InlineValue {
    member: InlineValue
}

list ListOf_InsertTextMode {
    member: InsertTextMode
}

list ListOf_Integer {
    member: Integer
}

list ListOf_Location {
    member: Location
}

list ListOf_MarkedString {
    member: MarkedString
}

list ListOf_MarkupKind {
    member: MarkupKind
}

list ListOf_MessageActionItem {
    member: MessageActionItem
}

list ListOf_Moniker {
    member: Moniker
}

list ListOf_NotebookCell {
    member: NotebookCell
}

list ListOf_NotebookCellLanguage {
    member: NotebookCellLanguage
}

list ListOf_NotebookDocumentCellContentChanges {
    member: NotebookDocumentCellContentChanges
}

list ListOf_NotebookDocumentFilterWithUnion {
    member: NotebookDocumentFilterWithUnion
}

list ListOf_ParameterInformation {
    member: ParameterInformation
}

list ListOf_Position {
    member: Position
}

list ListOf_PositionEncodingKind {
    member: PositionEncodingKind
}

list ListOf_PreviousResultId {
    member: PreviousResultId
}

list ListOf_Range {
    member: Range
}

list ListOf_Registration {
    member: Registration
}

list ListOf_ResourceOperationKind {
    member: ResourceOperationKind
}

list ListOf_SelectionRange {
    member: SelectionRange
}

list ListOf_SemanticTokensEdit {
    member: SemanticTokensEdit
}

list ListOf_SignatureInformation {
    member: SignatureInformation
}

list ListOf_String {
    member: String
}

list ListOf_SymbolInformation {
    member: SymbolInformation
}

list ListOf_SymbolKind {
    member: SymbolKind
}

list ListOf_SymbolTag {
    member: SymbolTag
}

list ListOf_TextDocumentContentChangeEvent {
    member: TextDocumentContentChangeEvent
}

list ListOf_TextDocumentIdentifier {
    member: TextDocumentIdentifier
}

list ListOf_TextDocumentItem {
    member: TextDocumentItem
}

list ListOf_TextEdit {
    member: TextEdit
}

list ListOf_TextEditUnion {
    member: TextEditUnion
}

list ListOf_TokenFormat {
    member: TokenFormat
}

list ListOf_TypeHierarchyItem {
    member: TypeHierarchyItem
}

list ListOf_Unregistration {
    member: Unregistration
}

list ListOf_WorkspaceDocumentDiagnosticReport {
    member: WorkspaceDocumentDiagnosticReport
}

list ListOf_WorkspaceFolder {
    member: WorkspaceFolder
}

list ListOf_WorkspaceSymbol {
    member: WorkspaceSymbol
}

list LSPArray {
    member: Document
}

list Tuple_of_Integer {
    member: Integer
}

map LSPObject {
    key: String
    value: Document
}

map MapOf_ChangeAnnotationIdentifier_to_ChangeAnnotation {
    key: ChangeAnnotationIdentifier
    value: ChangeAnnotation
}

map MapOf_String_to_Document {
    key: String
    value: Document
}

map MapOf_String_to_DocumentDiagnosticReportUnion {
    key: String
    value: DocumentDiagnosticReportUnion
}

map MapOf_String_to_ListOf_TextEdit {
    key: String
    value: ListOf_TextEdit
}

intEnum ApplyKind {
    REPLACE = 1
    MERGE = 2
}

string ChangeAnnotationIdentifier

enum CodeActionKind {
    QUICK_FIX = "quickfix"
    REFACTOR = "refactor"
    REFACTOR_EXTRACT = "refactor.extract"
    REFACTOR_INLINE = "refactor.inline"
    REFACTOR_REWRITE = "refactor.rewrite"
    SOURCE = "source"
    SOURCE_ORGANIZE_IMPORTS = "source.organizeImports"
    SOURCE_FIX_ALL = "source.fixAll"
    NOTEBOOK = "notebook"
}

intEnum CodeActionTag {
    LLM_GENERATED = 1
}

intEnum CodeActionTriggerKind {
    INVOKED = 1
    AUTOMATIC = 2
}

intEnum CompletionItemKind {
    TEXT = 1
    METHOD = 2
    FUNCTION = 3
    CONSTRUCTOR = 4
    FIELD = 5
    VARIABLE = 6
    CLASS = 7
    INTERFACE = 8
    MODULE = 9
    PROPERTY = 10
    UNIT = 11
    VALUE = 12
    ENUM = 13
    KEYWORD = 14
    SNIPPET = 15
    COLOR = 16
    FILE = 17
    REFERENCE = 18
    FOLDER = 19
    ENUM_MEMBER = 20
    CONSTANT = 21
    STRUCT = 22
    EVENT = 23
    OPERATOR = 24
    TYPE_PARAMETER = 25
}

intEnum CompletionItemTag {
    DEPRECATED = 1
}

intEnum CompletionTriggerKind {
    INVOKED = 1
    TRIGGER_CHARACTER = 2
    TRIGGER_FOR_INCOMPLETE_COMPLETIONS = 3
}

intEnum DiagnosticSeverity {
    ERROR = 1
    WARNING = 2
    INFORMATION = 3
    HINT = 4
}

intEnum DiagnosticTag {
    UNNECESSARY = 1
    DEPRECATED = 2
}

enum DocumentDiagnosticReportKind {
    FULL = "full"
    UNCHANGED = "unchanged"
}

intEnum DocumentHighlightKind {
    TEXT = 1
    READ = 2
    WRITE = 3
}

intEnum ErrorCodes {
    PARSE_ERROR = -32700
    INVALID_REQUEST = -32600
    METHOD_NOT_FOUND = -32601
    INVALID_PARAMS = -32602
    INTERNAL_ERROR = -32603
    SERVER_NOT_INITIALIZED = -32002
    UNKNOWN_ERROR_CODE = -32001
}

enum FailureHandlingKind {
    ABORT = "abort"
    TRANSACTIONAL = "transactional"
    TEXT_ONLY_TRANSACTIONAL = "textOnlyTransactional"
    UNDO = "undo"
}

intEnum FileChangeType {
    CREATED = 1
    CHANGED = 2
    DELETED = 3
}

enum FileOperationPatternKind {
    FILE = "file"
    FOLDER = "folder"
}

enum FoldingRangeKind {
    COMMENT = "comment"
    IMPORTS = "imports"
    REGION = "region"
}

intEnum InlayHintKind {
    TYPE = 1
    PARAMETER = 2
}

intEnum InsertTextFormat {
    PLAIN_TEXT = 1
    SNIPPET = 2
}

intEnum InsertTextMode {
    AS_IS = 1
    ADJUST_INDENTATION = 2
}

enum LanguageKind {
    ABAP = "abap"
    WINDOWS_BAT = "bat"
    BIB_TE_X = "bibtex"
    CLOJURE = "clojure"
    COFFEESCRIPT = "coffeescript"
    C = "c"
    CPP = "cpp"
    C_SHARP = "csharp"
    CSS = "css"
    DIFF = "diff"
    DART = "dart"
    DOCKERFILE = "dockerfile"
    ELIXIR = "elixir"
    ERLANG = "erlang"
    F_SHARP = "fsharp"
    GIT_COMMIT = "git-commit"
    GIT_REBASE = "rebase"
    GO = "go"
    GROOVY = "groovy"
    HANDLEBARS = "handlebars"
    HASKELL = "haskell"
    HTML = "html"
    INI = "ini"
    JAVA = "java"
    JAVA_SCRIPT = "javascript"
    JAVA_SCRIPT_REACT = "javascriptreact"
    JSON = "json"
    LA_TE_X = "latex"
    LESS = "less"
    LUA = "lua"
    MAKEFILE = "makefile"
    MARKDOWN = "markdown"
    OBJECTIVE_C = "objective-c"
    OBJECTIVE_CPP = "objective-cpp"
    PERL = "perl"
    PERL6 = "perl6"
    PHP = "php"
    POWERSHELL = "powershell"
    PUG = "jade"
    PYTHON = "python"
    R = "r"
    RAZOR = "razor"
    RUBY = "ruby"
    RUST = "rust"
    SCSS = "scss"
    SASS = "sass"
    SCALA = "scala"
    SHADER_LAB = "shaderlab"
    SHELL_SCRIPT = "shellscript"
    SQL = "sql"
    SWIFT = "swift"
    TYPE_SCRIPT = "typescript"
    TYPE_SCRIPT_REACT = "typescriptreact"
    TE_X = "tex"
    VISUAL_BASIC = "vb"
    XML = "xml"
    XSL = "xsl"
    YAML = "yaml"
}

intEnum LSPErrorCodes {
    REQUEST_FAILED = -32803
    SERVER_CANCELLED = -32802
    CONTENT_MODIFIED = -32801
    REQUEST_CANCELLED = -32800
}

enum MarkupKind {
    PLAIN_TEXT = "plaintext"
    MARKDOWN = "markdown"
}

intEnum MessageType {
    ERROR = 1
    WARNING = 2
    INFO = 3
    LOG = 4
}

enum MonikerKind {
    IMPORT = "import"
    EXPORT = "export"
    LOCAL = "local"
}

intEnum NotebookCellKind {
    MARKUP = 1
    CODE = 2
}

string Pattern

enum PositionEncodingKind {
    UTF8 = "utf-8"
    UTF16 = "utf-16"
    UTF32 = "utf-32"
}

intEnum PrepareSupportDefaultBehavior {
    IDENTIFIER = 1
}

string RegularExpressionEngineKind

enum ResourceOperationKind {
    CREATE = "create"
    RENAME = "rename"
    DELETE = "delete"
}

enum SemanticTokenModifiers {
    DECLARATION = "declaration"
    DEFINITION = "definition"
    READONLY = "readonly"
    STATIC = "static"
    DEPRECATED = "deprecated"
    ABSTRACT = "abstract"
    ASYNC = "async"
    MODIFICATION = "modification"
    DOCUMENTATION = "documentation"
    DEFAULT_LIBRARY = "defaultLibrary"
}

enum SemanticTokenTypes {
    NAMESPACE = "namespace"
    TYPE = "type"
    CLASS = "class"
    ENUM = "enum"
    INTERFACE = "interface"
    STRUCT = "struct"
    TYPE_PARAMETER = "typeParameter"
    PARAMETER = "parameter"
    VARIABLE = "variable"
    PROPERTY = "property"
    ENUM_MEMBER = "enumMember"
    EVENT = "event"
    FUNCTION = "function"
    METHOD = "method"
    MACRO = "macro"
    KEYWORD = "keyword"
    MODIFIER = "modifier"
    COMMENT = "comment"
    STRING = "string"
    NUMBER = "number"
    REGEXP = "regexp"
    OPERATOR = "operator"
    DECORATOR = "decorator"
    LABEL = "label"
}

intEnum SignatureHelpTriggerKind {
    INVOKED = 1
    TRIGGER_CHARACTER = 2
    CONTENT_CHANGE = 3
}

intEnum SymbolKind {
    FILE = 1
    MODULE = 2
    NAMESPACE = 3
    PACKAGE = 4
    CLASS = 5
    METHOD = 6
    PROPERTY = 7
    FIELD = 8
    CONSTRUCTOR = 9
    ENUM = 10
    INTERFACE = 11
    FUNCTION = 12
    VARIABLE = 13
    CONSTANT = 14
    STRING = 15
    NUMBER = 16
    BOOLEAN = 17
    ARRAY = 18
    OBJECT = 19
    KEY = 20
    NULL = 21
    ENUM_MEMBER = 22
    STRUCT = 23
    EVENT = 24
    OPERATOR = 25
    TYPE_PARAMETER = 26
}

intEnum SymbolTag {
    DEPRECATED = 1
}

intEnum TextDocumentSaveReason {
    MANUAL = 1
    AFTER_DELAY = 2
    FOCUS_OUT = 3
}

intEnum TextDocumentSyncKind {
    NONE = 0
    FULL = 1
    INCREMENTAL = 2
}

enum TokenFormat {
    RELATIVE = "relative"
}

enum TraceValue {
    OFF = "off"
    MESSAGES = "messages"
    VERBOSE = "verbose"
}

enum UniquenessLevel {
    DOCUMENT = "document"
    PROJECT = "project"
    GROUP = "group"
    SCHEME = "scheme"
    GLOBAL = "global"
}

intEnum WatchKind {
    CREATE = 1
    CHANGE = 2
    DELETE = 4
}
