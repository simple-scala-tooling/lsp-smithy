$version: "2.0"

namespace lsp

structure _InitializeParams {
    @required()
    processId: UnionOf_940a8a9c987642058f7caa1f75da79f2
    clientInfo: ClientInfo
    locale: String
    rootPath: UnionOf_4b91e6fa394d43c1a7676b7dbde9e0e0
    @required()
    rootUri: UnionOf_ad8b5630a5784e07bb7606743c30a0ff
    @required()
    capabilities: ClientCapabilities
    initializationOptions: LSPAny
    trace: TraceValue
}

structure AnnotatedTextEdit {
    @required()
    annotationId: ChangeAnnotationIdentifier
}

structure ApplyWorkspaceEditParams {
    label: String
    @required()
    edit: WorkspaceEdit
    metadata: WorkspaceEditMetadata
}

structure ApplyWorkspaceEditResult {
    @required()
    applied: Boolean
    failureReason: String
    failedChange: Integer
}

structure BaseSymbolInformation {
    @required()
    name: String
    @required()
    kind: SymbolKind
    tags: ListOf_SymbolTag
    containerName: String
}

structure CallHierarchyClientCapabilities {
    dynamicRegistration: Boolean
}

structure CallHierarchyIncomingCall {
    @required()
    from: CallHierarchyItem
    @required()
    fromRanges: ListOf_Range
}

structure CallHierarchyIncomingCallsParams {
    @required()
    item: CallHierarchyItem
}

structure CallHierarchyItem {
    @required()
    name: String
    @required()
    kind: SymbolKind
    tags: ListOf_SymbolTag
    detail: String
    @required()
    uri: String
    @required()
    range: Range
    @required()
    selectionRange: Range
    data: LSPAny
}

structure CallHierarchyOptions {}

structure CallHierarchyOutgoingCall {
    @required()
    to: CallHierarchyItem
    @required()
    fromRanges: ListOf_Range
}

structure CallHierarchyOutgoingCallsParams {
    @required()
    item: CallHierarchyItem
}

structure CallHierarchyPrepareParams {}

structure CallHierarchyRegistrationOptions {}

structure CancelParams {
    @required()
    id: UnionOf_06ff19f37aee48f1a8ba1858c59eb084
}

structure ChangeAnnotation {
    @required()
    label: String
    needsConfirmation: Boolean
    description: String
}

structure ChangeAnnotationsSupportOptions {
    groupsOnLabel: Boolean
}

structure ClientCapabilities {
    workspace: WorkspaceClientCapabilities
    textDocument: TextDocumentClientCapabilities
    notebookDocument: NotebookDocumentClientCapabilities
    window: WindowClientCapabilities
    general: GeneralClientCapabilities
    experimental: LSPAny
}

structure ClientCodeActionKindOptions {
    @required()
    valueSet: ListOf_CodeActionKind
}

structure ClientCodeActionLiteralOptions {
    @required()
    codeActionKind: ClientCodeActionKindOptions
}

structure ClientCodeActionResolveOptions {
    @required()
    properties: ListOf_String
}

structure ClientCodeLensResolveOptions {
    @required()
    properties: ListOf_String
}

structure ClientCompletionItemInsertTextModeOptions {
    @required()
    valueSet: ListOf_InsertTextMode
}

structure ClientCompletionItemOptions {
    snippetSupport: Boolean
    commitCharactersSupport: Boolean
    documentationFormat: ListOf_MarkupKind
    deprecatedSupport: Boolean
    preselectSupport: Boolean
    tagSupport: CompletionItemTagOptions
    insertReplaceSupport: Boolean
    resolveSupport: ClientCompletionItemResolveOptions
    insertTextModeSupport: ClientCompletionItemInsertTextModeOptions
    labelDetailsSupport: Boolean
}

structure ClientCompletionItemOptionsKind {
    valueSet: ListOf_CompletionItemKind
}

structure ClientCompletionItemResolveOptions {
    @required()
    properties: ListOf_String
}

structure ClientDiagnosticsTagOptions {
    @required()
    valueSet: ListOf_DiagnosticTag
}

structure ClientFoldingRangeKindOptions {
    valueSet: ListOf_FoldingRangeKind
}

structure ClientFoldingRangeOptions {
    collapsedText: Boolean
}

structure ClientInfo {
    @required()
    name: String
    version: String
}

structure ClientInlayHintResolveOptions {
    @required()
    properties: ListOf_String
}

structure ClientSemanticTokensRequestFullDelta {
    delta: Boolean
}

structure ClientSemanticTokensRequestOptions {
    range: UnionOf_9dfbbeaab1ee472db1f87997d5605e83
    full: UnionOf_628b33a1d7204257910e7a593ded1977
}

structure ClientShowMessageActionItemOptions {
    additionalPropertiesSupport: Boolean
}

structure ClientSignatureInformationOptions {
    documentationFormat: ListOf_MarkupKind
    parameterInformation: ClientSignatureParameterInformationOptions
    activeParameterSupport: Boolean
    noActiveParameterSupport: Boolean
}

structure ClientSignatureParameterInformationOptions {
    labelOffsetSupport: Boolean
}

structure ClientSymbolKindOptions {
    valueSet: ListOf_SymbolKind
}

structure ClientSymbolResolveOptions {
    @required()
    properties: ListOf_String
}

structure ClientSymbolTagOptions {
    @required()
    valueSet: ListOf_SymbolTag
}

structure CodeAction {
    @required()
    title: String
    kind: CodeActionKind
    diagnostics: ListOf_Diagnostic
    isPreferred: Boolean
    disabled: CodeActionDisabled
    edit: WorkspaceEdit
    command: Command
    data: LSPAny
    tags: ListOf_CodeActionTag
}

structure CodeActionClientCapabilities {
    dynamicRegistration: Boolean
    codeActionLiteralSupport: ClientCodeActionLiteralOptions
    isPreferredSupport: Boolean
    disabledSupport: Boolean
    dataSupport: Boolean
    resolveSupport: ClientCodeActionResolveOptions
    honorsChangeAnnotations: Boolean
    documentationSupport: Boolean
    tagSupport: CodeActionTagOptions
}

structure CodeActionContext {
    @required()
    diagnostics: ListOf_Diagnostic
    only: ListOf_CodeActionKind
    triggerKind: CodeActionTriggerKind
}

structure CodeActionDisabled {
    @required()
    reason: String
}

structure CodeActionKindDocumentation {
    @required()
    kind: CodeActionKind
    @required()
    command: Command
}

structure CodeActionOptions {
    codeActionKinds: ListOf_CodeActionKind
    documentation: ListOf_CodeActionKindDocumentation
    resolveProvider: Boolean
}

structure CodeActionParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    range: Range
    @required()
    context: CodeActionContext
}

structure CodeActionRegistrationOptions {}

structure CodeActionTagOptions {
    @required()
    valueSet: ListOf_CodeActionTag
}

structure CodeDescription {
    @required()
    href: String
}

structure CodeLens {
    @required()
    range: Range
    command: Command
    data: LSPAny
}

structure CodeLensClientCapabilities {
    dynamicRegistration: Boolean
    resolveSupport: ClientCodeLensResolveOptions
}

structure CodeLensOptions {
    resolveProvider: Boolean
}

structure CodeLensParams {
    @required()
    textDocument: TextDocumentIdentifier
}

structure CodeLensRegistrationOptions {}

structure CodeLensWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure Color {
    @required()
    red: Float
    @required()
    green: Float
    @required()
    blue: Float
    @required()
    alpha: Float
}

structure ColorInformation {
    @required()
    range: Range
    @required()
    color: Color
}

structure ColorPresentation {
    @required()
    label: String
    textEdit: TextEdit
    additionalTextEdits: ListOf_TextEdit
}

structure ColorPresentationParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    color: Color
    @required()
    range: Range
}

structure Command {
    @required()
    title: String
    tooltip: String
    @required()
    command: String
    arguments: ListOf_LSPAny
}

structure CompletionClientCapabilities {
    dynamicRegistration: Boolean
    completionItem: ClientCompletionItemOptions
    completionItemKind: ClientCompletionItemOptionsKind
    insertTextMode: InsertTextMode
    contextSupport: Boolean
    completionList: CompletionListCapabilities
}

structure CompletionContext {
    @required()
    triggerKind: CompletionTriggerKind
    triggerCharacter: String
}

structure CompletionItem {
    @required()
    label: String
    labelDetails: CompletionItemLabelDetails
    kind: CompletionItemKind
    tags: ListOf_CompletionItemTag
    detail: String
    documentation: UnionOf_00f09571c4f94c2fbb1a879c51bd6e02
    deprecated: Boolean
    preselect: Boolean
    sortText: String
    filterText: String
    insertText: String
    insertTextFormat: InsertTextFormat
    insertTextMode: InsertTextMode
    textEdit: UnionOf_f81f20eea5ff4910ac8cbe6e7e0f125a
    textEditText: String
    additionalTextEdits: ListOf_TextEdit
    commitCharacters: ListOf_String
    command: Command
    data: LSPAny
}

structure CompletionItemApplyKinds {
    commitCharacters: ApplyKind
    data: ApplyKind
}

