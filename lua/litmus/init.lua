local M = {}
local bg = "light"

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
  local colorbuddy = require("colorbuddy")
  colorbuddy.colorscheme("litmus", bg)

  local Color = colorbuddy.Color
  local c = colorbuddy.colors
  local Group = colorbuddy.Group
  local g = colorbuddy.groups
  local s = colorbuddy.styles

  for name, hex in pairs(M.palette) do
    Color.new(name, hex)
  end
  Color.new("none", "NONE")

  -- EDITOR ------------------------------------------------

  Group.new("Normal", c.litmus_0, c.litmus_9)
  Group.new("NormalNC", c.litmus_2, c.litmus_9)
  Group.new("NormalFloat", c.litmus_0, c.litmus_9)
  Group.new("FloatBorder", c.litmus_6, c.litmus_9)
  Group.new("FloatTitle", c.primary, c.litmus_9, s.bold)

  Group.new("Cursor", c.litmus_9, c.litmus_0)
  Group.new("CursorLine", nil, c.litmus_8)
  Group.new("CursorColumn", nil, c.litmus_8)
  Group.new("CursorLineNr", c.primary, nil, s.bold)
  Group.new("Visual", c.litmus_0, c.litmus_8)
  Group.new("VisualNOS", c.litmus_0, c.litmus_8)

  Group.new("LineNr", c.litmus_6)
  Group.new("SignColumn", c.litmus_4, c.litmus_9)
  Group.new("ColorColumn", nil, c.litmus_8)
  Group.new("VertSplit", c.litmus_7, c.litmus_9)
  Group.new("WinSeparator", c.litmus_7, c.litmus_9)
  Group.new("Folded", c.litmus_4, c.litmus_8)
  Group.new("FoldColumn", c.litmus_6, c.litmus_9)

  Group.new("StatusLine", c.litmus_0, c.litmus_8)
  Group.new("StatusLineNC", c.litmus_5, c.litmus_8)
  Group.new("WinBar", c.litmus_2, c.litmus_9)
  Group.new("WinBarNC", c.litmus_5, c.litmus_9)

  Group.new("TabLine", c.litmus_4, c.litmus_8)
  Group.new("TabLineFill", nil, c.litmus_8)
  Group.new("TabLineSel", c.litmus_0, c.litmus_9, s.bold)

  Group.new("Pmenu", c.litmus_0, c.litmus_9)
  Group.new("PmenuSel", c.litmus_9, c.primary)
  Group.new("PmenuSbar", nil, c.litmus_8)
  Group.new("PmenuThumb", nil, c.litmus_6)

  Group.new("Search", c.litmus_0, c.litmus_7)
  Group.new("IncSearch", c.litmus_9, c.primary)
  Group.new("CurSearch", c.litmus_9, c.primary, s.bold)
  Group.new("Substitute", c.litmus_9, c.change)
  Group.new("MatchParen", c.primary, c.litmus_8, s.bold)

  Group.new("ModeMsg", c.litmus_2, nil, s.bold)
  Group.new("MoreMsg", c.primary)
  Group.new("Question", c.primary)
  Group.new("WarningMsg", c.warning)
  Group.new("ErrorMsg", c.error, nil, s.bold)

  Group.new("NonText", c.litmus_6)
  Group.new("SpecialKey", c.litmus_6)
  Group.new("Whitespace", c.litmus_7)
  Group.new("EndOfBuffer", c.litmus_7)
  Group.new("Directory", c.primary)
  Group.new("Title", c.litmus_0, nil, s.bold)
  Group.new("Conceal", c.litmus_5)
  Group.new("QuickFixLine", nil, c.litmus_8)

  -- SYNTAX ------------------------------------------------

  Group.new("Comment", c.litmus_5, nil, s.italic)

  Group.new("Constant", c.litmus_1)
  Group.new("String", c.litmus_2)
  Group.new("Character", c.litmus_2)
  Group.new("Number", c.litmus_1)
  Group.new("Boolean", c.litmus_1, nil, s.bold)
  Group.new("Float", c.litmus_1)

  Group.new("Identifier", c.litmus_0)
  Group.new("Function", c.litmus_0, nil, s.bold)

  Group.new("Statement", c.litmus_1)
  Group.new("Conditional", c.litmus_1)
  Group.new("Repeat", c.litmus_1)
  Group.new("Label", c.litmus_1)
  Group.new("Operator", c.litmus_3)
  Group.new("Keyword", c.litmus_1, nil, s.bold)
  Group.new("Exception", c.litmus_1)

  Group.new("PreProc", c.litmus_3)
  Group.new("Include", c.litmus_2)
  Group.new("Define", c.litmus_3)
  Group.new("Macro", c.litmus_3)
  Group.new("PreCondit", c.litmus_3)

  Group.new("Type", c.litmus_1)
  Group.new("StorageClass", c.litmus_2)
  Group.new("Structure", c.litmus_1)
  Group.new("Typedef", c.litmus_1)

  Group.new("Special", c.litmus_2)
  Group.new("SpecialChar", c.primary)
  Group.new("Tag", c.primary)
  Group.new("Delimiter", c.litmus_4)
  Group.new("SpecialComment", c.litmus_4, nil, s.italic)
  Group.new("Debug", c.warning)

  Group.new("Underlined", c.primary, nil, s.underline)
  Group.new("Error", c.error, nil, s.bold)
  Group.new("Todo", c.primary, c.litmus_8, s.bold)

  -- TREESITTER --------------------------------------------

  Group.new("@variable", c.litmus_0)
  Group.new("@variable.builtin", c.litmus_2)
  Group.new("@variable.parameter", c.litmus_1)
  Group.new("@variable.member", c.litmus_1)

  Group.new("@constant", c.litmus_1)
  Group.new("@constant.builtin", c.litmus_1, nil, s.bold)
  Group.new("@constant.macro", c.litmus_2)

  Group.new("@module", c.litmus_2)
  Group.new("@label", c.litmus_2)

  Group.new("@string", c.litmus_3)
  Group.new("@string.documentation", c.litmus_4)
  Group.new("@string.regexp", c.primary)
  Group.new("@string.escape", c.primary)
  Group.new("@string.special", c.primary)

  Group.new("@character", c.litmus_2)
  Group.new("@character.special", c.primary)

  Group.new("@boolean", c.litmus_1, nil, s.bold)
  Group.new("@number", c.litmus_1)
  Group.new("@number.float", c.litmus_1)

  Group.new("@type", c.litmus_1)
  Group.new("@type.builtin", c.litmus_2)
  Group.new("@type.definition", c.litmus_1)

  Group.new("@attribute", c.litmus_3)
  Group.new("@property", c.litmus_1)

  Group.new("@function", c.secondary, nil, s.bold)
  Group.new("@function.builtin", c.litmus_1, nil, s.bold)
  Group.new("@function.call", c.litmus_0)
  Group.new("@function.macro", c.litmus_2)
  Group.new("@function.method", c.litmus_0)
  Group.new("@function.method.call", c.litmus_0)

  Group.new("@constructor", c.litmus_0, nil, s.bold)

  Group.new("@operator", c.litmus_3)

  Group.new("@keyword", c.litmus_2, nil, s.bold)
  Group.new("@keyword.coroutine", c.litmus_2, nil, s.bold)
  Group.new("@keyword.function", c.litmus_2, nil, s.bold)
  Group.new("@keyword.operator", c.litmus_3)
  Group.new("@keyword.import", c.litmus_3)
  Group.new("@keyword.storage", c.litmus_2)
  Group.new("@keyword.repeat", c.litmus_2)
  Group.new("@keyword.return", c.litmus_2, nil, s.bold)
  Group.new("@keyword.debug", c.warning)
  Group.new("@keyword.exception", c.litmus_2)
  Group.new("@keyword.conditional", c.litmus_2)
  Group.new("@keyword.conditional.ternary", c.litmus_3)
  Group.new("@keyword.directive", c.litmus_3)
  Group.new("@keyword.directive.define", c.litmus_3)

  Group.new("@punctuation.delimiter", c.litmus_4)
  Group.new("@punctuation.bracket", c.litmus_4)
  Group.new("@punctuation.special", c.litmus_3)

  Group.new("@comment", c.litmus_5, nil, s.italic)
  Group.new("@comment.documentation", c.litmus_4, nil, s.italic)
  Group.new("@comment.error", c.error, nil, s.bold)
  Group.new("@comment.warning", c.warning, nil, s.bold)
  Group.new("@comment.todo", c.primary, nil, s.bold)
  Group.new("@comment.note", c.info)

  Group.new("@markup.strong", c.litmus_0, nil, s.bold)
  Group.new("@markup.italic", c.litmus_0, nil, s.italic)
  Group.new("@markup.strikethrough", c.litmus_4, nil, s.strikethrough)
  Group.new("@markup.underline", c.litmus_0, nil, s.underline)
  Group.new("@markup.heading", c.litmus_0, nil, s.bold)
  Group.new("@markup.quote", c.litmus_3, nil, s.italic)
  Group.new("@markup.math", c.litmus_2)
  Group.new("@markup.environment", c.litmus_3)
  Group.new("@markup.link", c.primary, nil, s.underline)
  Group.new("@markup.link.label", c.primary)
  Group.new("@markup.link.url", c.litmus_4, nil, s.underline)
  Group.new("@markup.raw", c.litmus_3)
  Group.new("@markup.raw.block", c.litmus_3)
  Group.new("@markup.list", c.litmus_3)
  Group.new("@markup.list.checked", c.add)
  Group.new("@markup.list.unchecked", c.litmus_5)

  Group.link("markdownh1", g["@markup.heading"])
  Group.link("markdownh2", g["@markup.heading"])
  Group.link("markdownh3", g["@markup.heading"])
  Group.link("markdownh4", g["@markup.heading"])
  Group.link("markdownh5", g["@markup.heading"])
  Group.link("markdownh6", g["@markup.heading"])

  Group.new("@diff.plus", c.add)
  Group.new("@diff.minus", c.delete)
  Group.new("@diff.delta", c.change)

  Group.new("@tag", c.litmus_1)
  Group.new("@tag.attribute", c.litmus_2)
  Group.new("@tag.delimiter", c.litmus_4)

  -- LSP SEMANTIC TOKENS -----------------------------------

  Group.new("LspReferenceText", c.info, nil, s.bold)
  Group.new("LspReferenceRead", c.info, nil, s.bold)
  Group.new("LspReferenceWrite", c.info, nil, s.bold)

  Group.new("@lsp.type.class", g["@type"])
  Group.new("@lsp.type.decorator", g["@function"])
  Group.new("@lsp.type.enum", g["@type"])
  Group.new("@lsp.type.enumMember", g["@constant"])
  Group.new("@lsp.type.function", g["@function"])
  Group.new("@lsp.type.interface", g["@type"])
  Group.new("@lsp.type.macro", g["@constant.macro"])
  Group.new("@lsp.type.method", g["@function.method"])
  Group.new("@lsp.type.namespace", g["@module"])
  Group.new("@lsp.type.parameter", g["@variable.parameter"])
  Group.new("@lsp.type.property", g["@property"])
  Group.new("@lsp.type.struct", g["@type"])
  Group.new("@lsp.type.type", g["@type"])
  Group.new("@lsp.type.typeParameter", g["@type"])
  Group.new("@lsp.type.variable", g["@variable"])

  -- DIAGNOSTICS -------------------------------------------

  Group.new("DiagnosticError", c.error)
  Group.new("DiagnosticWarn", c.warning)
  Group.new("DiagnosticInfo", c.info)
  Group.new("DiagnosticHint", c.hint)
  Group.new("DiagnosticOk", c.add)

  Group.new("DiagnosticUnderlineError", nil, nil, s.undercurl, c.error)
  Group.new("DiagnosticUnderlineWarn", nil, nil, s.undercurl, c.warning)
  Group.new("DiagnosticUnderlineInfo", nil, nil, s.undercurl, c.info)
  Group.new("DiagnosticUnderlineHint", nil, nil, s.undercurl, c.hint)
  Group.new("DiagnosticUnderlineOk", nil, nil, s.undercurl, c.add)

  Group.new("DiagnosticVirtualTextError", c.error, c.litmus_9)
  Group.new("DiagnosticVirtualTextWarn", c.warning, c.litmus_9)
  Group.new("DiagnosticVirtualTextInfo", c.info, c.litmus_9)
  Group.new("DiagnosticVirtualTextHint", c.hint, c.litmus_9)
  Group.new("DiagnosticVirtualTextOk", c.add, c.litmus_9)

  Group.new("DiagnosticFloatingError", c.error)
  Group.new("DiagnosticFloatingWarn", c.warning)
  Group.new("DiagnosticFloatingInfo", c.info)
  Group.new("DiagnosticFloatingHint", c.hint)
  Group.new("DiagnosticFloatingOk", c.add)

  Group.new("DiagnosticSignError", c.error)
  Group.new("DiagnosticSignWarn", c.warning)
  Group.new("DiagnosticSignInfo", c.info)
  Group.new("DiagnosticSignHint", c.hint)
  Group.new("DiagnosticSignOk", c.add)

  -- DIFF --------------------------------------------------

  Group.new("DiffAdd", c.add, c.litmus_9)
  Group.new("DiffChange", c.change, c.litmus_9)
  Group.new("DiffDelete", c.delete, c.litmus_9)
  Group.new("DiffText", c.change, c.litmus_8, s.bold)

  Group.new("Added", c.add)
  Group.new("Changed", c.change)
  Group.new("Removed", c.delete)

  -- PLUGINS -----------------------------------------------

  -- telescope
  Group.new("TelescopeNormal", c.litmus_0, c.litmus_9)
  Group.new("TelescopeBorder", c.litmus_6, c.litmus_9)
  Group.new("TelescopeTitle", c.primary, nil, s.bold)
  Group.new("TelescopePromptNormal", c.litmus_0, c.litmus_8)
  Group.new("TelescopePromptBorder", c.litmus_6, c.litmus_8)
  Group.new("TelescopePromptTitle", c.primary, c.litmus_8, s.bold)
  Group.new("TelescopePromptPrefix", c.primary)
  Group.new("TelescopePreviewTitle", c.litmus_2, nil, s.bold)
  Group.new("TelescopeResultsTitle", c.litmus_2, nil, s.bold)
  Group.new("TelescopeSelection", c.litmus_0, c.litmus_8, s.bold)
  Group.new("TelescopeSelectionCaret", c.primary)
  Group.new("TelescopeMatching", c.primary, nil, s.bold)

  -- nvim-cmp
  Group.new("CmpItemAbbrMatch", c.primary, nil, s.bold)
  Group.new("CmpItemAbbrMatchFuzzy", c.primary)
  Group.new("CmpItemAbbr", c.litmus_2)
  Group.new("CmpItemAbbrDeprecated", c.litmus_5, nil, s.strikethrough)
  Group.new("CmpItemMenu", c.litmus_5)
  Group.new("CmpItemKind", c.litmus_3)
  Group.new("CmpItemKindFunction", c.primary)
  Group.new("CmpItemKindMethod", c.primary)
  Group.new("CmpItemKindVariable", c.litmus_2)
  Group.new("CmpItemKindKeyword", c.litmus_3)

  -- gitsigns
  Group.new("GitSignsAdd", c.add)
  Group.new("GitSignsChange", c.change)
  Group.new("GitSignsDelete", c.delete)
  Group.new("GitSignsCurrentLineBlame", c.litmus_5)

  -- neo-tree
  Group.new("NeoTreeNormal", c.litmus_2, c.litmus_9)
  Group.new("NeoTreeNormalNC", c.litmus_3, c.litmus_9)
  Group.new("NeoTreeDirectoryName", c.litmus_1)
  Group.new("NeoTreeDirectoryIcon", c.primary)
  Group.new("NeoTreeRootName", c.litmus_0, nil, s.bold)
  Group.new("NeoTreeFileName", c.litmus_2)
  Group.new("NeoTreeFileIcon", c.litmus_4)
  Group.new("NeoTreeGitAdded", c.add)
  Group.new("NeoTreeGitModified", c.change)
  Group.new("NeoTreeGitDeleted", c.delete)
  Group.new("NeoTreeGitUntracked", c.litmus_4)
  Group.new("NeoTreeIndentMarker", c.litmus_7)

  -- indent-blankline
  Group.new("IblIndent", c.litmus_8)
  Group.new("IblScope", c.litmus_6)

  -- which-key
  Group.new("WhichKey", c.primary)
  Group.new("WhichKeyGroup", c.litmus_2)
  Group.new("WhichKeyDesc", c.litmus_1)
  Group.new("WhichKeySeparator", c.litmus_5)
  Group.new("WhichKeyValue", c.litmus_4)

  -- lazy.nvim
  Group.new("LazyButton", c.litmus_2, c.litmus_8)
  Group.new("LazyButtonActive", c.litmus_9, c.primary)
  Group.new("LazyH1", c.litmus_9, c.primary, s.bold)
  Group.new("LazyH2", c.litmus_0, nil, s.bold)
  Group.new("LazySpecial", c.primary)
  Group.new("LazyProgressDone", c.primary)
  Group.new("LazyProgressTodo", c.litmus_7)

  -- mason
  Group.new("MasonHeader", c.litmus_9, c.primary, s.bold)
  Group.new("MasonHighlight", c.primary)
  Group.new("MasonHighlightBlock", c.litmus_9, c.primary)
  Group.new("MasonHighlightBlockBold", c.litmus_9, c.primary, s.bold)
  Group.new("MasonMutedBlock", c.litmus_3, c.litmus_8)

  -- noice
  Group.new("NoiceCmdline", c.litmus_0, c.litmus_9)
  Group.new("NoiceCmdlineIcon", c.primary)
  Group.new("NoiceCmdlineIconSearch", c.primary)
  Group.new("NoiceCmdlinePopupBorder", c.litmus_6)
  Group.new("NoiceCmdlinePopupTitle", c.primary)

  -- nvim-notify
  Group.new("NotifyERRORBorder", c.error)
  Group.new("NotifyERRORIcon", c.error)
  Group.new("NotifyERRORTitle", c.error, nil, s.bold)
  Group.new("NotifyWARNBorder", c.warning)
  Group.new("NotifyWARNIcon", c.warning)
  Group.new("NotifyWARNTitle", c.warning, nil, s.bold)
  Group.new("NotifyINFOBorder", c.info)
  Group.new("NotifyINFOIcon", c.info)
  Group.new("NotifyINFOTitle", c.info, nil, s.bold)
  Group.new("NotifyDEBUGBorder", c.litmus_5)
  Group.new("NotifyDEBUGIcon", c.litmus_5)
  Group.new("NotifyDEBUGTitle", c.litmus_5, nil, s.bold)
  Group.new("NotifyTRACEBorder", c.secondary)
  Group.new("NotifyTRACEIcon", c.secondary)
  Group.new("NotifyTRACETitle", c.secondary, nil, s.bold)

  -- mini.nvim
  Group.new("MiniStatuslineModeNormal", c.litmus_9, c.primary, s.bold)
  Group.new("MiniStatuslineModeInsert", c.litmus_9, c.add, s.bold)
  Group.new("MiniStatuslineModeVisual", c.litmus_9, c.secondary, s.bold)
  Group.new("MiniStatuslineModeReplace", c.litmus_9, c.delete, s.bold)
  Group.new("MiniStatuslineModeCommand", c.litmus_9, c.change, s.bold)
  Group.new("MiniStatuslineModeOther", c.litmus_9, c.litmus_4, s.bold)
  Group.new("MiniStatuslineFilename", c.litmus_2, c.litmus_8)
  Group.new("MiniStatuslineFileinfo", c.litmus_3, c.litmus_8)
  Group.new("MiniStatuslineDevinfo", c.litmus_3, c.litmus_8)
  Group.new("MiniStatuslineInactive", c.litmus_5, c.litmus_8)

  -- snacks.nvim
  Group.new("SnacksNormal", c.litmus_0, c.litmus_9)
  Group.new("SnacksDashboardHeader", c.primary, nil, s.bold)
  Group.new("SnacksDashboardFooter", c.litmus_5)
  Group.new("SnacksDashboardDesc", c.litmus_2)
  Group.new("SnacksDashboardIcon", c.primary)
  Group.new("SnacksDashboardKey", c.primary, nil, s.bold)
  Group.new("SnacksDashboardSpecial", c.secondary)

  -- oil.nvim
  Group.new("OilDir", c.primary, nil, s.bold)
  Group.new("OilDirIcon", c.primary)
  Group.new("OilFile", c.litmus_1)
  Group.new("OilCreate", c.add)
  Group.new("OilDelete", c.delete)
  Group.new("OilMove", c.change)
  Group.new("OilCopy", c.info)

  -- flash.nvim
  Group.new("FlashLabel", c.litmus_9, c.primary, s.bold)
  Group.new("FlashMatch", c.litmus_3, c.litmus_8)
  Group.new("FlashCurrent", c.litmus_0, c.litmus_7)

  -- trouble.nvim
  Group.new("TroubleNormal", c.litmus_2, c.litmus_9)
  Group.new("TroubleNormalNC", c.litmus_3, c.litmus_9)

  -- harpoon
  Group.new("HarpoonWindow", c.litmus_0, c.litmus_9)
  Group.new("HarpoonBorder", c.litmus_6, c.litmus_9)

  -- leap.nvim
  Group.new("LeapMatch", c.primary, nil, s.bold + s.underline)
  Group.new("LeapLabelPrimary", c.litmus_9, c.primary, s.bold)
  Group.new("LeapLabelSecondary", c.litmus_9, c.secondary, s.bold)
  Group.new("LeapBackdrop", c.litmus_5)

  -- nvim-navic
  Group.new("NavicText", c.litmus_3)
  Group.new("NavicSeparator", c.litmus_5)
  Group.new("NavicIconsFile", c.litmus_4)
  Group.new("NavicIconsModule", c.litmus_3)
  Group.new("NavicIconsNamespace", c.litmus_3)
  Group.new("NavicIconsPackage", c.litmus_3)
  Group.new("NavicIconsClass", c.litmus_2)
  Group.new("NavicIconsMethod", c.primary)
  Group.new("NavicIconsProperty", c.litmus_2)
  Group.new("NavicIconsField", c.litmus_2)
  Group.new("NavicIconsConstructor", c.primary)
  Group.new("NavicIconsEnum", c.litmus_2)
  Group.new("NavicIconsInterface", c.litmus_2)
  Group.new("NavicIconsFunction", c.primary)
  Group.new("NavicIconsVariable", c.litmus_2)
  Group.new("NavicIconsConstant", c.litmus_1)
  Group.new("NavicIconsString", c.litmus_3)
  Group.new("NavicIconsNumber", c.litmus_1)
  Group.new("NavicIconsBoolean", c.litmus_1)
  Group.new("NavicIconsArray", c.litmus_3)
  Group.new("NavicIconsObject", c.litmus_2)
  Group.new("NavicIconsKey", c.litmus_2)
  Group.new("NavicIconsNull", c.litmus_4)
  Group.new("NavicIconsEnumMember", c.litmus_2)
  Group.new("NavicIconsStruct", c.litmus_2)
  Group.new("NavicIconsEvent", c.secondary)
  Group.new("NavicIconsOperator", c.litmus_3)
  Group.new("NavicIconsTypeParameter", c.litmus_2)

  -- spell
  Group.new("SpellBad", nil, nil, s.undercurl, c.error)
  Group.new("SpellCap", nil, nil, s.undercurl, c.warning)
  Group.new("SpellLocal", nil, nil, s.undercurl, c.info)
  Group.new("SpellRare", nil, nil, s.undercurl, c.hint)

  -- health
  Group.new("healthError", c.error)
  Group.new("healthWarning", c.warning)
  Group.new("healthSuccess", c.add)

  -- quickfix
  Group.new("qffilename", c.primary)
end

function M.colors()
  return M.palette
end

return M
