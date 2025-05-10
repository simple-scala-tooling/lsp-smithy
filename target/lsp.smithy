$version: "2.0"

namespace lsp

structure _InitializeParams {
    @required
    processId: IntegerOrNULL
    clientInfo: ClientInfo
    locale: String
    rootPath: StringOrNULL
    @required
    rootUri: DocumentUriOrNULL
    @required
    capabilities: ClientCapabilities
    initializationOptions: LSPAny
    trace: TraceValue
}

structure AnnotatedTextEdit {
    @required
    annotationId: ChangeAnnotationIdentifier
}

structure ApplyWorkspaceEditParams {
    label: String
    @required
    edit: WorkspaceEdit
    metadata: WorkspaceEditMetadata
}

structure ApplyWorkspaceEditResult {
    @required
    applied: Boolean
    failureReason: String
    failedChange: Integer
}

structure BaseSymbolInformation {
    @required
    name: String
    @required
    kind: SymbolKind
    tags: ListOf_SymbolTag
    containerName: String
}

structure CallHierarchyClientCapabilities {
    dynamicRegistration: Boolean
}

structure CallHierarchyIncomingCall {
    @required
    from: CallHierarchyItem
    @required
    fromRanges: ListOf_Range
}

structure CallHierarchyIncomingCallsParams {
    @required
    item: CallHierarchyItem
}

structure CallHierarchyItem {
    @required
    name: String
    @required
    kind: SymbolKind
    tags: ListOf_SymbolTag
    detail: String
    @required
    uri: String
    @required
    range: Range
    @required
    selectionRange: Range
    data: LSPAny
}

structure CallHierarchyOptions {}

structure CallHierarchyOutgoingCall {
    @required
    to: CallHierarchyItem
    @required
    fromRanges: ListOf_Range
}

structure CallHierarchyOutgoingCallsParams {
    @required
    item: CallHierarchyItem
}

structure CallHierarchyPrepareParams {}

structure CallHierarchyRegistrationOptions {}

structure CancelParams {
    @required
    id: IntegerOrString
}

structure ChangeAnnotation {
    @required
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
    @required
    valueSet: ListOf_CodeActionKind
}

structure ClientCodeActionLiteralOptions {
    @required
    codeActionKind: ClientCodeActionKindOptions
}

structure ClientCodeActionResolveOptions {
    @required
    properties: ListOf_String
}

structure ClientCodeLensResolveOptions {
    @required
    properties: ListOf_String
}

structure ClientCompletionItemInsertTextModeOptions {
    @required
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
    @required
    properties: ListOf_String
}

structure ClientDiagnosticsTagOptions {
    @required
    valueSet: ListOf_DiagnosticTag
}

structure ClientFoldingRangeKindOptions {
    valueSet: ListOf_FoldingRangeKind
}

structure ClientFoldingRangeOptions {
    collapsedText: Boolean
}

structure ClientInfo {
    @required
    name: String
    version: String
}

structure ClientInlayHintResolveOptions {
    @required
    properties: ListOf_String
}

structure ClientSemanticTokensRequestFullDelta {
    delta: Boolean
}

structure ClientSemanticTokensRequestOptions {
    range: BooleanUnion
    full: BooleanOrClientSemanticTokensRequestFullDelta
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
    @required
    properties: ListOf_String
}

structure ClientSymbolTagOptions {
    @required
    valueSet: ListOf_SymbolTag
}

structure CodeAction {
    @required
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
    @required
    diagnostics: ListOf_Diagnostic
    only: ListOf_CodeActionKind
    triggerKind: CodeActionTriggerKind
}

structure CodeActionDisabled {
    @required
    reason: String
}

structure CodeActionKindDocumentation {
    @required
    kind: CodeActionKind
    @required
    command: Command
}

structure CodeActionOptions {
    codeActionKinds: ListOf_CodeActionKind
    documentation: ListOf_CodeActionKindDocumentation
    resolveProvider: Boolean
}

structure CodeActionParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    range: Range
    @required
    context: CodeActionContext
}

structure CodeActionRegistrationOptions {}

structure CodeActionTagOptions {
    @required
    valueSet: ListOf_CodeActionTag
}

structure CodeDescription {
    @required
    href: String
}

structure CodeLens {
    @required
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
    @required
    textDocument: TextDocumentIdentifier
}

structure CodeLensRegistrationOptions {}

structure CodeLensWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure Color {
    @required
    red: Float
    @required
    green: Float
    @required
    blue: Float
    @required
    alpha: Float
}

structure ColorInformation {
    @required
    range: Range
    @required
    color: Color
}

structure ColorPresentation {
    @required
    label: String
    textEdit: TextEdit
    additionalTextEdits: ListOf_TextEdit
}

structure ColorPresentationParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    color: Color
    @required
    range: Range
}