structure CompletionItemDefaults {
    commitCharacters: ListOf_String
    editRange: UnionOf_5e547248101d4b7bb393d2b0798fba06
    insertTextFormat: InsertTextFormat
    insertTextMode: InsertTextMode
    data: LSPAny
}

structure CompletionItemLabelDetails {
    detail: String
    description: String
}

structure CompletionItemTagOptions {
    @required()
    valueSet: ListOf_CompletionItemTag
}

structure CompletionList {
    @required()
    isIncomplete: Boolean
    itemDefaults: CompletionItemDefaults
    applyKind: CompletionItemApplyKinds
    @required()
    items: ListOf_CompletionItem
}

structure CompletionListCapabilities {
    itemDefaults: ListOf_String
    applyKindSupport: Boolean
}

structure CompletionOptions {
    triggerCharacters: ListOf_String
    allCommitCharacters: ListOf_String
    resolveProvider: Boolean
    completionItem: ServerCompletionItemOptions
}

structure CompletionParams {
    context: CompletionContext
}

structure CompletionRegistrationOptions {}

structure ConfigurationItem {
    scopeUri: String
    section: String
}

structure ConfigurationParams {
    @required()
    items: ListOf_ConfigurationItem
}

structure CreateFile {
    @required()
    kind: String
    @required()
    uri: String
    options: CreateFileOptions
}

structure CreateFileOptions {
    overwrite: Boolean
    ignoreIfExists: Boolean
}

structure CreateFilesParams {
    @required()
    files: ListOf_FileCreate
}

structure DeclarationClientCapabilities {
    dynamicRegistration: Boolean
    linkSupport: Boolean
}

structure DeclarationOptions {}

structure DeclarationParams {}

structure DeclarationRegistrationOptions {}

structure DefinitionClientCapabilities {
    dynamicRegistration: Boolean
    linkSupport: Boolean
}

structure DefinitionOptions {}

structure DefinitionParams {}

structure DefinitionRegistrationOptions {}

structure DeleteFile {
    @required()
    kind: String
    @required()
    uri: String
    options: DeleteFileOptions
}

structure DeleteFileOptions {
    recursive: Boolean
    ignoreIfNotExists: Boolean
}

structure DeleteFilesParams {
    @required()
    files: ListOf_FileDelete
}

structure Diagnostic {
    @required()
    range: Range
    severity: DiagnosticSeverity
    code: UnionOf_aac21a0910194f2099715c9d51342fd1
    codeDescription: CodeDescription
    source: String
    @required()
    message: String
    tags: ListOf_DiagnosticTag
    relatedInformation: ListOf_DiagnosticRelatedInformation
    data: LSPAny
}

structure DiagnosticClientCapabilities {
    dynamicRegistration: Boolean
    relatedDocumentSupport: Boolean
}

structure DiagnosticOptions {
    identifier: String
    @required()
    interFileDependencies: Boolean
    @required()
    workspaceDiagnostics: Boolean
}

structure DiagnosticRegistrationOptions {}

structure DiagnosticRelatedInformation {
    @required()
    location: Location
    @required()
    message: String
}

structure DiagnosticsCapabilities {
    relatedInformation: Boolean
    tagSupport: ClientDiagnosticsTagOptions
    codeDescriptionSupport: Boolean
    dataSupport: Boolean
}

structure DiagnosticServerCancellationData {
    @required()
    retriggerRequest: Boolean
}

structure DiagnosticWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure DidChangeConfigurationClientCapabilities {
    dynamicRegistration: Boolean
}

structure DidChangeConfigurationParams {
    @required()
    settings: LSPAny
}

structure DidChangeConfigurationRegistrationOptions {
    section: UnionOf_9c83995f4ff44f03a2796bd72daf6330
}

structure DidChangeNotebookDocumentParams {
    @required()
    notebookDocument: VersionedNotebookDocumentIdentifier
    @required()
    change: NotebookDocumentChangeEvent
}

structure DidChangeTextDocumentParams {
    @required()
    textDocument: VersionedTextDocumentIdentifier
    @required()
    contentChanges: ListOf_TextDocumentContentChangeEvent
}

structure DidChangeWatchedFilesClientCapabilities {
    dynamicRegistration: Boolean
    relativePatternSupport: Boolean
}

structure DidChangeWatchedFilesParams {
    @required()
    changes: ListOf_FileEvent
}

structure DidChangeWatchedFilesRegistrationOptions {
    @required()
    watchers: ListOf_FileSystemWatcher
}

structure DidChangeWorkspaceFoldersParams {
    @required()
    event: WorkspaceFoldersChangeEvent
}

structure DidCloseNotebookDocumentParams {
    @required()
    notebookDocument: NotebookDocumentIdentifier
    @required()
    cellTextDocuments: ListOf_TextDocumentIdentifier
}

structure DidCloseTextDocumentParams {
    @required()
    textDocument: TextDocumentIdentifier
}

structure DidOpenNotebookDocumentParams {
    @required()
    notebookDocument: NotebookDocument
    @required()
    cellTextDocuments: ListOf_TextDocumentItem
}

structure DidOpenTextDocumentParams {
    @required()
    textDocument: TextDocumentItem
}

structure DidSaveNotebookDocumentParams {
    @required()
    notebookDocument: NotebookDocumentIdentifier
}

structure DidSaveTextDocumentParams {
    @required()
    textDocument: TextDocumentIdentifier
    text: String
}

structure DocumentColorClientCapabilities {
    dynamicRegistration: Boolean
}

structure DocumentColorOptions {}

structure DocumentColorParams {
    @required()
    textDocument: TextDocumentIdentifier
}

structure DocumentColorRegistrationOptions {}

structure DocumentDiagnosticParams {
    @required()
    textDocument: TextDocumentIdentifier
    identifier: String
    previousResultId: String
}

structure DocumentDiagnosticReportPartialResult {
    @required()
    relatedDocuments: MapOf_String_to_UnionOf_441c67eccede401e8a8f46ce7ec4db04
}

structure DocumentFormattingClientCapabilities {
    dynamicRegistration: Boolean
}

structure DocumentFormattingOptions {}

structure DocumentFormattingParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    options: FormattingOptions
}

structure DocumentFormattingRegistrationOptions {}

structure DocumentHighlight {
    @required()
    range: Range
    kind: DocumentHighlightKind
}

structure DocumentHighlightClientCapabilities {
    dynamicRegistration: Boolean
}

structure DocumentHighlightOptions {}

structure DocumentHighlightParams {}

structure DocumentHighlightRegistrationOptions {}

structure DocumentLink {
    @required()
    range: Range
    target: String
    tooltip: String
    data: LSPAny
}

structure DocumentLinkClientCapabilities {
    dynamicRegistration: Boolean
    tooltipSupport: Boolean
}

structure DocumentLinkOptions {
    resolveProvider: Boolean
}

structure DocumentLinkParams {
    @required()
    textDocument: TextDocumentIdentifier
}

structure DocumentLinkRegistrationOptions {}

structure DocumentOnTypeFormattingClientCapabilities {
    dynamicRegistration: Boolean
}

structure DocumentOnTypeFormattingOptions {
    @required()
    firstTriggerCharacter: String
    moreTriggerCharacter: ListOf_String
}

structure DocumentOnTypeFormattingParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    position: Position
    @required()
    ch: String
    @required()
    options: FormattingOptions
}

structure DocumentOnTypeFormattingRegistrationOptions {}

structure DocumentRangeFormattingClientCapabilities {
    dynamicRegistration: Boolean
    rangesSupport: Boolean
}

structure DocumentRangeFormattingOptions {
    rangesSupport: Boolean
}

structure DocumentRangeFormattingParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    range: Range
    @required()
    options: FormattingOptions
}

structure DocumentRangeFormattingRegistrationOptions {}

structure DocumentRangesFormattingParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    ranges: ListOf_Range
    @required()
    options: FormattingOptions
}

structure DocumentSymbol {
    @required()
    name: String
    detail: String
    @required()
    kind: SymbolKind
    tags: ListOf_SymbolTag
    deprecated: Boolean
    @required()
    range: Range
    @required()
    selectionRange: Range
    children: ListOf_DocumentSymbol
}

structure DocumentSymbolClientCapabilities {
    dynamicRegistration: Boolean
    symbolKind: ClientSymbolKindOptions
    hierarchicalDocumentSymbolSupport: Boolean
    tagSupport: ClientSymbolTagOptions
    labelSupport: Boolean
}

structure DocumentSymbolOptions {
    label: String
}

structure DocumentSymbolParams {
    @required()
    textDocument: TextDocumentIdentifier
}

structure DocumentSymbolRegistrationOptions {}

structure EditRangeWithInsertReplace {
    @required()
    insert: Range
    @required()
    replace: Range
}

structure ExecuteCommandClientCapabilities {
    dynamicRegistration: Boolean
}

structure ExecuteCommandOptions {
    @required()
    commands: ListOf_String
}

structure ExecuteCommandParams {
    @required()
    command: String
    arguments: ListOf_LSPAny
}

structure ExecuteCommandRegistrationOptions {}

structure ExecutionSummary {
    @required()
    executionOrder: Integer
    success: Boolean
}

structure FileCreate {
    @required()
    uri: String
}

structure FileDelete {
    @required()
    uri: String
}

