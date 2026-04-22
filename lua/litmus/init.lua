local M = {}

M.palette = {
  litmus_0 = "#1a1a1a",
  litmus_1 = "#2d2d2d",
  litmus_2 = "#454545",
  litmus_3 = "#5c5c5c",
  litmus_4 = "#737373",
  litmus_5 = "#8a8a8a",
  litmus_6 = "#a1a1a1",
  litmus_7 = "#c4c4c4",
  litmus_8 = "#d7e9f4",
  litmus_9 = "#f7fcff",

  primary = "#be185d",
  secondary = "#9f1239",

  error = "#dc2626",
  warning = "#644696",
  info = "#2563eb",
  hint = "#737373",

  add = "#16a34a",
  change = "#ca8a04",
  delete = "#dc2626",
}

function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "litmus"
  vim.o.background = "light"

  local p = M.palette
  local function hi(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
  end

  -- EDITOR ------------------------------------------------

  hi("Normal",      { fg = p.litmus_0, bg = p.litmus_9 })
  hi("NormalNC",    { fg = p.litmus_2, bg = p.litmus_9 })
  hi("NormalFloat", { fg = p.litmus_0, bg = p.litmus_8 })
  hi("FloatBorder", { fg = p.litmus_5, bg = p.litmus_8 })
  hi("FloatTitle",  { fg = p.primary,  bg = p.litmus_8, bold = true })

  hi("Cursor",       { fg = p.litmus_9, bg = p.litmus_0 })
  hi("CursorLine",   { bg = p.litmus_8 })
  hi("CursorColumn", { bg = p.litmus_8 })
  hi("CursorLineNr", { fg = p.primary, bold = true })
  hi("Visual",       { fg = p.litmus_0, bg = p.litmus_8 })
  hi("VisualNOS",    { fg = p.litmus_0, bg = p.litmus_8 })

  hi("LineNr",      { fg = p.litmus_6 })
  hi("SignColumn",  { fg = p.litmus_4, bg = p.litmus_9 })
  hi("ColorColumn", { bg = p.litmus_8 })
  hi("VertSplit",   { fg = p.litmus_7, bg = p.litmus_9 })
  hi("WinSeparator",{ fg = p.litmus_7, bg = p.litmus_9 })
  hi("Folded",      { fg = p.litmus_4, bg = p.litmus_8 })
  hi("FoldColumn",  { fg = p.litmus_6, bg = p.litmus_9 })

  hi("StatusLine",   { fg = p.litmus_0, bg = p.litmus_8 })
  hi("StatusLineNC", { fg = p.litmus_5, bg = p.litmus_8 })
  hi("WinBar",       { fg = p.litmus_2, bg = p.litmus_9 })
  hi("WinBarNC",     { fg = p.litmus_5, bg = p.litmus_9 })

  hi("TabLine",     { fg = p.litmus_4, bg = p.litmus_8 })
  hi("TabLineFill", { bg = p.litmus_8 })
  hi("TabLineSel",  { fg = p.litmus_0, bg = p.litmus_9, bold = true })

  hi("Pmenu",         { fg = p.litmus_1, bg = p.litmus_8 })
  hi("PmenuSel",      { fg = p.litmus_9, bg = p.primary })
  hi("PmenuMatch",    { fg = p.primary,  bg = p.litmus_8, bold = true })
  hi("PmenuMatchSel", { fg = p.litmus_9, bg = p.primary, bold = true })
  hi("PmenuKind",     { fg = p.litmus_4, bg = p.litmus_8 })
  hi("PmenuKindSel",  { fg = p.litmus_7, bg = p.primary })
  hi("PmenuExtra",    { fg = p.litmus_5, bg = p.litmus_8 })
  hi("PmenuExtraSel", { fg = p.litmus_8, bg = p.primary })
  hi("PmenuSbar",     { bg = p.litmus_7 })
  hi("PmenuThumb",    { bg = p.litmus_3 })

  hi("Search",     { fg = p.litmus_9, bg = p.info })
  hi("IncSearch",  { fg = p.litmus_9, bg = p.primary })
  hi("CurSearch",  { fg = p.litmus_9, bg = p.primary, bold = true })
  hi("Substitute", { fg = p.litmus_9, bg = p.change })
  hi("MatchParen", { fg = p.primary,  bg = p.litmus_8, bold = true })

  hi("ModeMsg",    { fg = p.litmus_2, bold = true })
  hi("MoreMsg",    { fg = p.primary })
  hi("Question",   { fg = p.primary })
  hi("WarningMsg", { fg = p.warning })
  hi("ErrorMsg",   { fg = p.error, bold = true })

  hi("NonText",     { fg = p.litmus_6 })
  hi("SpecialKey",  { fg = p.litmus_6 })
  hi("Whitespace",  { fg = p.litmus_7 })
  hi("EndOfBuffer", { fg = p.litmus_7 })
  hi("Directory",   { fg = p.primary })
  hi("Title",       { fg = p.litmus_0, bold = true })
  hi("Conceal",     { fg = p.litmus_5 })
  hi("QuickFixLine",{ bg = p.litmus_8 })

  -- SYNTAX ------------------------------------------------

  hi("Comment", { fg = p.litmus_5, italic = true })

  hi("Constant",  { fg = p.litmus_1 })
  hi("String",    { fg = p.litmus_2 })
  hi("Character", { fg = p.litmus_2 })
  hi("Number",    { fg = p.litmus_1 })
  hi("Boolean",   { fg = p.litmus_1, bold = true })
  hi("Float",     { fg = p.litmus_1 })

  hi("Identifier", { fg = p.litmus_0 })
  hi("Function",   { fg = p.litmus_0, bold = true })

  hi("Statement",   { fg = p.primary })
  hi("Conditional", { fg = p.litmus_1 })
  hi("Repeat",      { fg = p.litmus_1 })
  hi("Label",       { fg = p.primary })
  hi("Operator",    { fg = p.litmus_3 })
  hi("Keyword",     { fg = p.litmus_1, bold = true })
  hi("Exception",   { fg = p.litmus_1 })

  hi("PreProc",   { fg = p.litmus_3 })
  hi("Include",   { fg = p.litmus_2 })
  hi("Define",    { fg = p.litmus_3 })
  hi("Macro",     { fg = p.litmus_3 })
  hi("PreCondit", { fg = p.litmus_3 })

  hi("Type",         { fg = p.litmus_1 })
  hi("StorageClass", { fg = p.litmus_2, bold = true })
  hi("Structure",    { fg = p.litmus_1 })
  hi("Typedef",      { fg = p.litmus_1 })

  hi("Special",        { fg = p.litmus_2 })
  hi("SpecialChar",    { fg = p.primary })
  hi("Tag",            { fg = p.primary })
  hi("Delimiter",      { fg = p.litmus_4 })
  hi("SpecialComment", { fg = p.litmus_4, italic = true })
  hi("Debug",          { fg = p.warning })

  hi("Underlined", { fg = p.primary, underline = true })
  hi("Error",      { fg = p.error, bold = true })
  hi("Todo",       { fg = p.primary, bold = true })

  -- TREESITTER --------------------------------------------

  hi("@variable",        { fg = p.litmus_0 })
  hi("@variable.builtin",{ fg = p.litmus_2 })
  hi("@variable.parameter", { fg = p.litmus_1 })
  hi("@variable.member", { fg = p.litmus_1 })

  hi("@constant",       { fg = p.litmus_1 })
  hi("@constant.builtin",{ fg = p.litmus_1, bold = true })
  hi("@constant.macro", { fg = p.litmus_2 })

  hi("@module", { fg = p.litmus_2 })
  hi("@label",  { fg = p.litmus_2 })

  hi("@string",               { fg = p.litmus_3 })
  hi("@string.documentation", { fg = p.litmus_4 })
  hi("@string.regexp",        { fg = p.primary })
  hi("@string.escape",        { fg = p.primary })
  hi("@string.special",       { fg = p.primary })

  hi("@character",         { fg = p.litmus_2 })
  hi("@character.special", { fg = p.primary })

  hi("@boolean",      { fg = p.litmus_1, bold = true })
  hi("@number",       { fg = p.litmus_1 })
  hi("@number.float", { fg = p.litmus_1 })

  hi("@type",            { fg = p.litmus_1 })
  hi("@type.builtin",    { fg = p.litmus_2 })
  hi("@type.definition", { fg = p.litmus_1 })

  hi("@attribute", { fg = p.litmus_3 })
  hi("@property",  { fg = p.litmus_1 })

  hi("@function",             { fg = p.secondary, bold = true })
  hi("@function.builtin",     { fg = p.litmus_1, bold = true })
  hi("@function.call",        { fg = p.litmus_0 })
  hi("@function.macro",       { fg = p.litmus_2 })
  hi("@function.method",      { fg = p.secondary, bold = true })
  hi("@function.method.call", { fg = p.litmus_0 })

  hi("@constructor", { fg = p.litmus_0, bold = true })

  hi("@operator", { fg = p.litmus_3 })

  hi("@keyword",                        { fg = p.litmus_2, bold = true })
  hi("@keyword.coroutine",              { fg = p.litmus_2, bold = true })
  hi("@keyword.function",               { fg = p.litmus_2, bold = true })
  hi("@keyword.operator",               { fg = p.litmus_3 })
  hi("@keyword.import",                 { fg = p.litmus_3 })
  hi("@keyword.storage",                { fg = p.litmus_2 })
  hi("@keyword.repeat",                 { fg = p.litmus_2 })
  hi("@keyword.return",                 { fg = p.litmus_2, bold = true })
  hi("@keyword.debug",                  { fg = p.warning })
  hi("@keyword.exception",              { fg = p.litmus_2 })
  hi("@keyword.conditional",            { fg = p.litmus_2 })
  hi("@keyword.conditional.ternary",    { fg = p.litmus_3 })
  hi("@keyword.directive",              { fg = p.litmus_3 })
  hi("@keyword.directive.define",       { fg = p.litmus_3 })

  hi("@punctuation.delimiter", { fg = p.litmus_4 })
  hi("@punctuation.bracket",   { fg = p.litmus_4 })
  hi("@punctuation.special",   { fg = p.litmus_3 })

  hi("@comment",               { fg = p.litmus_5, italic = true })
  hi("@comment.documentation", { fg = p.litmus_4, italic = true })
  hi("@comment.error",         { fg = p.error, bold = true })
  hi("@comment.warning",       { fg = p.warning, bold = true })
  hi("@comment.todo",          { fg = p.primary, bold = true })
  hi("@comment.note",          { fg = p.info })

  hi("@markup.strong",        { fg = p.litmus_0, bold = true })
  hi("@markup.italic",        { fg = p.litmus_0, italic = true })
  hi("@markup.strikethrough", { fg = p.litmus_4, strikethrough = true })
  hi("@markup.underline",     { fg = p.litmus_0, underline = true })
  hi("@markup.heading",       { fg = p.litmus_0, bold = true })
  hi("@markup.quote",         { fg = p.litmus_3, italic = true })
  hi("@markup.math",          { fg = p.litmus_2 })
  hi("@markup.environment",   { fg = p.litmus_3 })
  hi("@markup.link",          { fg = p.primary, underline = true })
  hi("@markup.link.label",    { fg = p.primary })
  hi("@markup.link.url",      { fg = p.litmus_4, underline = true })
  hi("@markup.raw",           { fg = p.litmus_3 })
  hi("@markup.raw.block",     { fg = p.litmus_3 })
  hi("@markup.list",          { fg = p.litmus_3 })
  hi("@markup.list.checked",  { fg = p.add })
  hi("@markup.list.unchecked",{ fg = p.litmus_5 })

  hi("markdownh1", { link = "@markup.heading" })
  hi("markdownh2", { link = "@markup.heading" })
  hi("markdownh3", { link = "@markup.heading" })
  hi("markdownh4", { link = "@markup.heading" })
  hi("markdownh5", { link = "@markup.heading" })
  hi("markdownh6", { link = "@markup.heading" })

  hi("@diff.plus",  { fg = p.add })
  hi("@diff.minus", { fg = p.delete })
  hi("@diff.delta", { fg = p.change })

  hi("@tag",           { fg = p.primary })
  hi("@tag.attribute", { fg = p.litmus_2 })
  hi("@tag.delimiter", { fg = p.litmus_4 })

  -- LSP SEMANTIC TOKENS -----------------------------------

  hi("LspReferenceText",  { fg = p.info, bold = true })
  hi("LspReferenceRead",  { fg = p.info, bold = true })
  hi("LspReferenceWrite", { fg = p.info, bold = true })

  hi("csvCol0",  { fg = p.error })
  hi("csvCol1",  { fg = p.warning })
  hi("csvCol2",  { fg = p.info })
  hi("csvCol3",  { fg = p.hint })
  hi("csvCol4",  { fg = p.add })
  hi("csvCol5",  { fg = p.change })
  hi("csvCol6",  { fg = p.delete })
  hi("csvCol7",  { fg = p.warning })
  hi("csvCol8",  { fg = p.info })
  hi("csvCol9",  { fg = p.hint })
  hi("csvCol10", { fg = p.add })
  hi("csvCol11", { fg = p.change })
  hi("csvCol12", { fg = p.delete })

  hi("@lsp.type.class",         { link = "@type" })
  hi("@lsp.type.decorator",     { link = "@function" })
  hi("@lsp.type.enum",          { link = "@type" })
  hi("@lsp.type.enumMember",    { link = "@constant" })
  hi("@lsp.type.function",      { link = "@function" })
  hi("@lsp.type.interface",     { link = "@type" })
  hi("@lsp.type.macro",         { link = "@constant.macro" })
  hi("@lsp.type.method",        { link = "@function.method" })
  hi("@lsp.type.namespace",     { link = "@module" })
  hi("@lsp.type.parameter",     { link = "@variable.parameter" })
  hi("@lsp.type.property",      { link = "@property" })
  hi("@lsp.type.struct",        { link = "@type" })
  hi("@lsp.type.type",          { link = "@type" })
  hi("@lsp.type.typeParameter", { link = "@type" })
  hi("@lsp.type.variable",      { link = "@variable" })

  -- DIAGNOSTICS -------------------------------------------

  hi("DiagnosticError", { fg = p.error })
  hi("DiagnosticWarn",  { fg = p.warning })
  hi("DiagnosticInfo",  { fg = p.info })
  hi("DiagnosticHint",  { fg = p.hint })
  hi("DiagnosticOk",    { fg = p.add })

  hi("DiagnosticUnderlineError", { undercurl = true, sp = p.error })
  hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = p.warning })
  hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = p.info })
  hi("DiagnosticUnderlineHint",  { undercurl = true, sp = p.hint })
  hi("DiagnosticUnderlineOk",    { undercurl = true, sp = p.add })

  hi("DiagnosticVirtualTextError", { fg = p.error,   bg = p.litmus_9 })
  hi("DiagnosticVirtualTextWarn",  { fg = p.warning, bg = p.litmus_9 })
  hi("DiagnosticVirtualTextInfo",  { fg = p.info,    bg = p.litmus_9 })
  hi("DiagnosticVirtualTextHint",  { fg = p.hint,    bg = p.litmus_9 })
  hi("DiagnosticVirtualTextOk",    { fg = p.add,     bg = p.litmus_9 })

  hi("DiagnosticFloatingError", { fg = p.error })
  hi("DiagnosticFloatingWarn",  { fg = p.warning })
  hi("DiagnosticFloatingInfo",  { fg = p.info })
  hi("DiagnosticFloatingHint",  { fg = p.hint })
  hi("DiagnosticFloatingOk",    { fg = p.add })

  hi("DiagnosticSignError", { fg = p.error })
  hi("DiagnosticSignWarn",  { fg = p.warning })
  hi("DiagnosticSignInfo",  { fg = p.info })
  hi("DiagnosticSignHint",  { fg = p.hint })
  hi("DiagnosticSignOk",    { fg = p.add })

  -- DIFF --------------------------------------------------

  hi("DiffAdd",    { fg = p.add,    bg = p.litmus_9 })
  hi("DiffChange", { fg = p.change, bg = p.litmus_9 })
  hi("DiffDelete", { fg = p.delete, bg = p.litmus_9 })
  hi("DiffText",   { fg = p.change, bg = p.litmus_8, bold = true })

  hi("Added",   { fg = p.add })
  hi("Changed", { fg = p.change })
  hi("Removed", { fg = p.delete })

  -- PLUGINS -----------------------------------------------

  -- telescope
  hi("TelescopeNormal",        { fg = p.litmus_0, bg = p.litmus_9 })
  hi("TelescopeBorder",        { fg = p.litmus_6, bg = p.litmus_9 })
  hi("TelescopeTitle",         { fg = p.primary, bold = true })
  hi("TelescopePromptNormal",  { fg = p.litmus_0, bg = p.litmus_8 })
  hi("TelescopePromptBorder",  { fg = p.litmus_6, bg = p.litmus_8 })
  hi("TelescopePromptTitle",   { fg = p.primary,  bg = p.litmus_8, bold = true })
  hi("TelescopePromptPrefix",  { fg = p.primary })
  hi("TelescopePreviewTitle",  { fg = p.litmus_2, bold = true })
  hi("TelescopeResultsTitle",  { fg = p.litmus_2, bold = true })
  hi("TelescopeSelection",     { fg = p.litmus_0, bg = p.litmus_8, bold = true })
  hi("TelescopeSelectionCaret",{ fg = p.primary })
  hi("TelescopeMatching",      { fg = p.primary, bold = true })

  -- nvim-cmp
  hi("CmpItemAbbrMatch",       { fg = p.primary, bold = true })
  hi("CmpItemAbbrMatchFuzzy",  { fg = p.primary })
  hi("CmpItemAbbr",            { fg = p.litmus_2 })
  hi("CmpItemAbbrDeprecated",  { fg = p.litmus_5, strikethrough = true })
  hi("CmpItemMenu",            { fg = p.litmus_5 })
  hi("CmpItemKind",            { fg = p.litmus_3 })
  hi("CmpItemKindFunction",    { fg = p.primary })
  hi("CmpItemKindMethod",      { fg = p.primary })
  hi("CmpItemKindVariable",    { fg = p.litmus_2 })
  hi("CmpItemKindKeyword",     { fg = p.litmus_3 })

  -- gitsigns
  hi("GitSignsAdd",              { fg = p.add })
  hi("GitSignsChange",           { fg = p.change })
  hi("GitSignsDelete",           { fg = p.delete })
  hi("GitSignsCurrentLineBlame", { fg = p.litmus_5 })

  -- neo-tree
  hi("NeoTreeNormal",        { fg = p.litmus_2, bg = p.litmus_9 })
  hi("NeoTreeNormalNC",      { fg = p.litmus_3, bg = p.litmus_9 })
  hi("NeoTreeDirectoryName", { fg = p.litmus_1 })
  hi("NeoTreeDirectoryIcon", { fg = p.primary })
  hi("NeoTreeRootName",      { fg = p.litmus_0, bold = true })
  hi("NeoTreeFileName",      { fg = p.litmus_2 })
  hi("NeoTreeFileIcon",      { fg = p.litmus_4 })
  hi("NeoTreeGitAdded",      { fg = p.add })
  hi("NeoTreeGitModified",   { fg = p.change })
  hi("NeoTreeGitDeleted",    { fg = p.delete })
  hi("NeoTreeGitUntracked",  { fg = p.litmus_4 })
  hi("NeoTreeIndentMarker",  { fg = p.litmus_7 })

  -- indent-blankline
  hi("IblIndent", { fg = p.litmus_8 })
  hi("IblScope",  { fg = p.litmus_6 })

  -- which-key
  hi("WhichKey",          { fg = p.primary })
  hi("WhichKeyGroup",     { fg = p.litmus_2 })
  hi("WhichKeyDesc",      { fg = p.litmus_1 })
  hi("WhichKeySeparator", { fg = p.litmus_5 })
  hi("WhichKeyValue",     { fg = p.litmus_4 })

  -- lazy.nvim
  hi("LazyButton",       { fg = p.litmus_2, bg = p.litmus_8 })
  hi("LazyButtonActive", { fg = p.litmus_9, bg = p.primary })
  hi("LazyH1",           { fg = p.litmus_9, bg = p.primary, bold = true })
  hi("LazyH2",           { fg = p.litmus_0, bold = true })
  hi("LazySpecial",      { fg = p.primary })
  hi("LazyProgressDone", { fg = p.primary })
  hi("LazyProgressTodo", { fg = p.litmus_7 })

  -- mason
  hi("MasonHeader",               { fg = p.litmus_9, bg = p.primary, bold = true })
  hi("MasonHighlight",            { fg = p.primary })
  hi("MasonHighlightBlock",       { fg = p.litmus_9, bg = p.primary })
  hi("MasonHighlightBlockBold",   { fg = p.litmus_9, bg = p.primary, bold = true })
  hi("MasonMutedBlock",           { fg = p.litmus_3, bg = p.litmus_8 })

  -- noice
  hi("NoiceCmdline",            { fg = p.litmus_0, bg = p.litmus_9 })
  hi("NoiceCmdlineIcon",        { fg = p.primary })
  hi("NoiceCmdlineIconSearch",  { fg = p.primary })
  hi("NoiceCmdlinePopupBorder", { fg = p.litmus_6 })
  hi("NoiceCmdlinePopupTitle",  { fg = p.primary })

  -- nvim-notify
  hi("NotifyERRORBorder", { fg = p.error })
  hi("NotifyERRORIcon",   { fg = p.error })
  hi("NotifyERRORTitle",  { fg = p.error, bold = true })
  hi("NotifyWARNBorder",  { fg = p.warning })
  hi("NotifyWARNIcon",    { fg = p.warning })
  hi("NotifyWARNTitle",   { fg = p.warning, bold = true })
  hi("NotifyINFOBorder",  { fg = p.info })
  hi("NotifyINFOIcon",    { fg = p.info })
  hi("NotifyINFOTitle",   { fg = p.info, bold = true })
  hi("NotifyDEBUGBorder", { fg = p.litmus_5 })
  hi("NotifyDEBUGIcon",   { fg = p.litmus_5 })
  hi("NotifyDEBUGTitle",  { fg = p.litmus_5, bold = true })
  hi("NotifyTRACEBorder", { fg = p.secondary })
  hi("NotifyTRACEIcon",   { fg = p.secondary })
  hi("NotifyTRACETitle",  { fg = p.secondary, bold = true })

  -- mini.nvim
  hi("MiniStatuslineModeNormal",  { fg = p.litmus_9, bg = p.primary,   bold = true })
  hi("MiniStatuslineModeInsert",  { fg = p.litmus_9, bg = p.add,       bold = true })
  hi("MiniStatuslineModeVisual",  { fg = p.litmus_9, bg = p.secondary, bold = true })
  hi("MiniStatuslineModeReplace", { fg = p.litmus_9, bg = p.delete,    bold = true })
  hi("MiniStatuslineModeCommand", { fg = p.litmus_9, bg = p.change,    bold = true })
  hi("MiniStatuslineModeOther",   { fg = p.litmus_9, bg = p.litmus_4,  bold = true })
  hi("MiniStatuslineFilename",    { fg = p.litmus_2, bg = p.litmus_8 })
  hi("MiniStatuslineFileinfo",    { fg = p.litmus_3, bg = p.litmus_8 })
  hi("MiniStatuslineDevinfo",     { fg = p.litmus_3, bg = p.litmus_8 })
  hi("MiniStatuslineInactive",    { fg = p.litmus_5, bg = p.litmus_8 })

  -- mini.pick
  hi("MiniPickBorder",        { fg = p.litmus_6, bg = p.litmus_8 })
  hi("MiniPickBorderBusy",    { fg = p.warning,  bg = p.litmus_8 })
  hi("MiniPickBorderText",    { fg = p.primary,  bg = p.litmus_8, bold = true })
  hi("MiniPickCursor",        { nocombine = true, blend = 100 })
  hi("MiniPickHeader",        { fg = p.primary,  bold = true })
  hi("MiniPickIconDirectory", { fg = p.primary })
  hi("MiniPickIconFile",      { fg = p.litmus_4 })
  hi("MiniPickMatchCurrent",  { fg = p.litmus_0, bg = p.litmus_7, bold = true })
  hi("MiniPickMatchMarked",   { fg = p.litmus_0, bg = p.litmus_7 })
  hi("MiniPickMatchRanges",   { fg = p.secondary, bold = true })
  hi("MiniPickNormal",        { fg = p.litmus_0, bg = p.litmus_8 })
  hi("MiniPickPreviewLine",   { bg = p.litmus_7 })
  hi("MiniPickPreviewRegion", { link = "IncSearch" })
  hi("MiniPickPrompt",        { fg = p.primary,  bold = true })
  hi("MiniPickPromptCaret",   { link = "MiniPickPrompt" })
  hi("MiniPickPromptPrefix",  { link = "MiniPickPrompt" })

  -- snacks.nvim
  hi("SnacksNormal",              { fg = p.litmus_0, bg = p.litmus_9 })
  hi("SnacksDashboardHeader",     { fg = p.primary, bold = true })
  hi("SnacksDashboardFooter",     { fg = p.litmus_5 })
  hi("SnacksDashboardDesc",       { fg = p.litmus_2 })
  hi("SnacksDashboardIcon",       { fg = p.primary })
  hi("SnacksDashboardKey",        { fg = p.primary, bold = true })
  hi("SnacksDashboardSpecial",    { fg = p.secondary })

  -- snacks.picker
  hi("SnacksPickerListCursorLine", { fg = p.litmus_9, bg = p.primary, bold = true })
  hi("SnacksPickerMatch",          { fg = p.secondary, bold = true })
  hi("SnacksPickerDir",            { fg = p.litmus_4 })
  hi("SnacksPickerFile",           { fg = p.litmus_0 })
  hi("SnacksPickerSelected",       { fg = p.primary, bold = true })
  hi("SnacksPickerBorder",         { fg = p.litmus_6, bg = p.litmus_8 })
  hi("SnacksPickerTitle",          { fg = p.primary,  bg = p.litmus_8, bold = true })
  hi("SnacksPickerFooter",         { fg = p.litmus_5, bg = p.litmus_8 })
  hi("SnacksPickerPrompt",         { fg = p.primary,  bold = true })

  -- oil.nvim
  hi("OilDir",     { fg = p.primary, bold = true })
  hi("OilDirIcon", { fg = p.primary })
  hi("OilFile",    { fg = p.litmus_1 })
  hi("OilCreate",  { fg = p.add })
  hi("OilDelete",  { fg = p.delete })
  hi("OilMove",    { fg = p.change })
  hi("OilCopy",    { fg = p.info })

  -- flash.nvim
  hi("FlashLabel",   { fg = p.litmus_9, bg = p.primary, bold = true })
  hi("FlashMatch",   { fg = p.litmus_3, bg = p.litmus_8 })
  hi("FlashCurrent", { fg = p.litmus_0, bg = p.litmus_7 })

  -- trouble.nvim
  hi("TroubleNormal",   { fg = p.litmus_2, bg = p.litmus_9 })
  hi("TroubleNormalNC", { fg = p.litmus_3, bg = p.litmus_9 })

  -- harpoon
  hi("HarpoonWindow", { fg = p.litmus_0, bg = p.litmus_9 })
  hi("HarpoonBorder", { fg = p.litmus_6, bg = p.litmus_9 })

  -- leap.nvim
  hi("LeapMatch",          { fg = p.primary,   bold = true, underline = true })
  hi("LeapLabelPrimary",   { fg = p.litmus_9, bg = p.primary,   bold = true })
  hi("LeapLabelSecondary", { fg = p.litmus_9, bg = p.secondary, bold = true })
  hi("LeapBackdrop",       { fg = p.litmus_5 })

  -- nvim-navic
  hi("NavicText",                  { fg = p.litmus_3 })
  hi("NavicSeparator",             { fg = p.litmus_5 })
  hi("NavicIconsFile",             { fg = p.litmus_4 })
  hi("NavicIconsModule",           { fg = p.litmus_3 })
  hi("NavicIconsNamespace",        { fg = p.litmus_3 })
  hi("NavicIconsPackage",          { fg = p.litmus_3 })
  hi("NavicIconsClass",            { fg = p.litmus_2 })
  hi("NavicIconsMethod",           { fg = p.primary })
  hi("NavicIconsProperty",         { fg = p.litmus_2 })
  hi("NavicIconsField",            { fg = p.litmus_2 })
  hi("NavicIconsConstructor",      { fg = p.primary })
  hi("NavicIconsEnum",             { fg = p.litmus_2 })
  hi("NavicIconsInterface",        { fg = p.litmus_2 })
  hi("NavicIconsFunction",         { fg = p.primary })
  hi("NavicIconsVariable",         { fg = p.litmus_2 })
  hi("NavicIconsConstant",         { fg = p.litmus_1 })
  hi("NavicIconsString",           { fg = p.litmus_3 })
  hi("NavicIconsNumber",           { fg = p.litmus_1 })
  hi("NavicIconsBoolean",          { fg = p.litmus_1 })
  hi("NavicIconsArray",            { fg = p.litmus_3 })
  hi("NavicIconsObject",           { fg = p.litmus_2 })
  hi("NavicIconsKey",              { fg = p.litmus_2 })
  hi("NavicIconsNull",             { fg = p.litmus_4 })
  hi("NavicIconsEnumMember",       { fg = p.litmus_2 })
  hi("NavicIconsStruct",           { fg = p.litmus_2 })
  hi("NavicIconsEvent",            { fg = p.secondary })
  hi("NavicIconsOperator",         { fg = p.litmus_3 })
  hi("NavicIconsTypeParameter",    { fg = p.litmus_2 })

  -- spell
  hi("SpellBad",   { undercurl = true, sp = p.error })
  hi("SpellCap",   { undercurl = true, sp = p.warning })
  hi("SpellLocal", { undercurl = true, sp = p.info })
  hi("SpellRare",  { undercurl = true, sp = p.hint })

  -- health
  hi("healthError",   { fg = p.error })
  hi("healthWarning", { fg = p.warning })
  hi("healthSuccess", { fg = p.add })

  -- quickfix
  hi("qffilename", { fg = p.primary })
end

function M.colors()
  return M.palette
end

return M