structure Command {
    @required
    title: String
    tooltip: String
    @required
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
    @required
    triggerKind: CompletionTriggerKind
    triggerCharacter: String
}

structure CompletionItem {
    @required
    label: String
    labelDetails: CompletionItemLabelDetails
    kind: CompletionItemKind
    tags: ListOf_CompletionItemTag
    detail: String
    documentation: StringOrMarkupContent
    deprecated: Boolean
    preselect: Boolean
    sortText: String
    filterText: String
    insertText: String
    insertTextFormat: InsertTextFormat
    insertTextMode: InsertTextMode
    textEdit: EditUnion
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
    editRange: RangeUnion
    insertTextFormat: InsertTextFormat
    insertTextMode: InsertTextMode
    data: LSPAny
}

structure CompletionItemLabelDetails {
    detail: String
    description: String
}

structure CompletionItemTagOptions {
    @required
    valueSet: ListOf_CompletionItemTag
}

structure CompletionList {
    @required
    isIncomplete: Boolean
    itemDefaults: CompletionItemDefaults
    applyKind: CompletionItemApplyKinds
    @required
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
    @required
    items: ListOf_ConfigurationItem
}

structure CreateFile {
    @required
    kind: String
    @required
    uri: String
    options: CreateFileOptions
}

structure CreateFileOptions {
    overwrite: Boolean
    ignoreIfExists: Boolean
}

structure CreateFilesParams {
    @required
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
    @required
    kind: String
    @required
    uri: String
    options: DeleteFileOptions
}

structure DeleteFileOptions {
    recursive: Boolean
    ignoreIfNotExists: Boolean
}

structure DeleteFilesParams {
    @required
    files: ListOf_FileDelete
}

structure Diagnostic {
    @required
    range: Range
    severity: DiagnosticSeverity
    code: IntegerOrString
    codeDescription: CodeDescription
    source: String
    @required
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
    @required
    interFileDependencies: Boolean
    @required
    workspaceDiagnostics: Boolean
}

structure DiagnosticRegistrationOptions {}

structure DiagnosticRelatedInformation {
    @required
    location: Location
    @required
    message: String
}

structure DiagnosticsCapabilities {
    relatedInformation: Boolean
    tagSupport: ClientDiagnosticsTagOptions
    codeDescriptionSupport: Boolean
    dataSupport: Boolean
}

structure DiagnosticServerCancellationData {
    @required
    retriggerRequest: Boolean
}

structure DiagnosticWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure DidChangeConfigurationClientCapabilities {
    dynamicRegistration: Boolean
}

structure DidChangeConfigurationParams {
    @required
    settings: LSPAny
}

structure DidChangeConfigurationRegistrationOptions {
    section: StringUnion
}

structure DidChangeNotebookDocumentParams {
    @required
    notebookDocument: VersionedNotebookDocumentIdentifier
    @required
    change: NotebookDocumentChangeEvent
}

structure DidChangeTextDocumentParams {
    @required
    textDocument: VersionedTextDocumentIdentifier
    @required
    contentChanges: ListOf_TextDocumentContentChangeEvent
}

structure DidChangeWatchedFilesClientCapabilities {
    dynamicRegistration: Boolean
    relativePatternSupport: Boolean
}

structure DidChangeWatchedFilesParams {
    @required
    changes: ListOf_FileEvent
}

structure DidChangeWatchedFilesRegistrationOptions {
    @required
    watchers: ListOf_FileSystemWatcher
}

structure DidChangeWorkspaceFoldersParams {
    @required
    event: WorkspaceFoldersChangeEvent
}

structure DidCloseNotebookDocumentParams {
    @required
    notebookDocument: NotebookDocumentIdentifier
    @required
    cellTextDocuments: ListOf_TextDocumentIdentifier
}

structure DidCloseTextDocumentParams {
    @required
    textDocument: TextDocumentIdentifier
}

structure DidOpenNotebookDocumentParams {
    @required
    notebookDocument: NotebookDocument
    @required
    cellTextDocuments: ListOf_TextDocumentItem
}

structure DidOpenTextDocumentParams {
    @required
    textDocument: TextDocumentItem
}

structure DidSaveNotebookDocumentParams {
    @required
    notebookDocument: NotebookDocumentIdentifier
}

structure DidSaveTextDocumentParams {
    @required
    textDocument: TextDocumentIdentifier
    text: String
}

structure DocumentColorClientCapabilities {
    dynamicRegistration: Boolean
}

structure DocumentColorOptions {}

structure DocumentColorParams {
    @required
    textDocument: TextDocumentIdentifier
}

structure DocumentColorRegistrationOptions {}

structure DocumentDiagnosticParams {
    @required
    textDocument: TextDocumentIdentifier
    identifier: String
    previousResultId: String
}