structure FileEvent {
    @required()
    uri: String
    @required()
    type: FileChangeType
}

structure FileOperationClientCapabilities {
    dynamicRegistration: Boolean
    didCreate: Boolean
    willCreate: Boolean
    didRename: Boolean
    willRename: Boolean
    didDelete: Boolean
    willDelete: Boolean
}

structure FileOperationFilter {
    scheme: String
    @required()
    pattern: FileOperationPattern
}

structure FileOperationOptions {
    didCreate: FileOperationRegistrationOptions
    willCreate: FileOperationRegistrationOptions
    didRename: FileOperationRegistrationOptions
    willRename: FileOperationRegistrationOptions
    didDelete: FileOperationRegistrationOptions
    willDelete: FileOperationRegistrationOptions
}

structure FileOperationPattern {
    @required()
    glob: String
    matches: FileOperationPatternKind
    options: FileOperationPatternOptions
}

structure FileOperationPatternOptions {
    ignoreCase: Boolean
}

structure FileOperationRegistrationOptions {
    @required()
    filters: ListOf_FileOperationFilter
}

structure FileRename {
    @required()
    oldUri: String
    @required()
    newUri: String
}

structure FileSystemWatcher {
    @required()
    globPattern: GlobPattern
    kind: WatchKind
}

structure FoldingRange {
    @required()
    startLine: Integer
    startCharacter: Integer
    @required()
    endLine: Integer
    endCharacter: Integer
    kind: FoldingRangeKind
    collapsedText: String
}

structure FoldingRangeClientCapabilities {
    dynamicRegistration: Boolean
    rangeLimit: Integer
    lineFoldingOnly: Boolean
    foldingRangeKind: ClientFoldingRangeKindOptions
    foldingRange: ClientFoldingRangeOptions
}

structure FoldingRangeOptions {}

structure FoldingRangeParams {
    @required()
    textDocument: TextDocumentIdentifier
}

structure FoldingRangeRegistrationOptions {}

structure FoldingRangeWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure FormattingOptions {
    @required()
    tabSize: Integer
    @required()
    insertSpaces: Boolean
    trimTrailingWhitespace: Boolean
    insertFinalNewline: Boolean
    trimFinalNewlines: Boolean
}

structure FullDocumentDiagnosticReport {
    @required()
    kind: String
    resultId: String
    @required()
    items: ListOf_Diagnostic
}

structure GeneralClientCapabilities {
    staleRequestSupport: StaleRequestSupportOptions
    regularExpressions: RegularExpressionsClientCapabilities
    markdown: MarkdownClientCapabilities
    positionEncodings: ListOf_PositionEncodingKind
}

structure Hover {
    @required()
    contents: UnionOf_cb6e124bdf6c4c7aa6e3b46bb886cf06
    range: Range
}

structure HoverClientCapabilities {
    dynamicRegistration: Boolean
    contentFormat: ListOf_MarkupKind
}

structure HoverOptions {}

structure HoverParams {}

structure HoverRegistrationOptions {}

structure ImplementationClientCapabilities {
    dynamicRegistration: Boolean
    linkSupport: Boolean
}

structure ImplementationOptions {}

structure ImplementationParams {}

structure ImplementationRegistrationOptions {}

structure InitializedParams {}

structure InitializeError {
    @required()
    retry: Boolean
}

structure InitializeParams {}

structure InitializeResult {
    @required()
    capabilities: ServerCapabilities
    serverInfo: ServerInfo
}

structure InlayHint {
    @required()
    position: Position
    @required()
    label: UnionOf_d165a8faabe443dc92a3e66d00a1fefa
    kind: InlayHintKind
    textEdits: ListOf_TextEdit
    tooltip: UnionOf_bcec19e3fcc148619d750ddd779b99c7
    paddingLeft: Boolean
    paddingRight: Boolean
    data: LSPAny
}

structure InlayHintClientCapabilities {
    dynamicRegistration: Boolean
    resolveSupport: ClientInlayHintResolveOptions
}

structure InlayHintLabelPart {
    @required()
    value: String
    tooltip: UnionOf_c5932c2956134aa1b2d526c594cd3ade
    location: Location
    command: Command
}

structure InlayHintOptions {
    resolveProvider: Boolean
}

structure InlayHintParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    range: Range
}

structure InlayHintRegistrationOptions {}

structure InlayHintWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure InlineCompletionClientCapabilities {
    dynamicRegistration: Boolean
}

structure InlineCompletionContext {
    @required()
    triggerKind: InlineCompletionTriggerKind
    selectedCompletionInfo: SelectedCompletionInfo
}

structure InlineCompletionItem {
    @required()
    insertText: UnionOf_0d8c94227b314bd690b83bb84bad8ac9
    filterText: String
    range: Range
    command: Command
}

structure InlineCompletionList {
    @required()
    items: ListOf_InlineCompletionItem
}

structure InlineCompletionOptions {}

structure InlineCompletionParams {
    @required()
    context: InlineCompletionContext
}

structure InlineCompletionRegistrationOptions {}

structure InlineStruct_6776bbbe4d4c4ce59bcdc15fcd8c002a {}

structure InlineStruct_b2d0e496bea24683bfa679e886cf477f {}

structure InlineValueClientCapabilities {
    dynamicRegistration: Boolean
}

structure InlineValueContext {
    @required()
    frameId: Integer
    @required()
    stoppedLocation: Range
}

structure InlineValueEvaluatableExpression {
    @required()
    range: Range
    expression: String
}

structure InlineValueOptions {}

structure InlineValueParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    range: Range
    @required()
    context: InlineValueContext
}

structure InlineValueRegistrationOptions {}

structure InlineValueText {
    @required()
    range: Range
    @required()
    text: String
}

structure InlineValueVariableLookup {
    @required()
    range: Range
    variableName: String
    @required()
    caseSensitiveLookup: Boolean
}

structure InlineValueWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure InsertReplaceEdit {
    @required()
    newText: String
    @required()
    insert: Range
    @required()
    replace: Range
}

structure LinkedEditingRangeClientCapabilities {
    dynamicRegistration: Boolean
}

structure LinkedEditingRangeOptions {}

structure LinkedEditingRangeParams {}

structure LinkedEditingRangeRegistrationOptions {}

structure LinkedEditingRanges {
    @required()
    ranges: ListOf_Range
    wordPattern: String
}

structure Location {
    @required()
    uri: String
    @required()
    range: Range
}

structure LocationLink {
    originSelectionRange: Range
    @required()
    targetUri: String
    @required()
    targetRange: Range
    @required()
    targetSelectionRange: Range
}

structure LocationUriOnly {
    @required()
    uri: String
}

structure LogMessageParams {
    @required()
    type: MessageType
    @required()
    message: String
}

structure LogTraceParams {
    @required()
    message: String
    verbose: String
}

structure MarkdownClientCapabilities {
    @required()
    parser: String
    version: String
    allowedTags: ListOf_String
}

structure MarkedStringWithLanguage {
    @required()
    language: String
    @required()
    value: String
}

structure MarkupContent {
    @required()
    kind: MarkupKind
    @required()
    value: String
}

structure MessageActionItem {
    @required()
    title: String
}

structure Moniker {
    @required()
    scheme: String
    @required()
    identifier: String
    @required()
    unique: UniquenessLevel
    kind: MonikerKind
}

structure MonikerClientCapabilities {
    dynamicRegistration: Boolean
}

structure MonikerOptions {}

structure MonikerParams {}

structure MonikerRegistrationOptions {}

structure NotebookCell {
    @required()
    kind: NotebookCellKind
    @required()
    document: String
    metadata: LSPObject
    executionSummary: ExecutionSummary
}

structure NotebookCellArrayChange {
    @required()
    start: Integer
    @required()
    deleteCount: Integer
    cells: ListOf_NotebookCell
}

structure NotebookCellLanguage {
    @required()
    language: String
}

structure NotebookCellTextDocumentFilter {
    @required()
    notebook: UnionOf_fb5059a6789144188bace367e0bcab9b
    language: String
}

structure NotebookDocument {
    @required()
    uri: String
    @required()
    notebookType: String
    @required()
    version: Integer
    metadata: LSPObject
    @required()
    cells: ListOf_NotebookCell
}

structure NotebookDocumentCellChanges {
    structure: NotebookDocumentCellChangeStructure
    data: ListOf_NotebookCell
    textContent: ListOf_NotebookDocumentCellContentChanges
}

structure NotebookDocumentCellChangeStructure {
    @required()
    array: NotebookCellArrayChange
    didOpen: ListOf_TextDocumentItem
    didClose: ListOf_TextDocumentIdentifier
}

structure NotebookDocumentCellContentChanges {
    @required()
    document: VersionedTextDocumentIdentifier
    @required()
    changes: ListOf_TextDocumentContentChangeEvent
}

structure NotebookDocumentChangeEvent {
    metadata: LSPObject
    cells: NotebookDocumentCellChanges
}

structure NotebookDocumentClientCapabilities {
    @required()
    synchronization: NotebookDocumentSyncClientCapabilities
}

structure NotebookDocumentFilterNotebookType {
    @required()
    notebookType: String
    scheme: String
    pattern: GlobPattern
}

