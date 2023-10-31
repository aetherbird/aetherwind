local palette = require('flexoki.palette')

local hl = vim.api.nvim_set_hl

local M = {}

M.set_highlights = function()
	local c = palette.palette()

	print(c._name)

	-- highlights
	hl(0, "Normal", { fg = c.fg, bg = c.bg })
	hl(0, "SignColumn", { fg = 'NONE', bg = c.bg })
	hl(0, "MsgArea", { fg = c.fg, bg = c.bg })
	hl(0, "ModeMsg", { fg = c.fg, bg = c.dark })
	hl(0, "MsgSeparator", { fg = c.fg, bg = c.bg })
	hl(0, "SpellBad", { fg = c.light_red, bg = 'NONE', underline=true, })
	hl(0, "SpellCap", { fg = c.yellow, bg = 'NONE', underline=true, })
	hl(0, "SpellLocal", { fg = c.green, bg = 'NONE', underline=true, })
	hl(0, "SpellRare", { fg = c.purple, bg = 'NONE', underline=true, })
	hl(0, "NormalNC", { fg = c.fg, bg = c.bg })
	hl(0, "Pmenu", { fg = c.light_gray, bg = c.tree_gray, sp = 'NONE', blend=50,  })
	hl(0, "PmenuSel", { fg = 'NONE', bg = c.ui2_blue })
	hl(0, "WildMenu", { fg = c.fg, bg = c.ui2_blue })
	hl(0, "CursorLineNr", { fg = c.light_gray, bg = 'NONE', bold=true, })
	hl(0, "Comment", { fg = c.gray, bg = 'NONE', italic=true, })
	hl(0, "Folded", { fg = c.accent, bg = c.alt_bg })
	hl(0, "FoldColumn", { fg = c.accent, bg = c.alt_bg })
	hl(0, "LineNr", { fg = c.gray, bg = 'NONE' })
	hl(0, "FloatBorder", { fg = c.gray, bg = c.alt_bg })
	hl(0, "Whitespace", { fg = c.bg, bg = 'NONE' })
	hl(0, "VertSplit", { fg = c.gray, bg = c.bg })
	hl(0, "CursorLine", { fg = 'NONE', bg = c.dark })
	hl(0, "CursorColumn", { fg = 'NONE', bg = c.dark })
	hl(0, "ColorColumn", { fg = 'NONE', bg = c.dark })
	hl(0, "NormalFloat", { fg = 'NONE', bg = c.dark })
	hl(0, "Visual", { fg = 'NONE', bg = c.ui_blue })
	hl(0, "VisualNOS", { fg = 'NONE', bg = c.alt_bg })
	hl(0, "WarningMsg", { fg = c.error_red, bg = c.bg })
	hl(0, "DiffAdd", { fg = c.alt_bg, bg = c.sign_add })
	hl(0, "DiffChange", { fg = c.alt_bg, bg = c.sign_change, underline=true, })
	hl(0, "DiffDelete", { fg = c.alt_bg, bg = c.sign_delete })
	hl(0, "QuickFixLine", { fg = 'NONE', bg = c.ui2_blue })
	hl(0, "PmenuSbar", { fg = 'NONE', bg = c.alt_bg })
	hl(0, "PmenuThumb", { fg = 'NONE', bg = c.gray })
	hl(0, "MatchWord", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "MatchParen", { fg = c.hint_blue, bg = c.bg, underline=true, })
	hl(0, "MatchWordCur", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "MatchParenCur", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "Cursor", { fg = c.cursor_fg, bg = c.cursor_bg })
	hl(0, "lCursor", { fg = c.cursor_fg, bg = c.cursor_bg })
	hl(0, "CursorIM", { fg = c.cursor_fg, bg = c.cursor_bg })
	hl(0, "TermCursor", { fg = c.cursor_fg, bg = c.cursor_bg })
	hl(0, "TermCursorNC", { fg = c.cursor_fg, bg = c.cursor_bg })
	hl(0, "Conceal", { fg = c.accent, bg = 'NONE' })
	hl(0, "Directory", { fg = c.blue, bg = 'NONE' })
	hl(0, "SpecialKey", { fg = c.blue, bg = 'NONE', bold=true, })
	hl(0, "Title", { fg = c.blue, bg = 'NONE', bold=true, })
	hl(0, "ErrorMsg", { fg = c.error_red, bg = c.bg, bold=true, })
	hl(0, "Search", { fg = c.light_gray, bg = c.search_blue })
	hl(0, "IncSearch", { fg = c.search_orange, bg = c.light_gray })
	hl(0, "Substitute", { fg = c.light_gray, bg = c.search_orange })
	hl(0, "MoreMsg", { fg = c.orange, bg = 'NONE' })
	hl(0, "Question", { fg = c.orange, bg = 'NONE' })
	hl(0, "EndOfBuffer", { fg = c.bg, bg = 'NONE' })
	hl(0, "NonText", { fg = c.bg, bg = 'NONE' })
	hl(0, "Variable", { fg = c.light_blue, bg = 'NONE' })
	hl(0, "String", { fg = c.orange, bg = 'NONE' })
	hl(0, "Character", { fg = c.orange, bg = 'NONE' })
	hl(0, "Constant", { fg = c.vivid_blue, bg = 'NONE' })
	hl(0, "Number", { fg = c.light_green, bg = 'NONE' })
	hl(0, "Boolean", { fg = c.blue, bg = 'NONE' })
	hl(0, "Float", { fg = c.light_green, bg = 'NONE' })
	hl(0, "Identifier", { fg = c.light_blue, bg = 'NONE' })
	hl(0, "Function", { fg = c.yellow, bg = 'NONE' })
	hl(0, "Operator", { fg = c.fg, bg = 'NONE' })
	hl(0, "Type", { fg = c.cyan, bg = 'NONE' })
	hl(0, "StorageClass", { fg = c.blue, bg = 'NONE' })
	hl(0, "Structure", { fg = c.blue, bg = 'NONE' })
	hl(0, "Typedef", { fg = c.blue, bg = 'NONE' })
	hl(0, "Keyword", { fg = c.blue, bg = 'NONE' })
	hl(0, "Statement", { fg = c.purple, bg = 'NONE' })
	hl(0, "Conditional", { fg = c.blue, bg = 'NONE' })
	hl(0, "Repeat", { fg = c.purple, bg = 'NONE' })
	hl(0, "Label", { fg = c.purple, bg = 'NONE' })
	hl(0, "Exception", { fg = c.purple, bg = 'NONE' })
	hl(0, "Include", { fg = c.purple, bg = 'NONE' })
	hl(0, "PreProc", { fg = c.purple, bg = 'NONE' })
	hl(0, "Define", { fg = c.purple, bg = 'NONE' })
	hl(0, "Macro", { fg = c.purple, bg = 'NONE' })
	hl(0, "PreCondit", { fg = c.purple, bg = 'NONE' })
	hl(0, "Special", { fg = c.orange, bg = 'NONE' })
	hl(0, "SpecialChar", { fg = c.white, bg = 'NONE' })
	hl(0, "Tag", { fg = c.blue, bg = 'NONE' })
	hl(0, "Debug", { fg = c.red, bg = 'NONE' })
	hl(0, "Delimiter", { fg = c.gray, bg = 'NONE' })
	hl(0, "SpecialComment", { fg = c.gray, bg = 'NONE' })
	hl(0, "Underlined", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "Bold", { fg = 'NONE', bg = 'NONE', bold=true, })
	hl(0, "Italic", { fg = 'NONE', bg = 'NONE', italic=true, })
	hl(0, "Ignore", { fg = c.cyan, bg = c.bg, bold=true, })
	hl(0, "Todo", { fg = c.magenta, bg = c.bg, bold=true, })
	hl(0, "Error", { fg = c.error_red, bg = c.bg, bold=true, })
	hl(0, "TabLine", { fg = c.light_gray, bg = c.line })
	hl(0, "TabLineSel", { fg = c.white, bg = c.line })
	hl(0, "TabLineFill", { fg = c.line, bg = c.line })

	-- Treesitter
	hl(0, "TSComment", { link = 'Comment' })
	hl(0, "TSAnnotation", { fg = c.blue, bg = 'NONE' })
	hl(0, "TSAttribute", { fg = c.cyan, bg = 'NONE' })
	hl(0, "TSConstructor", { fg = c.cyan, bg = 'NONE' })
	hl(0, "TSType", { fg = c.cyan, bg = 'NONE' })
	hl(0, "TSTypeBuiltin", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSConditional", { fg = c.yellow, bg = 'NONE' })
	hl(0, "TSException", { fg = c.purple, bg = 'NONE' })
	hl(0, "TSInclude", { fg = c.purple, bg = 'NONE' })
	hl(0, "TSKeywordReturn", { fg = c.purple, bg = 'NONE' })
	hl(0, "TSKeyword", { fg = c.purple, bg = 'NONE' })
	hl(0, "TSKeywordFunction", { fg = c.purple, bg = 'NONE' })
	hl(0, "TSLabel", { fg = c.light_blue, bg = 'NONE' })
	hl(0, "TSNamespace", { fg = c.cyan, bg = 'NONE' })
	hl(0, "TSRepeat", { fg = c.yellow, bg = 'NONE' })
	hl(0, "TSConstant", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSConstBuiltin", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSFloat", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSNumber", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSBoolean", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSCharacter", { fg = c.green, bg = 'NONE' })
	hl(0, "TSError", { fg = c.error_red, bg = 'NONE' })
	hl(0, "TSFunction", { fg = c.blue, bg = 'NONE' })
	hl(0, "TSFuncBuiltin", { fg = c.blue, bg = 'NONE' })
	hl(0, "TSMethod", { fg = c.blue, bg = 'NONE' })
	hl(0, "TSConstMacro", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSFuncMacro", { fg = c.blue, bg = 'NONE' })
	hl(0, "TSVariable", { fg = c.light_blue, bg = 'NONE' })
	hl(0, "TSVariableBuiltin", { fg = c.red, bg = 'NONE' })
	hl(0, "TSProperty", { fg = c.red, bg = 'NONE' })
	hl(0, "TSField", { fg = c.fg, bg = 'NONE' })
	hl(0, "TSParameter", { fg = c.red, bg = 'NONE' })
	hl(0, "TSParameterReference", { fg = c.red, bg = 'NONE' })
	hl(0, "TSSymbol", { fg = c.light_blue, bg = 'NONE' })
	hl(0, "TSText", { fg = c.alt_fg, bg = 'NONE' })
	hl(0, "TSOperator", { fg = c.alt_fg, bg = 'NONE' })
	hl(0, "TSPunctDelimiter", { fg = c.alt_fg, bg = 'NONE' })
	hl(0, "TSTagDelimiter", { fg = c.alt_fg, bg = 'NONE' })
	hl(0, "TSTagAttribute", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSPunctBracket", { fg = c.alt_fg, bg = 'NONE' })
	hl(0, "TSPunctSpecial", { fg = c.purple, bg = 'NONE' })
	hl(0, "TSString", { fg = c.green, bg = 'NONE' })
	hl(0, "TSStringRegex", { fg = c.green, bg = 'NONE' })
	hl(0, "TSStringEscape", { fg = c.green, bg = 'NONE' })
	hl(0, "TSTag", { fg = c.blue, bg = 'NONE' })
	hl(0, "TSEmphasis", { fg = 'NONE', bg = 'NONE', italic=true, })
	hl(0, "TSUnderline", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "TSTitle", { fg = c.fg, bg = 'NONE',  })
	hl(0, "TSLiteral", { fg = c.orange, bg = 'NONE' })
	hl(0, "TSURI", { fg = c.orange, bg = 'NONE', underline=true, })
	hl(0, "TSKeywordOperator", { fg = c.purple, bg = 'NONE' })
	hl(0, "TSStructure", { fg = c.light_blue, bg = 'NONE' })
	hl(0, "TSStrong", { fg = c.blue, bg = 'NONE', bold=true, })
	hl(0, "TSQueryLinterError", { fg = c.warning_orange, bg = 'NONE' })
	hl(0, "TreesitterContext", { fg = 'NONE', bg = c.tree_gray })

	-- markdown
	hl(0, "markdownBlockquote", { fg = c.green, bg = 'NONE' })
	hl(0, "markdownCode", { fg = c.orange, bg = 'NONE' })
	hl(0, "markdownCodeBlock", { fg = c.orange, bg = 'NONE' })
	hl(0, "markdownCodeDelimiter", { fg = c.orange, bg = 'NONE' })
	hl(0, "markdownH1", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownH2", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownH3", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownH4", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownH5", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownH6", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownHeadingDelimiter", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownHeadingRule", { fg = c.fg, bg = 'NONE', bold=true, })
	hl(0, "markdownId", { fg = c.purple, bg = 'NONE' })
	hl(0, "markdownIdDeclaration", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownIdDelimiter", { fg = c.light_gray, bg = 'NONE' })
	hl(0, "markdownLinkDelimiter", { fg = c.light_gray, bg = 'NONE' })
	hl(0, "markdownBold", { fg = c.blue, bg = 'NONE', bold=true, })
	hl(0, "markdownItalic", { fg = 'NONE', bg = 'NONE', italic=true, })
	hl(0, "markdownBoldItalic", { fg = c.yellow, bg = 'NONE', bold=true, italic=true, })
	hl(0, "markdownListMarker", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownOrderedListMarker", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownRule", { fg = c.accent, bg = 'NONE' })
	hl(0, "markdownUrl", { fg = c.cyan, bg = 'NONE', underline=true, })
	hl(0, "markdownLinkText", { fg = c.blue, bg = 'NONE' })
	hl(0, "markdownFootnote", { fg = c.orange, bg = 'NONE' })
	hl(0, "markdownFootnoteDefinition", { fg = c.orange, bg = 'NONE' })
	hl(0, "markdownEscape", { fg = c.yellow, bg = 'NONE' })

	-- Whichkey
	hl(0, "WhichKey", { fg = c.purple, bg = 'NONE' })
	hl(0, "WhichKeySeparator", { fg = c.green, bg = 'NONE' })
	hl(0, "WhichKeyGroup", { fg = c.blue, bg = 'NONE' })
	hl(0, "WhichKeyDesc", { fg = c.light_blue, bg = 'NONE' })
	hl(0, "WhichKeyFloat", { fg = 'NONE', bg = c.dark })

	-- Git
	hl(0, "SignAdd", { fg = c.sign_add, bg = 'NONE' })
	hl(0, "SignChange", { fg = c.sign_change, bg = 'NONE' })
	hl(0, "SignDelete", { fg = c.sign_delete, bg = 'NONE' })
	hl(0, "GitSignsAdd", { fg = c.sign_add, bg = 'NONE' })
	hl(0, "GitSignsChange", { fg = c.sign_change, bg = 'NONE' })
	hl(0, "GitSignsDelete", { fg = c.sign_delete, bg = 'NONE' })

	-- LSP
	hl(0, "LspDiagnosticsDefaultError", { fg = c.error_red, bg = 'NONE' })
	hl(0, "LspDiagnosticsDefaultWarning", { fg = c.warning_orange, bg = 'NONE' })
	hl(0, "LspDiagnosticsDefaultInformation", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsDefaultInfo", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsDefaultHint", { fg = c.hint_blue, bg = 'NONE' })
	hl(0, "LspDiagnosticsVirtualTextError", { fg = c.error_red, bg = 'NONE' })
	hl(0, "LspDiagnosticsVirtualTextWarning", { fg = c.warning_orange, bg = 'NONE' })
	hl(0, "LspDiagnosticsVirtualTextInformation", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsVirtualTextInfo", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsVirtualTextHint", { fg = c.hint_blue, bg = 'NONE' })
	hl(0, "LspDiagnosticsFloatingError", { fg = c.error_red, bg = 'NONE' })
	hl(0, "LspDiagnosticsFloatingWarning", { fg = c.warning_orange, bg = 'NONE' })
	hl(0, "LspDiagnosticsFloatingInformation", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsFloatingInfo", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsFloatingHint", { fg = c.hint_blue, bg = 'NONE' })
	hl(0, "DiagnosticSignError", { fg = c.error_red, bg = 'NONE' })
	hl(0, "DiagnosticSignWarning", { fg = c.warning_orange, bg = 'NONE' })
	hl(0, "DiagnosticSignInformation", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "DiagnosticSignInfo", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "DiagnosticSignHint", { fg = c.hint_blue, bg = 'NONE' })
	hl(0, "LspDiagnosticsSignError", { fg = c.error_red, bg = 'NONE' })
	hl(0, "LspDiagnosticsSignWarning", { fg = c.warning_orange, bg = 'NONE' })
	hl(0, "LspDiagnosticsSignInformation", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsSignInfo", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsSignHint", { fg = c.hint_blue, bg = 'NONE' })
	hl(0, "LspDiagnosticsError", { fg = c.error_red, bg = 'NONE' })
	hl(0, "LspDiagnosticsWarning", { fg = c.warning_orange, bg = 'NONE' })
	hl(0, "LspDiagnosticsInformation", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsInfo", { fg = c.info_yellow, bg = 'NONE' })
	hl(0, "LspDiagnosticsHint", { fg = c.hint_blue, bg = 'NONE' })
	hl(0, "LspDiagnosticsUnderlineError", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "LspDiagnosticsUnderlineWarning", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "LspDiagnosticsUnderlineInformation", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "LspDiagnosticsUnderlineInfo", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "LspDiagnosticsUnderlineHint", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "LspReferenceRead", { fg = 'NONE', bg = '#2e303b' })
	hl(0, "LspReferenceText", { fg = 'NONE', bg = '#2e303b' })
	hl(0, "LspReferenceWrite", { fg = 'NONE', bg = '#2e303b' })
	hl(0, "LspCodeLens", { fg = c.context, bg = 'NONE', italic=true, })
	hl(0, "LspCodeLensSeparator", { fg = c.context, bg = 'NONE', italic=true, })

	-- Telescope
	hl(0, "TelescopeSelection", { fg = c.hint_blue, bg = 'NONE' })
	hl(0, "TelescopeMatching", { fg = c.info_yellow, bg = 'NONE', bold=true, })
	hl(0, "TelescopeBorder", { fg = c.blue, bg = c.bg })

	-- NvimTree
	hl(0, "NvimTreeFolderIcon", { fg = c.folder_blue, bg = 'NONE' })
	hl(0, "NvimTreeIndentMarker", { fg = '#c5c5c5', bg = 'NONE' })
	hl(0, "NvimTreeNormal", { fg = c.light_gray, bg = c.tree_gray })
	hl(0, "NvimTreeVertSplit", { fg = c.alt_bg, bg = c.alt_bg })
	hl(0, "NvimTreeFolderName", { fg = c.folder_blue, bg = 'NONE' })
	hl(0, "NvimTreeOpenedFolderName", { fg = c.folder_blue, bg = 'NONE', bold=true, italic=true, })
	hl(0, "NvimTreeEmptyFolderName", { fg = c.gray, bg = 'NONE', italic=true, })
	hl(0, "NvimTreeGitIgnored", { fg = c.gray, bg = 'NONE', italic=true, })
	hl(0, "NvimTreeImageFile", { fg = c.light_gray, bg = 'NONE' })
	hl(0, "NvimTreeSpecialFile", { fg = c.orange, bg = 'NONE' })
	hl(0, "NvimTreeEndOfBuffer", { fg = c.tree_gray, bg = 'NONE' })
	hl(0, "NvimTreeCursorLine", { fg = 'NONE', bg = '#282b37' })
	hl(0, "NvimTreeGitignoreIcon", { fg = '#E64A19', bg = 'NONE' })
	hl(0, "NvimTreeGitStaged", { fg = c.tree_sign_add, bg = 'NONE' })
	hl(0, "NvimTreeGitNew", { fg = c.tree_sign_add, bg = 'NONE' })
	hl(0, "NvimTreeGitRenamed", { fg = c.tree_sign_add, bg = 'NONE' })
	hl(0, "NvimTreeGitDeleted", { fg = c.sign_delete, bg = 'NONE' })
	hl(0, "NvimTreeGitMerge", { fg = c.tree_sign_change, bg = 'NONE' })
	hl(0, "NvimTreeGitDirty", { fg = c.tree_sign_change, bg = 'NONE' })
	hl(0, "NvimTreeSymlink", { fg = c.cyan, bg = 'NONE' })
	hl(0, "NvimTreeRootFolder", { fg = c.fg, bg = 'NONE', bold=true, })
	hl(0, "NvimTreeExecFile", { fg = '#9FBA89', bg = 'NONE' })

	-- Buffer
	hl(0, "BufferCurrent", { fg = c.fg, bg = c.bg })
	hl(0, "BufferCurrentIndex", { fg = c.fg, bg = c.bg })
	hl(0, "BufferCurrentMod", { fg = c.info_yellow, bg = c.bg })
	hl(0, "BufferCurrentSign", { fg = c.hint_blue, bg = c.bg })
	hl(0, "BufferCurrentTarget", { fg = c.red, bg = c.bg, bold=true, })
	hl(0, "BufferVisible", { fg = c.fg, bg = c.bg })
	hl(0, "BufferVisibleIndex", { fg = c.fg, bg = c.bg })
	hl(0, "BufferVisibleMod", { fg = c.info_yellow, bg = c.bg })
	hl(0, "BufferVisibleSign", { fg = c.gray, bg = c.bg })
	hl(0, "BufferVisibleTarget", { fg = c.red, bg = c.bg, bold=true, })
	hl(0, "BufferInactive", { fg = c.gray, bg = c.alt_bg })
	hl(0, "BufferInactiveIndex", { fg = c.gray, bg = c.alt_bg })
	hl(0, "BufferInactiveMod", { fg = c.info_yellow, bg = c.alt_bg })
	hl(0, "BufferInactiveSign", { fg = c.gray, bg = c.alt_bg })
	hl(0, "BufferInactiveTarget", { fg = c.red, bg = c.alt_bg, bold=true, })

	-- StatusLine
	hl(0, "StatusLine", { fg = c.line, bg = c.gray })
	hl(0, "StatusLineNC", { fg = c.line, bg = c.gray })
	hl(0, "StatusLineSeparator", { fg = c.line, bg = 'NONE' })
	hl(0, "StatusLineTerm", { fg = c.line, bg = 'NONE' })
	hl(0, "StatusLineTermNC", { fg = c.line, bg = 'NONE' })

	-- IndentBlankline
	hl(0, "IndentBlanklineContextChar", { fg = c.context, bg = 'NONE' })
	hl(0, "IndentBlanklineContextStart", { fg = 'NONE', bg = 'NONE', underline=true, })
	hl(0, "IndentBlanklineChar", { fg = c.dark_gray, bg = 'NONE' })
	hl(0, "IndentBlanklineSpaceChar", { fg = c.cyan_test, bg = 'NONE' })
	hl(0, "IndentBlanklineSpaceCharBlankline", { fg = c.info_yellow, bg = 'NONE' })

	-- Dashboard
	hl(0, "DashboardHeader", { fg = c.blue, bg = 'NONE' })
	hl(0, "DashboardCenter", { fg = c.purple, bg = 'NONE' })
	hl(0, "DashboardFooter", { fg = c.cyan, bg = 'NONE' })

	-- Cmp
	hl(0, "CmpItemAbbrDeprecated", { fg = c.gray, bg = 'NONE', strikethrough=true, })
	hl(0, "CmpItemAbbrMatch", { fg = c.ui3_blue, bg = 'NONE' })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.ui3_blue, bg = 'NONE' })
	hl(0, "CmpItemKindFunction", { fg = c.blue, bg = 'NONE' })
	hl(0, "CmpItemKindMethod", { fg = c.blue, bg = 'NONE' })
	hl(0, "CmpItemKindConstructor", { fg = c.cyan, bg = 'NONE' })
	hl(0, "CmpItemKindClass", { fg = c.cyan, bg = 'NONE' })
	hl(0, "CmpItemKindEnum", { fg = c.cyan, bg = 'NONE' })
	hl(0, "CmpItemKindEvent", { fg = c.yellow, bg = 'NONE' })
	hl(0, "CmpItemKindInterface", { fg = c.cyan, bg = 'NONE' })
	hl(0, "CmpItemKindStruct", { fg = c.cyan, bg = 'NONE' })
	hl(0, "CmpItemKindVariable", { fg = c.red, bg = 'NONE' })
	hl(0, "CmpItemKindField", { fg = c.red, bg = 'NONE' })
	hl(0, "CmpItemKindProperty", { fg = c.red, bg = 'NONE' })
	hl(0, "CmpItemKindEnumMember", { fg = c.orange, bg = 'NONE' })
	hl(0, "CmpItemKindConstant", { fg = c.orange, bg = 'NONE' })
	hl(0, "CmpItemKindKeyword", { fg = c.purple, bg = 'NONE' })
	hl(0, "CmpItemKindModule", { fg = c.cyan, bg = 'NONE' })
	hl(0, "CmpItemKindValue", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindUnit", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindText", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindSnippet", { fg = c.yellow, bg = 'NONE' })
	hl(0, "CmpItemKindFile", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindFolder", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindColor", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindReference", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindOperator", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindTypeParameter", { fg = c.red, bg = 'NONE' })
end

return M