structure DocumentDiagnosticReportPartialResult {
    @required
    relatedDocuments: MapOf_String_to_DocumentDiagnosticReportUnion
}

structure DocumentFormattingClientCapabilities {
    dynamicRegistration: Boolean
}

structure DocumentFormattingOptions {}

structure DocumentFormattingParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    options: FormattingOptions
}

structure DocumentFormattingRegistrationOptions {}

structure DocumentHighlight {
    @required
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
    @required
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
    @required
    textDocument: TextDocumentIdentifier
}

structure DocumentLinkRegistrationOptions {}

structure DocumentOnTypeFormattingClientCapabilities {
    dynamicRegistration: Boolean
}

structure DocumentOnTypeFormattingOptions {
    @required
    firstTriggerCharacter: String
    moreTriggerCharacter: ListOf_String
}

structure DocumentOnTypeFormattingParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    position: Position
    @required
    ch: String
    @required
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
    @required
    textDocument: TextDocumentIdentifier
    @required
    range: Range
    @required
    options: FormattingOptions
}

structure DocumentRangeFormattingRegistrationOptions {}

structure DocumentRangesFormattingParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    ranges: ListOf_Range
    @required
    options: FormattingOptions
}

structure DocumentSymbol {
    @required
    name: String
    detail: String
    @required
    kind: SymbolKind
    tags: ListOf_SymbolTag
    deprecated: Boolean
    @required
    range: Range
    @required
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
    @required
    textDocument: TextDocumentIdentifier
}

structure DocumentSymbolRegistrationOptions {}

structure EditRangeWithInsertReplace {
    @required
    insert: Range
    @required
    replace: Range
}

structure ExecuteCommandClientCapabilities {
    dynamicRegistration: Boolean
}

structure ExecuteCommandOptions {
    @required
    commands: ListOf_String
}

structure ExecuteCommandParams {
    @required
    command: String
    arguments: ListOf_LSPAny
}

structure ExecuteCommandRegistrationOptions {}

structure ExecutionSummary {
    @required
    executionOrder: Integer
    success: Boolean
}

structure FileCreate {
    @required
    uri: String
}

structure FileDelete {
    @required
    uri: String
}

structure FileEvent {
    @required
    uri: String
    @required
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
    @required
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
    @required
    glob: String
    matches: FileOperationPatternKind
    options: FileOperationPatternOptions
}

structure FileOperationPatternOptions {
    ignoreCase: Boolean
}

structure FileOperationRegistrationOptions {
    @required
    filters: ListOf_FileOperationFilter
}

structure FileRename {
    @required
    oldUri: String
    @required
    newUri: String
}

structure FileSystemWatcher {
    @required
    globPattern: GlobPattern
    kind: WatchKind
}

structure FoldingRange {
    @required
    startLine: Integer
    startCharacter: Integer
    @required
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
    @required
    textDocument: TextDocumentIdentifier
}

structure FoldingRangeRegistrationOptions {}

structure FoldingRangeWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure FormattingOptions {
    @required
    tabSize: Integer
    @required
    insertSpaces: Boolean
    trimTrailingWhitespace: Boolean
    insertFinalNewline: Boolean
    trimFinalNewlines: Boolean
}

structure FullDocumentDiagnosticReport {
    @required
    kind: String
    resultId: String
    @required
    items: ListOf_Diagnostic
}

structure GeneralClientCapabilities {
    staleRequestSupport: StaleRequestSupportOptions
    regularExpressions: RegularExpressionsClientCapabilities
    markdown: MarkdownClientCapabilities
    positionEncodings: ListOf_PositionEncodingKind
}

structure Hover {
    @required
    contents: AnonymousUnion
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
    @required
    retry: Boolean
}

structure InitializeParams {}

structure InitializeResult {
    @required
    capabilities: ServerCapabilities
    serverInfo: ServerInfo
}

structure InlayHint {
    @required
    position: Position
    @required
    label: StringOrListOfInlayHintLabelPart
    kind: InlayHintKind
    textEdits: ListOf_TextEdit
    tooltip: StringOrMarkupContent
    paddingLeft: Boolean
    paddingRight: Boolean
    data: LSPAny
}

structure InlayHintClientCapabilities {
    dynamicRegistration: Boolean
    resolveSupport: ClientInlayHintResolveOptions
}

structure InlayHintLabelPart {
    @required
    value: String
    tooltip: StringOrMarkupContent
    location: Location
    command: Command
}

structure InlayHintOptions {
    resolveProvider: Boolean
}

structure InlayHintParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
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
    @required
    triggerKind: InlineCompletionTriggerKind
    selectedCompletionInfo: SelectedCompletionInfo
}

structure InlineCompletionItem {
    @required
    insertText: StringUnion
    filterText: String
    range: Range
    command: Command
}