structure NotebookDocumentFilterPattern {
    notebookType: String
    scheme: String
    @required()
    pattern: GlobPattern
}

structure NotebookDocumentFilterScheme {
    notebookType: String
    @required()
    scheme: String
    pattern: GlobPattern
}

structure NotebookDocumentFilterWithCells {
    notebook: UnionOf_c5488d08314540ccb2dc79949bedd1da
    @required()
    cells: ListOf_NotebookCellLanguage
}

structure NotebookDocumentFilterWithNotebook {
    @required()
    notebook: UnionOf_55de74049a474d45991f499035b9cb01
    cells: ListOf_NotebookCellLanguage
}

structure NotebookDocumentIdentifier {
    @required()
    uri: String
}

structure NotebookDocumentSyncClientCapabilities {
    dynamicRegistration: Boolean
    executionSummarySupport: Boolean
}

structure NotebookDocumentSyncOptions {
    @required()
    notebookSelector: ListOf_UnionOf_dc2e393d783249ff88d33c439c263ae9
    save: Boolean
}

structure NotebookDocumentSyncRegistrationOptions {}

structure OptionalVersionedTextDocumentIdentifier {
    @required()
    version: UnionOf_20fedab59d1c440a8bf2d6afa6a385af
}

structure ParameterInformation {
    @required()
    label: UnionOf_c6a660a7d20044ac9b41b47f3a23a983
    documentation: UnionOf_fb00a80309fa47b2989814cb7c957445
}

structure PartialResultParams {
    partialResultToken: ProgressToken
}

structure Position {
    @required()
    line: Integer
    @required()
    character: Integer
}

structure PrepareRenameDefaultBehavior {
    @required()
    defaultBehavior: Boolean
}

structure PrepareRenameParams {}

structure PrepareRenamePlaceholder {
    @required()
    range: Range
    @required()
    placeholder: String
}

structure PreviousResultId {
    @required()
    uri: String
    @required()
    value: String
}

structure ProgressParams {
    @required()
    token: ProgressToken
    @required()
    value: LSPAny
}

structure PublishDiagnosticsClientCapabilities {
    versionSupport: Boolean
}

structure PublishDiagnosticsParams {
    @required()
    uri: String
    version: Integer
    @required()
    diagnostics: ListOf_Diagnostic
}

structure Range {
    @required()
    start: Position
    @required()
    end: Position
}

structure ReferenceClientCapabilities {
    dynamicRegistration: Boolean
}

structure ReferenceContext {
    @required()
    includeDeclaration: Boolean
}

structure ReferenceOptions {}

structure ReferenceParams {
    @required()
    context: ReferenceContext
}

structure ReferenceRegistrationOptions {}

structure Registration {
    @required()
    id: String
    @required()
    method: String
    registerOptions: LSPAny
}

structure RegistrationParams {
    @required()
    registrations: ListOf_Registration
}

structure RegularExpressionsClientCapabilities {
    @required()
    engine: RegularExpressionEngineKind
    version: String
}

structure RelatedFullDocumentDiagnosticReport {
    relatedDocuments: MapOf_String_to_UnionOf_5e10ead40d80436999fe0f05ccd901e1
}

structure RelatedUnchangedDocumentDiagnosticReport {
    relatedDocuments: MapOf_String_to_UnionOf_e9cdc108e3a544a2a7a0797e96f66768
}

structure RelativePattern {
    @required()
    baseUri: UnionOf_d468e6f89b6a47a09189b77f3c61eb8c
    @required()
    pattern: Pattern
}

structure RenameClientCapabilities {
    dynamicRegistration: Boolean
    prepareSupport: Boolean
    prepareSupportDefaultBehavior: PrepareSupportDefaultBehavior
    honorsChangeAnnotations: Boolean
}

structure RenameFile {
    @required()
    kind: String
    @required()
    oldUri: String
    @required()
    newUri: String
    options: RenameFileOptions
}

structure RenameFileOptions {
    overwrite: Boolean
    ignoreIfExists: Boolean
}

structure RenameFilesParams {
    @required()
    files: ListOf_FileRename
}

structure RenameOptions {
    prepareProvider: Boolean
}

structure RenameParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    position: Position
    @required()
    newName: String
}

structure RenameRegistrationOptions {}

structure ResourceOperation {
    @required()
    kind: String
    annotationId: ChangeAnnotationIdentifier
}

structure SaveOptions {
    includeText: Boolean
}

structure SelectedCompletionInfo {
    @required()
    range: Range
    @required()
    text: String
}

structure SelectionRange {
    @required()
    range: Range
    parent: SelectionRange
}

structure SelectionRangeClientCapabilities {
    dynamicRegistration: Boolean
}

structure SelectionRangeOptions {}

structure SelectionRangeParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    positions: ListOf_Position
}

structure SelectionRangeRegistrationOptions {}

structure SemanticTokens {
    resultId: String
    @required()
    data: ListOf_Integer
}

structure SemanticTokensClientCapabilities {
    dynamicRegistration: Boolean
    @required()
    requests: ClientSemanticTokensRequestOptions
    @required()
    tokenTypes: ListOf_String
    @required()
    tokenModifiers: ListOf_String
    @required()
    formats: ListOf_TokenFormat
    overlappingTokenSupport: Boolean
    multilineTokenSupport: Boolean
    serverCancelSupport: Boolean
    augmentsSyntaxTokens: Boolean
}

structure SemanticTokensDelta {
    resultId: String
    @required()
    edits: ListOf_SemanticTokensEdit
}

structure SemanticTokensDeltaParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    previousResultId: String
}

structure SemanticTokensDeltaPartialResult {
    @required()
    edits: ListOf_SemanticTokensEdit
}

structure SemanticTokensEdit {
    @required()
    start: Integer
    @required()
    deleteCount: Integer
    data: ListOf_Integer
}

structure SemanticTokensFullDelta {
    delta: Boolean
}

structure SemanticTokensLegend {
    @required()
    tokenTypes: ListOf_String
    @required()
    tokenModifiers: ListOf_String
}

structure SemanticTokensOptions {
    @required()
    legend: SemanticTokensLegend
    range: UnionOf_7d3e56dfd3e74de7b6b54e04b09e0db0
    full: UnionOf_c94200ce23434afabab6b8ff47956fc7
}

structure SemanticTokensParams {
    @required()
    textDocument: TextDocumentIdentifier
}

structure SemanticTokensPartialResult {
    @required()
    data: ListOf_Integer
}

structure SemanticTokensRangeParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    range: Range
}

structure SemanticTokensRegistrationOptions {}

structure SemanticTokensWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure ServerCapabilities {
    positionEncoding: PositionEncodingKind
    textDocumentSync: UnionOf_943575b9c30e45c48d72382453938ac2
    notebookDocumentSync: UnionOf_de3f5df6660546d6a1da8182ba4ab528
    completionProvider: CompletionOptions
    hoverProvider: UnionOf_68705b0cd32e4da7a38c5bc1ff56f0a5
    signatureHelpProvider: SignatureHelpOptions
    declarationProvider: UnionOf_20920aaba71148a0a6ce865af74e5091
    definitionProvider: UnionOf_dd42f83265e54f01835e7b8f7fce8fbf
    typeDefinitionProvider: UnionOf_015b455feaf64d3d804bc2183aa594d3
    implementationProvider: UnionOf_97d3dd9b05aa428883237737e4baeaad
    referencesProvider: UnionOf_515cfd1e50bf47fc810f7d613cbe89d2
    documentHighlightProvider: UnionOf_00b58b14a1e84ec3872a8ac9eb6d74db
    documentSymbolProvider: UnionOf_67170941b101472a9187b3fe59ffc24c
    codeActionProvider: UnionOf_708eea1f8d854c41afe02b5ba5a5ddca
    codeLensProvider: CodeLensOptions
    documentLinkProvider: DocumentLinkOptions
    colorProvider: UnionOf_65838f3f29b14ad88a481d2c170dd90a
    workspaceSymbolProvider: UnionOf_9c4eb4951ba54866a43d9db62b1fce0e
    documentFormattingProvider: UnionOf_267bb8bad3624e9f816ed67a3fdc33f6
    documentRangeFormattingProvider: UnionOf_893adc836f7f4fa59374b253bca4c6bd
    documentOnTypeFormattingProvider: DocumentOnTypeFormattingOptions
    renameProvider: UnionOf_bf8820a3ec7742a6873881a6c137923b
    foldingRangeProvider: UnionOf_aac179b6b77b4e4a988577a18ff9e1cc
    selectionRangeProvider: UnionOf_9418e5a049144f47bc36759cee755c48
    executeCommandProvider: ExecuteCommandOptions
    callHierarchyProvider: UnionOf_d446ded47537497d8f17098be0013444
    linkedEditingRangeProvider: UnionOf_a04fd9a490284650af797fc18d5c7391
    semanticTokensProvider: UnionOf_043cdadb61744c03be1d4fd30054d12f
    monikerProvider: UnionOf_4bdf1d4b6ee240c6aa46a905e007dc9b
    typeHierarchyProvider: UnionOf_47b4ca317ecc44378fec96476323c664
    inlineValueProvider: UnionOf_9a209a9d16ff4f0a8ff822ce04d41cc6
    inlayHintProvider: UnionOf_2cd74b72be654b099d5b9e1b90734cbd
    diagnosticProvider: UnionOf_4b679ff9966948348e1217e53c572e12
    inlineCompletionProvider: UnionOf_1879a715ffc94353ba28eb1517e32eca
    workspace: WorkspaceOptions
    experimental: LSPAny
}

structure ServerCompletionItemOptions {
    labelDetailsSupport: Boolean
}

structure ServerInfo {
    @required()
    name: String
    version: String
}

structure SetTraceParams {
    @required()
    value: TraceValue
}

structure ShowDocumentClientCapabilities {
    @required()
    support: Boolean
}

structure ShowDocumentParams {
    @required()
    uri: String
    external: Boolean
    takeFocus: Boolean
    selection: Range
}

structure ShowDocumentResult {
    @required()
    success: Boolean
}

structure ShowMessageParams {
    @required()
    type: MessageType
    @required()
    message: String
}

structure ShowMessageRequestClientCapabilities {
    messageActionItem: ClientShowMessageActionItemOptions
}

structure ShowMessageRequestParams {
    @required()
    type: MessageType
    @required()
    message: String
    actions: ListOf_MessageActionItem
}

structure SignatureHelp {
    @required()
    signatures: ListOf_SignatureInformation
    activeSignature: Integer
    activeParameter: UnionOf_82b063fdd2734bbfbb9ad4bf1cc016df
}

structure SignatureHelpClientCapabilities {
    dynamicRegistration: Boolean
    signatureInformation: ClientSignatureInformationOptions
    contextSupport: Boolean
}

structure SignatureHelpContext {
    @required()
    triggerKind: SignatureHelpTriggerKind
    triggerCharacter: String
    @required()
    isRetrigger: Boolean
    activeSignatureHelp: SignatureHelp
}

structure SignatureHelpOptions {
    triggerCharacters: ListOf_String
    retriggerCharacters: ListOf_String
}

structure SignatureHelpParams {
    context: SignatureHelpContext
}

structure SignatureHelpRegistrationOptions {}

structure SignatureInformation {
    @required()
    label: String
    documentation: UnionOf_31a19891e9f443c6bab31b1c5831c2ba
    parameters: ListOf_ParameterInformation
    activeParameter: UnionOf_f8f26bcebda84c7ab026aebb07f03e0f
}

structure SnippetTextEdit {
    @required()
    range: Range
    @required()
    snippet: StringValue
    annotationId: ChangeAnnotationIdentifier
}

structure StaleRequestSupportOptions {
    @required()
    cancel: Boolean
    @required()
    retryOnContentModified: ListOf_String
}

structure StaticRegistrationOptions {
    id: String
}

structure StringValue {
    @required()
    kind: String
    @required()
    value: String
}

structure SymbolInformation {
    deprecated: Boolean
    @required()
    location: Location
}

structure TextDocumentChangeRegistrationOptions {
    @required()
    syncKind: TextDocumentSyncKind
}

structure TextDocumentClientCapabilities {
    synchronization: TextDocumentSyncClientCapabilities
    filters: TextDocumentFilterClientCapabilities
    completion: CompletionClientCapabilities
    hover: HoverClientCapabilities
    signatureHelp: SignatureHelpClientCapabilities
    declaration: DeclarationClientCapabilities
    definition: DefinitionClientCapabilities
    typeDefinition: TypeDefinitionClientCapabilities
    implementation: ImplementationClientCapabilities
    references: ReferenceClientCapabilities
    documentHighlight: DocumentHighlightClientCapabilities
    documentSymbol: DocumentSymbolClientCapabilities
    codeAction: CodeActionClientCapabilities
    codeLens: CodeLensClientCapabilities
    documentLink: DocumentLinkClientCapabilities
    colorProvider: DocumentColorClientCapabilities
    formatting: DocumentFormattingClientCapabilities
    rangeFormatting: DocumentRangeFormattingClientCapabilities
    onTypeFormatting: DocumentOnTypeFormattingClientCapabilities
    rename: RenameClientCapabilities
    foldingRange: FoldingRangeClientCapabilities
    selectionRange: SelectionRangeClientCapabilities
    publishDiagnostics: PublishDiagnosticsClientCapabilities
    callHierarchy: CallHierarchyClientCapabilities
    semanticTokens: SemanticTokensClientCapabilities
    linkedEditingRange: LinkedEditingRangeClientCapabilities
    moniker: MonikerClientCapabilities
    typeHierarchy: TypeHierarchyClientCapabilities
    inlineValue: InlineValueClientCapabilities
    inlayHint: InlayHintClientCapabilities
    diagnostic: DiagnosticClientCapabilities
    inlineCompletion: InlineCompletionClientCapabilities
}

structure TextDocumentContentChangePartial {
    @required()
    range: Range
    rangeLength: Integer
    @required()
    text: String
}

structure TextDocumentContentChangeWholeDocument {
    @required()
    text: String
}

structure TextDocumentContentClientCapabilities {
    dynamicRegistration: Boolean
}

structure TextDocumentContentOptions {
    @required()
    schemes: ListOf_String
}

structure TextDocumentContentParams {
    @required()
    uri: String
}

structure TextDocumentContentRefreshParams {
    @required()
    uri: String
}

structure TextDocumentContentRegistrationOptions {}

structure TextDocumentContentResult {
    @required()
    text: String
}

structure TextDocumentEdit {
    @required()
    textDocument: OptionalVersionedTextDocumentIdentifier
    @required()
    edits: ListOf_UnionOf_bfb6449e6709465c80e2264d06848b4c
}

structure TextDocumentFilterClientCapabilities {
    relativePatternSupport: Boolean
}

structure TextDocumentFilterLanguage {
    @required()
    language: String
    scheme: String
    pattern: GlobPattern
}

structure TextDocumentFilterPattern {
    language: String
    scheme: String
    @required()
    pattern: GlobPattern
}

structure TextDocumentFilterScheme {
    language: String
    @required()
    scheme: String
    pattern: GlobPattern
}

structure TextDocumentIdentifier {
    @required()
    uri: String
}

structure TextDocumentItem {
    @required()
    uri: String
    @required()
    languageId: LanguageKind
    @required()
    version: Integer
    @required()
    text: String
}

structure TextDocumentPositionParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    position: Position
}

structure TextDocumentRegistrationOptions {
    @required()
    documentSelector: UnionOf_37c064d3bc9541a8a48a604345b5fede
}

structure TextDocumentSaveRegistrationOptions {}

structure TextDocumentSyncClientCapabilities {
    dynamicRegistration: Boolean
    willSave: Boolean
    willSaveWaitUntil: Boolean
    didSave: Boolean
}

structure TextDocumentSyncOptions {
    openClose: Boolean
    change: TextDocumentSyncKind
    willSave: Boolean
    willSaveWaitUntil: Boolean
    save: UnionOf_5909ab4ab0674aab9b04269f80bc123b
}

structure TextEdit {
    @required()
    range: Range
    @required()
    newText: String
}

structure TypeDefinitionClientCapabilities {
    dynamicRegistration: Boolean
    linkSupport: Boolean
}

structure TypeDefinitionOptions {}

structure TypeDefinitionParams {}

structure TypeDefinitionRegistrationOptions {}

structure TypeHierarchyClientCapabilities {
    dynamicRegistration: Boolean
}

structure TypeHierarchyItem {
    @required()
    name: String
    @required()
    kind: SymbolKind
    tags: ListOf_SymbolTag
    detail: String
    @required()
    uri: String
    @required()
    range: Range
    @required()
    selectionRange: Range
    data: LSPAny
}

structure TypeHierarchyOptions {}

structure TypeHierarchyPrepareParams {}

structure TypeHierarchyRegistrationOptions {}

structure TypeHierarchySubtypesParams {
    @required()
    item: TypeHierarchyItem
}

structure TypeHierarchySupertypesParams {
    @required()
    item: TypeHierarchyItem
}

structure UnchangedDocumentDiagnosticReport {
    @required()
    kind: String
    @required()
    resultId: String
}

structure Unregistration {
    @required()
    id: String
    @required()
    method: String
}

structure UnregistrationParams {
    @required()
    unregisterations: ListOf_Unregistration
}

structure VersionedNotebookDocumentIdentifier {
    @required()
    version: Integer
    @required()
    uri: String
}

structure VersionedTextDocumentIdentifier {
    @required()
    version: Integer
}

structure WillSaveTextDocumentParams {
    @required()
    textDocument: TextDocumentIdentifier
    @required()
    reason: TextDocumentSaveReason
}

structure WindowClientCapabilities {
    workDoneProgress: Boolean
    showMessage: ShowMessageRequestClientCapabilities
    showDocument: ShowDocumentClientCapabilities
}

structure WorkDoneProgressBegin {
    @required()
    kind: String
    @required()
    title: String
    cancellable: Boolean
    message: String
    percentage: Integer
}

structure WorkDoneProgressCancelParams {
    @required()
    token: ProgressToken
}

structure WorkDoneProgressCreateParams {
    @required()
    token: ProgressToken
}

structure WorkDoneProgressEnd {
    @required()
    kind: String
    message: String
}

structure WorkDoneProgressOptions {
    workDoneProgress: Boolean
}