structure InlineCompletionList {
    @required
    items: ListOf_InlineCompletionItem
}

structure InlineCompletionOptions {}

structure InlineCompletionParams {
    @required
    context: InlineCompletionContext
}

structure InlineCompletionRegistrationOptions {}

structure InlineValueClientCapabilities {
    dynamicRegistration: Boolean
}

structure InlineValueContext {
    @required
    frameId: Integer
    @required
    stoppedLocation: Range
}

structure InlineValueEvaluatableExpression {
    @required
    range: Range
    expression: String
}

structure InlineValueOptions {}

structure InlineValueParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    range: Range
    @required
    context: InlineValueContext
}

structure InlineValueRegistrationOptions {}

structure InlineValueText {
    @required
    range: Range
    @required
    text: String
}

structure InlineValueVariableLookup {
    @required
    range: Range
    variableName: String
    @required
    caseSensitiveLookup: Boolean
}

structure InlineValueWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure InsertReplaceEdit {
    @required
    newText: String
    @required
    insert: Range
    @required
    replace: Range
}

structure LinkedEditingRangeClientCapabilities {
    dynamicRegistration: Boolean
}

structure LinkedEditingRangeOptions {}

structure LinkedEditingRangeParams {}

structure LinkedEditingRangeRegistrationOptions {}

structure LinkedEditingRanges {
    @required
    ranges: ListOf_Range
    wordPattern: String
}

structure Location {
    @required
    uri: String
    @required
    range: Range
}

structure LocationLink {
    originSelectionRange: Range
    @required
    targetUri: String
    @required
    targetRange: Range
    @required
    targetSelectionRange: Range
}

structure LocationUriOnly {
    @required
    uri: String
}

structure LogMessageParams {
    @required
    type: MessageType
    @required
    message: String
}

structure LogTraceParams {
    @required
    message: String
    verbose: String
}

structure MarkdownClientCapabilities {
    @required
    parser: String
    version: String
    allowedTags: ListOf_String
}

structure MarkedStringWithLanguage {
    @required
    language: String
    @required
    value: String
}

structure MarkupContent {
    @required
    kind: MarkupKind
    @required
    value: String
}

structure MessageActionItem {
    @required
    title: String
}

structure Moniker {
    @required
    scheme: String
    @required
    identifier: String
    @required
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
    @required
    kind: NotebookCellKind
    @required
    document: String
    metadata: LSPObject
    executionSummary: ExecutionSummary
}

structure NotebookCellArrayChange {
    @required
    start: Integer
    @required
    deleteCount: Integer
    cells: ListOf_NotebookCell
}

structure NotebookCellLanguage {
    @required
    language: String
}

structure NotebookCellTextDocumentFilter {
    @required
    notebook: StringOrNotebookDocumentFilter
    language: String
}

structure NotebookDocument {
    @required
    uri: String
    @required
    notebookType: String
    @required
    version: Integer
    metadata: LSPObject
    @required
    cells: ListOf_NotebookCell
}

structure NotebookDocumentCellChanges {
    structure: NotebookDocumentCellChangeStructure
    data: ListOf_NotebookCell
    textContent: ListOf_NotebookDocumentCellContentChanges
}

structure NotebookDocumentCellChangeStructure {
    @required
    array: NotebookCellArrayChange
    didOpen: ListOf_TextDocumentItem
    didClose: ListOf_TextDocumentIdentifier
}

structure NotebookDocumentCellContentChanges {
    @required
    document: VersionedTextDocumentIdentifier
    @required
    changes: ListOf_TextDocumentContentChangeEvent
}

structure NotebookDocumentChangeEvent {
    metadata: LSPObject
    cells: NotebookDocumentCellChanges
}

structure NotebookDocumentClientCapabilities {
    @required
    synchronization: NotebookDocumentSyncClientCapabilities
}

structure NotebookDocumentFilterNotebookType {
    @required
    notebookType: String
    scheme: String
    pattern: GlobPattern
}

structure NotebookDocumentFilterPattern {
    notebookType: String
    scheme: String
    @required
    pattern: GlobPattern
}

structure NotebookDocumentFilterScheme {
    notebookType: String
    @required
    scheme: String
    pattern: GlobPattern
}

structure NotebookDocumentFilterWithCells {
    notebook: StringOrNotebookDocumentFilter
    @required
    cells: ListOf_NotebookCellLanguage
}

structure NotebookDocumentFilterWithNotebook {
    @required
    notebook: StringOrNotebookDocumentFilter
    cells: ListOf_NotebookCellLanguage
}

structure NotebookDocumentIdentifier {
    @required
    uri: String
}

structure NotebookDocumentSyncClientCapabilities {
    dynamicRegistration: Boolean
    executionSummarySupport: Boolean
}

structure NotebookDocumentSyncOptions {
    @required
    notebookSelector: ListOf_NotebookDocumentFilterWithUnion
    save: Boolean
}