structure WorkDoneProgressParams {
    workDoneToken: ProgressToken
}

structure WorkDoneProgressReport {
    @required()
    kind: String
    cancellable: Boolean
    message: String
    percentage: Integer
}

structure WorkspaceClientCapabilities {
    applyEdit: Boolean
    workspaceEdit: WorkspaceEditClientCapabilities
    didChangeConfiguration: DidChangeConfigurationClientCapabilities
    didChangeWatchedFiles: DidChangeWatchedFilesClientCapabilities
    symbol: WorkspaceSymbolClientCapabilities
    executeCommand: ExecuteCommandClientCapabilities
    workspaceFolders: Boolean
    configuration: Boolean
    semanticTokens: SemanticTokensWorkspaceClientCapabilities
    codeLens: CodeLensWorkspaceClientCapabilities
    fileOperations: FileOperationClientCapabilities
    inlineValue: InlineValueWorkspaceClientCapabilities
    inlayHint: InlayHintWorkspaceClientCapabilities
    diagnostics: DiagnosticWorkspaceClientCapabilities
    foldingRange: FoldingRangeWorkspaceClientCapabilities
    textDocumentContent: TextDocumentContentClientCapabilities
}

structure WorkspaceDiagnosticParams {
    identifier: String
    @required()
    previousResultIds: ListOf_PreviousResultId
}

structure WorkspaceDiagnosticReport {
    @required()
    items: ListOf_WorkspaceDocumentDiagnosticReport
}

structure WorkspaceDiagnosticReportPartialResult {
    @required()
    items: ListOf_WorkspaceDocumentDiagnosticReport
}

structure WorkspaceEdit {
    changes: MapOf_String_to_ListOf_TextEdit
    documentChanges: ListOf_UnionOf_f1e6591f82854e8f8d73df886a9a0da8
    changeAnnotations: MapOf_ChangeAnnotationIdentifier_to_ChangeAnnotation
}

structure WorkspaceEditClientCapabilities {
    documentChanges: Boolean
    resourceOperations: ListOf_ResourceOperationKind
    failureHandling: FailureHandlingKind
    normalizesLineEndings: Boolean
    changeAnnotationSupport: ChangeAnnotationsSupportOptions
    metadataSupport: Boolean
    snippetEditSupport: Boolean
}

structure WorkspaceEditMetadata {
    isRefactoring: Boolean
}

structure WorkspaceFolder {
    @required()
    uri: String
    @required()
    name: String
}

structure WorkspaceFoldersChangeEvent {
    @required()
    added: ListOf_WorkspaceFolder
    @required()
    removed: ListOf_WorkspaceFolder
}

structure WorkspaceFoldersInitializeParams {
    workspaceFolders: UnionOf_cb13ac5b6875440d9091839dda93e5f4
}

structure WorkspaceFoldersServerCapabilities {
    supported: Boolean
    changeNotifications: UnionOf_882ce0cbbc054cb0a9ca35975d6064af
}

structure WorkspaceFullDocumentDiagnosticReport {
    @required()
    uri: String
    @required()
    version: UnionOf_93c46c9fb7f546fb86da1810a8cd0c4f
}

structure WorkspaceOptions {
    workspaceFolders: WorkspaceFoldersServerCapabilities
    fileOperations: FileOperationOptions
    textDocumentContent: UnionOf_2edb38765a0d4114b51932bd5f0f3bd4
}

structure WorkspaceSymbol {
    @required()
    location: UnionOf_ecf2c8d2c0d74cdabb34091f3b540b37
    data: LSPAny
}

structure WorkspaceSymbolClientCapabilities {
    dynamicRegistration: Boolean
    symbolKind: ClientSymbolKindOptions
    tagSupport: ClientSymbolTagOptions
    resolveSupport: ClientSymbolResolveOptions
}

structure WorkspaceSymbolOptions {
    resolveProvider: Boolean
}

structure WorkspaceSymbolParams {
    @required()
    query: String
}

structure WorkspaceSymbolRegistrationOptions {}

structure WorkspaceUnchangedDocumentDiagnosticReport {
    @required()
    uri: String
    @required()
    version: UnionOf_5aa012a324354e99b44f6e8180885344
}

union UnionOf_00b58b14a1e84ec3872a8ac9eb6d74db {
    case0: Boolean
    case1: DocumentHighlightOptions
}

union UnionOf_00f09571c4f94c2fbb1a879c51bd6e02 {
    case0: String
    case1: MarkupContent
}

union UnionOf_015b455feaf64d3d804bc2183aa594d3 {
    case0: Boolean
    case1: TypeDefinitionOptions
    case2: TypeDefinitionRegistrationOptions
}

union UnionOf_043cdadb61744c03be1d4fd30054d12f {
    case0: SemanticTokensOptions
    case1: SemanticTokensRegistrationOptions
}

union UnionOf_06ff19f37aee48f1a8ba1858c59eb084 {
    case0: Integer
    case1: String
}

union UnionOf_0d8c94227b314bd690b83bb84bad8ac9 {
    case0: String
    case1: StringValue
}

union UnionOf_140fbf9e3d084fad84d70fa186c277f2 {
    case0: String
    case1: MarkedStringWithLanguage
}

union UnionOf_1879a715ffc94353ba28eb1517e32eca {
    case0: Boolean
    case1: InlineCompletionOptions
}

union UnionOf_20920aaba71148a0a6ce865af74e5091 {
    case0: Boolean
    case1: DeclarationOptions
    case2: DeclarationRegistrationOptions
}

union UnionOf_20fedab59d1c440a8bf2d6afa6a385af {
    case0: Integer
    case1: Unit
}

union UnionOf_267bb8bad3624e9f816ed67a3fdc33f6 {
    case0: Boolean
    case1: DocumentFormattingOptions
}

union UnionOf_26c5eadf09c34db482971c2c23838b1f {
    case0: TextDocumentFilter
    case1: NotebookCellTextDocumentFilter
}

union UnionOf_29f1b8e8fbf741ff93f0c0cfeaed4546 {
    case0: WorkspaceFullDocumentDiagnosticReport
    case1: WorkspaceUnchangedDocumentDiagnosticReport
}

union UnionOf_2cd74b72be654b099d5b9e1b90734cbd {
    case0: Boolean
    case1: InlayHintOptions
    case2: InlayHintRegistrationOptions
}

union UnionOf_2edb38765a0d4114b51932bd5f0f3bd4 {
    case0: TextDocumentContentOptions
    case1: TextDocumentContentRegistrationOptions
}

union UnionOf_31a19891e9f443c6bab31b1c5831c2ba {
    case0: String
    case1: MarkupContent
}

union UnionOf_324faa152cf74e31a98f41b2c6f987cd {
    case0: TextDocumentFilterLanguage
    case1: TextDocumentFilterScheme
    case2: TextDocumentFilterPattern
}

union UnionOf_37c064d3bc9541a8a48a604345b5fede {
    case0: DocumentSelector
    case1: Unit
}

union UnionOf_42bb7f578e4f450a9974c4f58c18ff82 {
    case0: Location
    case1: ListOf_Location
}

union UnionOf_441c67eccede401e8a8f46ce7ec4db04 {
    case0: FullDocumentDiagnosticReport
    case1: UnchangedDocumentDiagnosticReport
}

union UnionOf_47b4ca317ecc44378fec96476323c664 {
    case0: Boolean
    case1: TypeHierarchyOptions
    case2: TypeHierarchyRegistrationOptions
}

union UnionOf_4b679ff9966948348e1217e53c572e12 {
    case0: DiagnosticOptions
    case1: DiagnosticRegistrationOptions
}

union UnionOf_4b91e6fa394d43c1a7676b7dbde9e0e0 {
    case0: String
    case1: Unit
}

union UnionOf_4bdf1d4b6ee240c6aa46a905e007dc9b {
    case0: Boolean
    case1: MonikerOptions
    case2: MonikerRegistrationOptions
}

union UnionOf_50cd06e62b2e4abe97de1df3c70f56ee {
    case0: NotebookDocumentFilterNotebookType
    case1: NotebookDocumentFilterScheme
    case2: NotebookDocumentFilterPattern
}

union UnionOf_515cfd1e50bf47fc810f7d613cbe89d2 {
    case0: Boolean
    case1: ReferenceOptions
}

union UnionOf_55de74049a474d45991f499035b9cb01 {
    case0: String
    case1: NotebookDocumentFilter
}

union UnionOf_58ef042db5554c9e802ad20abdc98ff0 {
    case0: InlineValueText
    case1: InlineValueVariableLookup
    case2: InlineValueEvaluatableExpression
}

union UnionOf_5909ab4ab0674aab9b04269f80bc123b {
    case0: Boolean
    case1: SaveOptions
}

union UnionOf_5aa012a324354e99b44f6e8180885344 {
    case0: Integer
    case1: Unit
}

union UnionOf_5e10ead40d80436999fe0f05ccd901e1 {
    case0: FullDocumentDiagnosticReport
    case1: UnchangedDocumentDiagnosticReport
}

union UnionOf_5e547248101d4b7bb393d2b0798fba06 {
    case0: Range
    case1: EditRangeWithInsertReplace
}