structure NotebookDocumentSyncRegistrationOptions {}

structure OptionalVersionedTextDocumentIdentifier {
    @required
    version: IntegerOrNULL
}

structure ParameterInformation {
    @required
    label: StringUnion
    documentation: StringOrMarkupContent
}

structure PartialResultParams {
    partialResultToken: ProgressToken
}

structure Position {
    @required
    line: Integer
    @required
    character: Integer
}

structure PrepareRenameDefaultBehavior {
    @required
    defaultBehavior: Boolean
}

structure PrepareRenameParams {}

structure PrepareRenamePlaceholder {
    @required
    range: Range
    @required
    placeholder: String
}

structure PreviousResultId {
    @required
    uri: String
    @required
    value: String
}

structure ProgressParams {
    @required
    token: ProgressToken
    @required
    value: LSPAny
}

structure PublishDiagnosticsClientCapabilities {
    versionSupport: Boolean
}

structure PublishDiagnosticsParams {
    @required
    uri: String
    version: Integer
    @required
    diagnostics: ListOf_Diagnostic
}

structure Range {
    @required
    start: Position
    @required
    end: Position
}

structure ReferenceClientCapabilities {
    dynamicRegistration: Boolean
}

structure ReferenceContext {
    @required
    includeDeclaration: Boolean
}

structure ReferenceOptions {}

structure ReferenceParams {
    @required
    context: ReferenceContext
}

structure ReferenceRegistrationOptions {}

structure Registration {
    @required
    id: String
    @required
    method: String
    registerOptions: LSPAny
}

structure RegistrationParams {
    @required
    registrations: ListOf_Registration
}

structure RegularExpressionsClientCapabilities {
    @required
    engine: RegularExpressionEngineKind
    version: String
}

structure RelatedFullDocumentDiagnosticReport {
    relatedDocuments: MapOf_String_to_DocumentDiagnosticReportUnion
}

structure RelatedUnchangedDocumentDiagnosticReport {
    relatedDocuments: MapOf_String_to_DocumentDiagnosticReportUnion
}

structure RelativePattern {
    @required
    baseUri: WorkspaceFolderOrUri
    @required
    pattern: Pattern
}

structure RenameClientCapabilities {
    dynamicRegistration: Boolean
    prepareSupport: Boolean
    prepareSupportDefaultBehavior: PrepareSupportDefaultBehavior
    honorsChangeAnnotations: Boolean
}

structure RenameFile {
    @required
    kind: String
    @required
    oldUri: String
    @required
    newUri: String
    options: RenameFileOptions
}

structure RenameFileOptions {
    overwrite: Boolean
    ignoreIfExists: Boolean
}

structure RenameFilesParams {
    @required
    files: ListOf_FileRename
}

structure RenameOptions {
    prepareProvider: Boolean
}

structure RenameParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    position: Position
    @required
    newName: String
}

structure RenameRegistrationOptions {}

structure ResourceOperation {
    @required
    kind: String
    annotationId: ChangeAnnotationIdentifier
}

structure SaveOptions {
    includeText: Boolean
}

structure SelectedCompletionInfo {
    @required
    range: Range
    @required
    text: String
}

structure SelectionRange {
    @required
    range: Range
    parent: SelectionRange
}

structure SelectionRangeClientCapabilities {
    dynamicRegistration: Boolean
}

structure SelectionRangeOptions {}

structure SelectionRangeParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    positions: ListOf_Position
}

structure SelectionRangeRegistrationOptions {}

structure SemanticTokens {
    resultId: String
    @required
    data: ListOf_Integer
}

structure SemanticTokensClientCapabilities {
    dynamicRegistration: Boolean
    @required
    requests: ClientSemanticTokensRequestOptions
    @required
    tokenTypes: ListOf_String
    @required
    tokenModifiers: ListOf_String
    @required
    formats: ListOf_TokenFormat
    overlappingTokenSupport: Boolean
    multilineTokenSupport: Boolean
    serverCancelSupport: Boolean
    augmentsSyntaxTokens: Boolean
}

structure SemanticTokensDelta {
    resultId: String
    @required
    edits: ListOf_SemanticTokensEdit
}

structure SemanticTokensDeltaParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    previousResultId: String
}

structure SemanticTokensDeltaPartialResult {
    @required
    edits: ListOf_SemanticTokensEdit
}

structure SemanticTokensEdit {
    @required
    start: Integer
    @required
    deleteCount: Integer
    data: ListOf_Integer
}

structure SemanticTokensFullDelta {
    delta: Boolean
}

structure SemanticTokensLegend {
    @required
    tokenTypes: ListOf_String
    @required
    tokenModifiers: ListOf_String
}