union UnionOf_628b33a1d7204257910e7a593ded1977 {
    case0: Boolean
    case1: ClientSemanticTokensRequestFullDelta
}

union UnionOf_65838f3f29b14ad88a481d2c170dd90a {
    case0: Boolean
    case1: DocumentColorOptions
    case2: DocumentColorRegistrationOptions
}

union UnionOf_65a2e1b0cb9341a9a3ef17a66010a2f4 {
    case0: Integer
    case1: String
}

union UnionOf_67170941b101472a9187b3fe59ffc24c {
    case0: Boolean
    case1: DocumentSymbolOptions
}

union UnionOf_68705b0cd32e4da7a38c5bc1ff56f0a5 {
    case0: Boolean
    case1: HoverOptions
}

union UnionOf_708eea1f8d854c41afe02b5ba5a5ddca {
    case0: Boolean
    case1: CodeActionOptions
}

union UnionOf_7a286274323a4c65839692f1631e32b0 {
    case0: Range
    case1: PrepareRenamePlaceholder
    case2: PrepareRenameDefaultBehavior
}

union UnionOf_7d3e56dfd3e74de7b6b54e04b09e0db0 {
    case0: Boolean
    case1: InlineStruct_b2d0e496bea24683bfa679e886cf477f
}

union UnionOf_82aef3eaa00140cf822cf1fd1fa48682 {
    case0: RelatedFullDocumentDiagnosticReport
    case1: RelatedUnchangedDocumentDiagnosticReport
}

union UnionOf_82b063fdd2734bbfbb9ad4bf1cc016df {
    case0: Integer
    case1: Unit
}

union UnionOf_882ce0cbbc054cb0a9ca35975d6064af {
    case0: String
    case1: Boolean
}

union UnionOf_893adc836f7f4fa59374b253bca4c6bd {
    case0: Boolean
    case1: DocumentRangeFormattingOptions
}

union UnionOf_93c46c9fb7f546fb86da1810a8cd0c4f {
    case0: Integer
    case1: Unit
}

union UnionOf_940a8a9c987642058f7caa1f75da79f2 {
    case0: Integer
    case1: Unit
}

union UnionOf_9418e5a049144f47bc36759cee755c48 {
    case0: Boolean
    case1: SelectionRangeOptions
    case2: SelectionRangeRegistrationOptions
}

union UnionOf_943575b9c30e45c48d72382453938ac2 {
    case0: TextDocumentSyncOptions
    case1: TextDocumentSyncKind
}

union UnionOf_97d3dd9b05aa428883237737e4baeaad {
    case0: Boolean
    case1: ImplementationOptions
    case2: ImplementationRegistrationOptions
}

union UnionOf_9a209a9d16ff4f0a8ff822ce04d41cc6 {
    case0: Boolean
    case1: InlineValueOptions
    case2: InlineValueRegistrationOptions
}

union UnionOf_9c4eb4951ba54866a43d9db62b1fce0e {
    case0: Boolean
    case1: WorkspaceSymbolOptions
}

union UnionOf_9c83995f4ff44f03a2796bd72daf6330 {
    case0: String
    case1: ListOf_String
}

union UnionOf_9cf1b1bbb4c34ffc9f9c7eb2ff5fdf70 {
    case0: TextDocumentContentChangePartial
    case1: TextDocumentContentChangeWholeDocument
}

union UnionOf_9dfbbeaab1ee472db1f87997d5605e83 {
    case0: Boolean
    case1: InlineStruct_6776bbbe4d4c4ce59bcdc15fcd8c002a
}

union UnionOf_a04fd9a490284650af797fc18d5c7391 {
    case0: Boolean
    case1: LinkedEditingRangeOptions
    case2: LinkedEditingRangeRegistrationOptions
}

union UnionOf_a051c4039717409aadbeb5252d61fb3d {
    case0: Location
    case1: ListOf_Location
}

union UnionOf_aac179b6b77b4e4a988577a18ff9e1cc {
    case0: Boolean
    case1: FoldingRangeOptions
    case2: FoldingRangeRegistrationOptions
}

union UnionOf_aac21a0910194f2099715c9d51342fd1 {
    case0: Integer
    case1: String
}

union UnionOf_ad8b5630a5784e07bb7606743c30a0ff {
    case0: String
    case1: Unit
}

union UnionOf_bcec19e3fcc148619d750ddd779b99c7 {
    case0: String
    case1: MarkupContent
}

union UnionOf_bf8820a3ec7742a6873881a6c137923b {
    case0: Boolean
    case1: RenameOptions
}

union UnionOf_bfb6449e6709465c80e2264d06848b4c {
    case0: TextEdit
    case1: AnnotatedTextEdit
    case2: SnippetTextEdit
}

union UnionOf_c5488d08314540ccb2dc79949bedd1da {
    case0: String
    case1: NotebookDocumentFilter
}

union UnionOf_c57ea50076d24b5ebb4073341fff42cd {
    case0: LSPObject
    case1: LSPArray
    case2: String
    case3: Integer
    case4: Integer
    case5: Float
    case6: Boolean
    case7: Unit
}

union UnionOf_c5932c2956134aa1b2d526c594cd3ade {
    case0: String
    case1: MarkupContent
}

union UnionOf_c6a660a7d20044ac9b41b47f3a23a983 {
    case0: String
    case1: Tuple_ee3f0e041ae845eb82ddf1012ed79e0f
}

union UnionOf_c94200ce23434afabab6b8ff47956fc7 {
    case0: Boolean
    case1: SemanticTokensFullDelta
}

union UnionOf_cb13ac5b6875440d9091839dda93e5f4 {
    case0: ListOf_WorkspaceFolder
    case1: Unit
}

union UnionOf_cb6e124bdf6c4c7aa6e3b46bb886cf06 {
    case0: MarkupContent
    case1: MarkedString
    case2: ListOf_MarkedString
}

union UnionOf_d165a8faabe443dc92a3e66d00a1fefa {
    case0: String
    case1: ListOf_InlayHintLabelPart
}

union UnionOf_d446ded47537497d8f17098be0013444 {
    case0: Boolean
    case1: CallHierarchyOptions
    case2: CallHierarchyRegistrationOptions
}

union UnionOf_d468e6f89b6a47a09189b77f3c61eb8c {
    case0: WorkspaceFolder
    case1: String
}

union UnionOf_dc2e393d783249ff88d33c439c263ae9 {
    case0: NotebookDocumentFilterWithNotebook
    case1: NotebookDocumentFilterWithCells
}

union UnionOf_dd42f83265e54f01835e7b8f7fce8fbf {
    case0: Boolean
    case1: DefinitionOptions
}

union UnionOf_de3f5df6660546d6a1da8182ba4ab528 {
    case0: NotebookDocumentSyncOptions
    case1: NotebookDocumentSyncRegistrationOptions
}

union UnionOf_e9cdc108e3a544a2a7a0797e96f66768 {
    case0: FullDocumentDiagnosticReport
    case1: UnchangedDocumentDiagnosticReport
}

union UnionOf_ecf2c8d2c0d74cdabb34091f3b540b37 {
    case0: Location
    case1: LocationUriOnly
}

union UnionOf_f1e6591f82854e8f8d73df886a9a0da8 {
    case0: TextDocumentEdit
    case1: CreateFile
    case2: RenameFile
    case3: DeleteFile
}

union UnionOf_f2cec0575f0e4663aa8ed0acb2af86e7 {
    case0: Pattern
    case1: RelativePattern
}

union UnionOf_f81f20eea5ff4910ac8cbe6e7e0f125a {
    case0: TextEdit
    case1: InsertReplaceEdit
}

union UnionOf_f8f26bcebda84c7ab026aebb07f03e0f {
    case0: Integer
    case1: Unit
}

union UnionOf_fb00a80309fa47b2989814cb7c957445 {
    case0: String
    case1: MarkupContent
}

union UnionOf_fb5059a6789144188bace367e0bcab9b {
    case0: String
    case1: NotebookDocumentFilter
}

list ListOf_CodeActionKind {
    member: CodeActionKind
}

list ListOf_CodeActionKindDocumentation {
    member: CodeActionKindDocumentation
}