structure SemanticTokensOptions {
    @required
    legend: SemanticTokensLegend
    range: BooleanUnion
    full: BooleanOrSemanticTokensFullDelta
}

structure SemanticTokensParams {
    @required
    textDocument: TextDocumentIdentifier
}

structure SemanticTokensPartialResult {
    @required
    data: ListOf_Integer
}

structure SemanticTokensRangeParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    range: Range
}

structure SemanticTokensRegistrationOptions {}

structure SemanticTokensWorkspaceClientCapabilities {
    refreshSupport: Boolean
}

structure ServerCapabilities {
    positionEncoding: PositionEncodingKind
    textDocumentSync: TextDocumentSyncUnion
    notebookDocumentSync: NotebookDocumentSyncOptionsUnion
    completionProvider: CompletionOptions
    hoverProvider: BooleanOrHoverOptions
    signatureHelpProvider: SignatureHelpOptions
    declarationProvider: AnonymousUnion
    definitionProvider: BooleanOrDefinitionOptions
    typeDefinitionProvider: AnonymousUnion
    implementationProvider: AnonymousUnion
    referencesProvider: BooleanOrReferenceOptions
    documentHighlightProvider: BooleanOrDocumentHighlightOptions
    documentSymbolProvider: BooleanOrDocumentSymbolOptions
    codeActionProvider: BooleanOrCodeActionOptions
    codeLensProvider: CodeLensOptions
    documentLinkProvider: DocumentLinkOptions
    colorProvider: AnonymousUnion
    workspaceSymbolProvider: BooleanOrWorkspaceSymbolOptions
    documentFormattingProvider: BooleanOrDocumentFormattingOptions
    documentRangeFormattingProvider: BooleanOrDocumentRangeFormattingOptions
    documentOnTypeFormattingProvider: DocumentOnTypeFormattingOptions
    renameProvider: BooleanOrRenameOptions
    foldingRangeProvider: AnonymousUnion
    selectionRangeProvider: AnonymousUnion
    executeCommandProvider: ExecuteCommandOptions
    callHierarchyProvider: AnonymousUnion
    linkedEditingRangeProvider: AnonymousUnion
    semanticTokensProvider: SemanticTokensOptionsUnion
    monikerProvider: AnonymousUnion
    typeHierarchyProvider: AnonymousUnion
    inlineValueProvider: AnonymousUnion
    inlayHintProvider: AnonymousUnion
    diagnosticProvider: DiagnosticOptionsUnion
    inlineCompletionProvider: BooleanOrInlineCompletionOptions
    workspace: WorkspaceOptions
    experimental: LSPAny
}

structure ServerCompletionItemOptions {
    labelDetailsSupport: Boolean
}

structure ServerInfo {
    @required
    name: String
    version: String
}

structure SetTraceParams {
    @required
    value: TraceValue
}

structure ShowDocumentClientCapabilities {
    @required
    support: Boolean
}

structure ShowDocumentParams {
    @required
    uri: String
    external: Boolean
    takeFocus: Boolean
    selection: Range
}

structure ShowDocumentResult {
    @required
    success: Boolean
}

structure ShowMessageParams {
    @required
    type: MessageType
    @required
    message: String
}

structure ShowMessageRequestClientCapabilities {
    messageActionItem: ClientShowMessageActionItemOptions
}

structure ShowMessageRequestParams {
    @required
    type: MessageType
    @required
    message: String
    actions: ListOf_MessageActionItem
}

structure SignatureHelp {
    @required
    signatures: ListOf_SignatureInformation
    activeSignature: Integer
    activeParameter: UintegerOrNULL
}

structure SignatureHelpClientCapabilities {
    dynamicRegistration: Boolean
    signatureInformation: ClientSignatureInformationOptions
    contextSupport: Boolean
}

structure SignatureHelpContext {
    @required
    triggerKind: SignatureHelpTriggerKind
    triggerCharacter: String
    @required
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
    @required
    label: String
    documentation: StringOrMarkupContent
    parameters: ListOf_ParameterInformation
    activeParameter: UintegerOrNULL
}

structure SnippetTextEdit {
    @required
    range: Range
    @required
    snippet: StringValue
    annotationId: ChangeAnnotationIdentifier
}

structure StaleRequestSupportOptions {
    @required
    cancel: Boolean
    @required
    retryOnContentModified: ListOf_String
}

structure StaticRegistrationOptions {
    id: String
}

structure StringValue {
    @required
    kind: String
    @required
    value: String
}

structure SymbolInformation {
    deprecated: Boolean
    @required
    location: Location
}

structure TextDocumentChangeRegistrationOptions {
    @required
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
    @required
    range: Range
    rangeLength: Integer
    @required
    text: String
}

structure TextDocumentContentChangeWholeDocument {
    @required
    text: String
}

structure TextDocumentContentClientCapabilities {
    dynamicRegistration: Boolean
}

structure TextDocumentContentOptions {
    @required
    schemes: ListOf_String
}

structure TextDocumentContentParams {
    @required
    uri: String
}

structure TextDocumentContentRefreshParams {
    @required
    uri: String
}

structure TextDocumentContentRegistrationOptions {}

structure TextDocumentContentResult {
    @required
    text: String
}

structure TextDocumentEdit {
    @required
    textDocument: OptionalVersionedTextDocumentIdentifier
    @required
    edits: ListOf_TextEditUnion
}

structure TextDocumentFilterClientCapabilities {
    relativePatternSupport: Boolean
}

structure TextDocumentFilterLanguage {
    @required
    language: String
    scheme: String
    pattern: GlobPattern
}

structure TextDocumentFilterPattern {
    language: String
    scheme: String
    @required
    pattern: GlobPattern
}

structure TextDocumentFilterScheme {
    language: String
    @required
    scheme: String
    pattern: GlobPattern
}

structure TextDocumentIdentifier {
    @required
    uri: String
}

structure TextDocumentItem {
    @required
    uri: String
    @required
    languageId: LanguageKind
    @required
    version: Integer
    @required
    text: String
}

structure TextDocumentPositionParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    position: Position
}

structure TextDocumentRegistrationOptions {
    @required
    documentSelector: DocumentSelectorOrNULL
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
    save: BooleanOrSaveOptions
}

structure TextEdit {
    @required
    range: Range
    @required
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
    @required
    name: String
    @required
    kind: SymbolKind
    tags: ListOf_SymbolTag
    detail: String
    @required
    uri: String
    @required
    range: Range
    @required
    selectionRange: Range
    data: LSPAny
}

structure TypeHierarchyOptions {}

structure TypeHierarchyPrepareParams {}

structure TypeHierarchyRegistrationOptions {}

structure TypeHierarchySubtypesParams {
    @required
    item: TypeHierarchyItem
}

structure TypeHierarchySupertypesParams {
    @required
    item: TypeHierarchyItem
}

structure UnchangedDocumentDiagnosticReport {
    @required
    kind: String
    @required
    resultId: String
}

structure Unregistration {
    @required
    id: String
    @required
    method: String
}

structure UnregistrationParams {
    @required
    unregisterations: ListOf_Unregistration
}

structure VersionedNotebookDocumentIdentifier {
    @required
    version: Integer
    @required
    uri: String
}

structure VersionedTextDocumentIdentifier {
    @required
    version: Integer
}

structure WillSaveTextDocumentParams {
    @required
    textDocument: TextDocumentIdentifier
    @required
    reason: TextDocumentSaveReason
}

structure WindowClientCapabilities {
    workDoneProgress: Boolean
    showMessage: ShowMessageRequestClientCapabilities
    showDocument: ShowDocumentClientCapabilities
}

structure WorkDoneProgressBegin {
    @required
    kind: String
    @required
    title: String
    cancellable: Boolean
    message: String
    percentage: Integer
}

structure WorkDoneProgressCancelParams {
    @required
    token: ProgressToken
}

structure WorkDoneProgressCreateParams {
    @required
    token: ProgressToken
}

structure WorkDoneProgressEnd {
    @required
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
    @required
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
    @required
    previousResultIds: ListOf_PreviousResultId
}

structure WorkspaceDiagnosticReport {
    @required
    items: ListOf_WorkspaceDocumentDiagnosticReport
}

structure WorkspaceDiagnosticReportPartialResult {
    @required
    items: ListOf_WorkspaceDocumentDiagnosticReport
}

structure WorkspaceEdit {
    changes: MapOf_String_to_ListOf_TextEdit
    documentChanges: ListOf_AnonymousUnion
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
    @required
    uri: String
    @required
    name: String
}

structure WorkspaceFoldersChangeEvent {
    @required
    added: ListOf_WorkspaceFolder
    @required
    removed: ListOf_WorkspaceFolder
}

structure WorkspaceFoldersInitializeParams {
    workspaceFolders: ListOfWorkspaceFolderOrNULL
}

structure WorkspaceFoldersServerCapabilities {
    supported: Boolean
    changeNotifications: StringOrBoolean
}

structure WorkspaceFullDocumentDiagnosticReport {
    @required
    uri: String
    @required
    version: IntegerOrNULL
}

structure WorkspaceOptions {
    workspaceFolders: WorkspaceFoldersServerCapabilities
    fileOperations: FileOperationOptions
    textDocumentContent: TextDocumentContentOptionsUnion
}

structure WorkspaceSymbol {
    @required
    location: LocationUnion
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
    @required
    query: String
}

structure WorkspaceSymbolRegistrationOptions {}

structure WorkspaceUnchangedDocumentDiagnosticReport {
    @required
    uri: String
    @required
    version: IntegerOrNULL
}