list ListOf_CodeActionTag {
    member: CodeActionTag
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

list ListOf_Diagnostic {
    member: Diagnostic
}

list ListOf_DiagnosticRelatedInformation {
    member: DiagnosticRelatedInformation
}

list ListOf_DiagnosticTag {
    member: DiagnosticTag
}

list ListOf_DocumentFilter {
    member: DocumentFilter
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

list ListOf_FoldingRangeKind {
    member: FoldingRangeKind
}

list ListOf_InlayHintLabelPart {
    member: InlayHintLabelPart
}

list ListOf_InlineCompletionItem {
    member: InlineCompletionItem
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

list ListOf_LSPAny {
    member: LSPAny
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

list ListOf_NotebookCell {
    member: NotebookCell
}

list ListOf_NotebookCellLanguage {
    member: NotebookCellLanguage
}

list ListOf_NotebookDocumentCellContentChanges {
    member: NotebookDocumentCellContentChanges
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

list ListOf_SemanticTokensEdit {
    member: SemanticTokensEdit
}

list ListOf_SignatureInformation {
    member: SignatureInformation
}

list ListOf_String {
    member: String
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

list ListOf_TokenFormat {
    member: TokenFormat
}

list ListOf_UnionOf_bfb6449e6709465c80e2264d06848b4c {
    member: UnionOf_bfb6449e6709465c80e2264d06848b4c
}

list ListOf_UnionOf_dc2e393d783249ff88d33c439c263ae9 {
    member: UnionOf_dc2e393d783249ff88d33c439c263ae9
}

list ListOf_UnionOf_f1e6591f82854e8f8d73df886a9a0da8 {
    member: UnionOf_f1e6591f82854e8f8d73df886a9a0da8
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

list Tuple_ee3f0e041ae845eb82ddf1012ed79e0f {
    member: Integer
}

map MapOf_ChangeAnnotationIdentifier_to_ChangeAnnotation {
    key: ChangeAnnotationIdentifier
    value: ChangeAnnotation
}

map MapOf_String_to_ListOf_TextEdit {
    key: String
    value: ListOf_TextEdit
}

map MapOf_String_to_LSPAny {
    key: String
    value: LSPAny
}

map MapOf_String_to_UnionOf_441c67eccede401e8a8f46ce7ec4db04 {
    key: String
    value: UnionOf_441c67eccede401e8a8f46ce7ec4db04
}

map MapOf_String_to_UnionOf_5e10ead40d80436999fe0f05ccd901e1 {
    key: String
    value: UnionOf_5e10ead40d80436999fe0f05ccd901e1
}

map MapOf_String_to_UnionOf_e9cdc108e3a544a2a7a0797e96f66768 {
    key: String
    value: UnionOf_e9cdc108e3a544a2a7a0797e96f66768
}

intEnum ApplyKind {
    Replace = 1
    Merge = 2
}

string ChangeAnnotationIdentifier

enum CodeActionKind {
    Empty = ""
    QuickFix = "quickfix"
    Refactor = "refactor"
    RefactorExtract = "refactor.extract"
    RefactorInline = "refactor.inline"
    RefactorMove = "refactor.move"
    RefactorRewrite = "refactor.rewrite"
    Source = "source"
    SourceOrganizeImports = "source.organizeImports"
    SourceFixAll = "source.fixAll"
    Notebook = "notebook"
}

enum CodeActionTag {
    LLMGenerated = 1
}

enum CodeActionTriggerKind {
    Invoked = 1
    Automatic = 2
}

enum CompletionItemKind {
    Text = 1
    Method = 2
    Function = 3
    Constructor = 4
    Field = 5
    Variable = 6
    Class = 7
    Interface = 8
    Module = 9
    Property = 10
    Unit = 11
    Value = 12
    Enum = 13
    Keyword = 14
    Snippet = 15
    Color = 16
    File = 17
    Reference = 18
    Folder = 19
    EnumMember = 20
    Constant = 21
    Struct = 22
    Event = 23
    Operator = 24
    TypeParameter = 25
}

enum CompletionItemTag {
    Deprecated = 1
}

enum CompletionTriggerKind {
    Invoked = 1
    TriggerCharacter = 2
    TriggerForIncompleteCompletions = 3
}

string Declaration

string DeclarationLink

string Definition

string DefinitionLink

enum DiagnosticSeverity {
    Error = 1
    Warning = 2
    Information = 3
    Hint = 4
}

enum DiagnosticTag {
    Unnecessary = 1
    Deprecated = 2
}

string DocumentDiagnosticReport

enum DocumentDiagnosticReportKind {
    Full = "full"
    Unchanged = "unchanged"
}

string DocumentFilter

enum DocumentHighlightKind {
    Text = 1
    Read = 2
    Write = 3
}

string DocumentSelector

enum ErrorCodes {
    ParseError = -32700
    InvalidRequest = -32600
    MethodNotFound = -32601
    InvalidParams = -32602
    InternalError = -32603
    ServerNotInitialized = -32002
    UnknownErrorCode = -32001
}

enum FailureHandlingKind {
    Abort = "abort"
    Transactional = "transactional"
    TextOnlyTransactional = "textOnlyTransactional"
    Undo = "undo"
}

enum FileChangeType {
    Created = 1
    Changed = 2
    Deleted = 3
}

enum FileOperationPatternKind {
    file
    folder
}

enum FoldingRangeKind {
    Comment = "comment"
    Imports = "imports"
    Region = "region"
}

string GlobPattern

enum InlayHintKind {
    Type = 1
    Parameter = 2
}

enum InlineCompletionTriggerKind {
    Invoked = 1
    Automatic = 2
}

string InlineValue

enum InsertTextFormat {
    PlainText = 1
    Snippet = 2
}

enum InsertTextMode {
    asIs = 1
    adjustIndentation = 2
}

enum LanguageKind {
    ABAP = "abap"
    WindowsBat = "bat"
    BibTeX = "bibtex"
    Clojure = "clojure"
    Coffeescript = "coffeescript"
    C = "c"
    CPP = "cpp"
    CSharp = "csharp"
    CSS = "css"
    D = "d"
    Delphi = "pascal"
    Diff = "diff"
    Dart = "dart"
    Dockerfile = "dockerfile"
    Elixir = "elixir"
    Erlang = "erlang"
    FSharp = "fsharp"
    GitCommit = "git-commit"
    GitRebase = "rebase"
    Go = "go"
    Groovy = "groovy"
    Handlebars = "handlebars"
    Haskell = "haskell"
    HTML = "html"
    Ini = "ini"
    Java = "java"
    JavaScript = "javascript"
    JavaScriptReact = "javascriptreact"
    JSON = "json"
    LaTeX = "latex"
    Less = "less"
    Lua = "lua"
    Makefile = "makefile"
    Markdown = "markdown"
    ObjectiveC = "objective-c"
    ObjectiveCPP = "objective-cpp"
    Pascal = "pascal"
    Perl = "perl"
    Perl6 = "perl6"
    PHP = "php"
    Powershell = "powershell"
    Pug = "jade"
    Python = "python"
    R = "r"
    Razor = "razor"
    Ruby = "ruby"
    Rust = "rust"
    SCSS = "scss"
    SASS = "sass"
    Scala = "scala"
    ShaderLab = "shaderlab"
    ShellScript = "shellscript"
    SQL = "sql"
    Swift = "swift"
    TypeScript = "typescript"
    TypeScriptReact = "typescriptreact"
    TeX = "tex"
    VisualBasic = "vb"
    XML = "xml"
    XSL = "xsl"
    YAML = "yaml"
}

string LSPAny

string LSPArray

enum LSPErrorCodes {
    RequestFailed = -32803
    ServerCancelled = -32802
    ContentModified = -32801
    RequestCancelled = -32800
}

string LSPObject

string MarkedString

enum MarkupKind {
    PlainText = "plaintext"
    Markdown = "markdown"
}

enum MessageType {
    Error = 1
    Warning = 2
    Info = 3
    Log = 4
    Debug = 5
}

enum MonikerKind {
    import
    export
    local
}

enum NotebookCellKind {
    Markup = 1
    Code = 2
}

string NotebookDocumentFilter

string Pattern

enum PositionEncodingKind {
    UTF8 = "utf-8"
    UTF16 = "utf-16"
    UTF32 = "utf-32"
}

string PrepareRenameResult

enum PrepareSupportDefaultBehavior {
    Identifier = 1
}

string ProgressToken

string RegularExpressionEngineKind

enum ResourceOperationKind {
    Create = "create"
    Rename = "rename"
    Delete = "delete"
}

enum SemanticTokenModifiers {
    declaration
    definition
    readonly
    static
    deprecated
    abstract
    async
    modification
    documentation
    defaultLibrary
}

enum SemanticTokenTypes {
    namespace
    type
    class
    enum
    interface
    struct
    typeParameter
    parameter
    variable
    property
    enumMember
    event
    function
    method
    macro
    keyword
    modifier
    comment
    string
    number
    regexp
    operator
    decorator
    label
}

enum SignatureHelpTriggerKind {
    Invoked = 1
    TriggerCharacter = 2
    ContentChange = 3
}

enum SymbolKind {
    File = 1
    Module = 2
    Namespace = 3
    Package = 4
    Class = 5
    Method = 6
    Property = 7
    Field = 8
    Constructor = 9
    Enum = 10
    Interface = 11
    Function = 12
    Variable = 13
    Constant = 14
    String = 15
    Number = 16
    Boolean = 17
    Array = 18
    Object = 19
    Key = 20
    Null = 21
    EnumMember = 22
    Struct = 23
    Event = 24
    Operator = 25
    TypeParameter = 26
}

enum SymbolTag {
    Deprecated = 1
}

string TextDocumentContentChangeEvent

string TextDocumentFilter

enum TextDocumentSaveReason {
    Manual = 1
    AfterDelay = 2
    FocusOut = 3
}

enum TextDocumentSyncKind {
    None = 0
    Full = 1
    Incremental = 2
}

enum TokenFormat {
    Relative = "relative"
}

enum TraceValue {
    Off = "off"
    Messages = "messages"
    Verbose = "verbose"
}

enum UniquenessLevel {
    document
    project
    group
    scheme
    global
}

enum WatchKind {
    Create = 1
    Change = 2
    Delete = 4
}

string WorkspaceDocumentDiagnosticReport