union AnonymousUnion {
    case0: Boolean
    case1: InlayHintOptions
    case2: InlayHintRegistrationOptions
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

union BooleanOrInlineCompletionOptions {
    case0: Boolean
    case1: InlineCompletionOptions
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
    case1: Unit
}

union DiagnosticOptionsUnion {
    case0: DiagnosticOptions
    case1: DiagnosticRegistrationOptions
}

union DocumentDiagnosticReportUnion {
    case0: FullDocumentDiagnosticReport
    case1: UnchangedDocumentDiagnosticReport
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

union IntegerOrNULL {
    case0: Integer
    case1: Unit
}

union IntegerOrString {
    case0: Integer
    case1: String
}

union ListOfWorkspaceFolderOrNULL {
    case0: ListOf_WorkspaceFolder
    case1: Unit
}

union LocationUnion {
    case0: Location
    case1: LocationUriOnly
}

union NotebookDocumentFilterWithUnion {
    case0: NotebookDocumentFilterWithNotebook
    case1: NotebookDocumentFilterWithCells
}

union NotebookDocumentSyncOptionsUnion {
    case0: NotebookDocumentSyncOptions
    case1: NotebookDocumentSyncRegistrationOptions
}

union RangeUnion {
    case0: Range
    case1: EditRangeWithInsertReplace
}

union SemanticTokensOptionsUnion {
    case0: SemanticTokensOptions
    case1: SemanticTokensRegistrationOptions
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
    case1: Tuple_of_Integer
}

union TextDocumentContentOptionsUnion {
    case0: TextDocumentContentOptions
    case1: TextDocumentContentRegistrationOptions
}

union TextDocumentSyncUnion {
    case0: TextDocumentSyncOptions
    case1: TextDocumentSyncKind
}

union TextEditUnion {
    case0: TextEdit
    case1: AnnotatedTextEdit
    case2: SnippetTextEdit
}

union UintegerOrNULL {
    case0: Integer
    case1: Unit
}

union WorkspaceFolderOrUri {
    case0: WorkspaceFolder
    case1: String
}

list ListOf_AnonymousUnion {
    member: AnonymousUnion
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

list ListOf_TextEditUnion {
    member: TextEditUnion
}

list ListOf_TokenFormat {
    member: TokenFormat
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

list Tuple_of_Integer {
    member: Integer
}

map MapOf_ChangeAnnotationIdentifier_to_ChangeAnnotation {
    key: ChangeAnnotationIdentifier
    value: ChangeAnnotation
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
    Replace = 1
    Merge = 2
}

string ChangeAnnotationIdentifier

enum CodeActionKind {
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

intEnum CodeActionTag {
    LLMGenerated = 1
}

intEnum CodeActionTriggerKind {
    Invoked = 1
    Automatic = 2
}

intEnum CompletionItemKind {
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

intEnum CompletionItemTag {
    Deprecated = 1
}

intEnum CompletionTriggerKind {
    Invoked = 1
    TriggerCharacter = 2
    TriggerForIncompleteCompletions = 3
}

string Declaration

string DeclarationLink

string Definition

string DefinitionLink

intEnum DiagnosticSeverity {
    Error = 1
    Warning = 2
    Information = 3
    Hint = 4
}

intEnum DiagnosticTag {
    Unnecessary = 1
    Deprecated = 2
}

string DocumentDiagnosticReport

enum DocumentDiagnosticReportKind {
    Full = "full"
    Unchanged = "unchanged"
}

string DocumentFilter

intEnum DocumentHighlightKind {
    Text = 1
    Read = 2
    Write = 3
}

string DocumentSelector

intEnum ErrorCodes {
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

intEnum FileChangeType {
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

intEnum InlayHintKind {
    Type = 1
    Parameter = 2
}

intEnum InlineCompletionTriggerKind {
    Invoked = 1
    Automatic = 2
}

string InlineValue

intEnum InsertTextFormat {
    PlainText = 1
    Snippet = 2
}

intEnum InsertTextMode {
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

intEnum LSPErrorCodes {
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

intEnum MessageType {
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

intEnum NotebookCellKind {
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

intEnum PrepareSupportDefaultBehavior {
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

intEnum SignatureHelpTriggerKind {
    Invoked = 1
    TriggerCharacter = 2
    ContentChange = 3
}

intEnum SymbolKind {
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

intEnum SymbolTag {
    Deprecated = 1
}

string TextDocumentContentChangeEvent

string TextDocumentFilter

intEnum TextDocumentSaveReason {
    Manual = 1
    AfterDelay = 2
    FocusOut = 3
}

intEnum TextDocumentSyncKind {
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

intEnum WatchKind {
    Create = 1
    Change = 2
    Delete = 4
}

string WorkspaceDocumentDiagnosticReport
