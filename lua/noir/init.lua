local M = {}

function M.load()
	local bg = vim.o.background
	local p = require("noir.palette")[bg]

	vim.cmd("set termguicolors")
	vim.cmd('let g:colors_name = "noir"')

	p.none = "none"

	vim.api.nvim_set_hl(0, "Noise", { fg = p.ignore_light, bg = p.none })

	vim.api.nvim_set_hl(0, "Comment", { fg = p.ignore, bg = p.none })
	vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Normal", { bg = p.none })

	vim.api.nvim_set_hl(0, "NonText", { fg = p.ignore_hard, bg = p.none })
	vim.api.nvim_set_hl(0, "Error", { fg = p.negative, bg = p.none })
	vim.api.nvim_set_hl(0, "Number", { fg = p.positive_light, bg = p.none })
	vim.api.nvim_set_hl(0, "Special", { fg = p.special, bg = p.none })
	vim.api.nvim_set_hl(0, "String", { fg = p.positive_strong, bg = p.none })
	vim.api.nvim_set_hl(0, "Title", { fg = p.interesting, bg = p.none })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.positive, bg = p.none })

	vim.api.nvim_set_hl(0, "Warning", { fg = p.warning, bg = p.none })

	-- https://neovim.io/doc/user/syntax.html#hl-User1
	vim.api.nvim_set_hl(0, "User1", { fg = p.warning_deep, bg = p.none })
	vim.api.nvim_set_hl(0, "User2", { fg = p.interesting, bg = p.none })
	vim.api.nvim_set_hl(0, "User3", { fg = p.warning_deeper, bg = p.none })

	vim.api.nvim_set_hl(0, "MatchParen", { fg = "#fc9487", bg = "#cc241d", bold = true })

	vim.api.nvim_set_hl(0, "CurSearch", { fg = p.highlight, bg = p.none, underline = true })
	vim.api.nvim_set_hl(0, "IncSearch", { fg = p.highlight, bg = p.none })
	vim.api.nvim_set_hl(0, "Search", { fg = p.highlight, bg = p.none })

	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.ignore_light, bg = p.over_bg })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.accent_light, bg = p.bg, underline = true })
	vim.api.nvim_set_hl(0, "PmenuThumb", { fg = p.warning_deep, bg = p.over_bg })
	vim.api.nvim_set_hl(0, "WildMenu", { fg = p.highlight, bg = p.over_bg })

	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.none, bg = p.over_bg })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.bg, bg = p.none })

	vim.api.nvim_set_hl(0, "Visual", { fg = p.interesting, bg = p.over_bg })
	vim.api.nvim_set_hl(0, "VisualNOS", { fg = p.interesting, bg = p.over_bg })

	vim.api.nvim_set_hl(0, "qffilename", { link = "Title" })

	vim.api.nvim_set_hl(0, "SnippetTabStop", {})

	vim.api.nvim_set_hl(0, "SpellBad", { fg = p.negative, bg = p.none, undercurl = true })
	vim.api.nvim_set_hl(0, "SpellCap", { fg = p.warning, bg = p.none, undercurl = true })
	vim.api.nvim_set_hl(0, "SpellLocal", { fg = p.warning_deep, bg = p.none, undercurl = true })
	vim.api.nvim_set_hl(0, "SpellRare", { fg = p.interesting, bg = p.none, undercurl = true })

	-- LINKS
	vim.api.nvim_set_hl(0, "Constant", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Boolean", { link = "Number" })
	vim.api.nvim_set_hl(0, "Character", { link = "Number" })
	vim.api.nvim_set_hl(0, "Conditional", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Debug", { link = "Todo" })
	vim.api.nvim_set_hl(0, "Delimiter", { link = "Noise" })
	vim.api.nvim_set_hl(0, "Directory", { link = "String" })
	vim.api.nvim_set_hl(0, "Exception", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Function", { link = "Special" })
	vim.api.nvim_set_hl(0, "Identifier", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Include", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Keyword", { link = "Noise" })
	vim.api.nvim_set_hl(0, "Label", { fg = p.accent, bg = p.none, bold = true })
	vim.api.nvim_set_hl(0, "Macro", { link = "User2" })
	vim.api.nvim_set_hl(0, "Operator", { link = "Noise" })
	vim.api.nvim_set_hl(0, "PreProc", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Repeat", { link = "Normal" })
	vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
	vim.api.nvim_set_hl(0, "SpecialKey", { link = "Special" })
	vim.api.nvim_set_hl(0, "Statement", { link = "Normal" })
	vim.api.nvim_set_hl(0, "StorageClass", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Structure", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Tag", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Type", { link = "User3" })
	vim.api.nvim_set_hl(0, "TypeDef", { link = "User3" })

	-- treesitter
	vim.api.nvim_set_hl(0, "@type.builtin", { link = "User3" })
	vim.api.nvim_set_hl(0, "@constant.builtin", { link = "User1" })
	vim.api.nvim_set_hl(0, "@constructor", { link = "Special" })
	vim.api.nvim_set_hl(0, "@exception.operator", { link = "Special" })
	vim.api.nvim_set_hl(0, "@function.macro", { link = "Normal" })
	vim.api.nvim_set_hl(0, "@namespace", { link = "Normal" })
	vim.api.nvim_set_hl(0, "@punctuation.special", { link = "Normal" })
	vim.api.nvim_set_hl(0, "@keyword.storage", { link = "User2" })
	vim.api.nvim_set_hl(0, "@type.qualifier", { link = "Normal" })
	vim.api.nvim_set_hl(0, "@variable", { link = "Normal" })
	vim.api.nvim_set_hl(0, "@variable.builtin", { link = "String" })
	vim.api.nvim_set_hl(0, "@keyword", { fg = p.ignore_light, italic = true })
	vim.api.nvim_set_hl(0, "@function.method.call", { fg = p.special, italic = true })
	vim.api.nvim_set_hl(0, "@function.call", { fg = p.special, italic = true })

	-- USER INTERFACE
	vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
	vim.api.nvim_set_hl(0, "ModeMsg", { link = "Normal" })
	vim.api.nvim_set_hl(0, "MoreMsg", { link = "Normal" })
	vim.api.nvim_set_hl(0, "Question", { link = "Warning" })
	vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warning" })

	vim.api.nvim_set_hl(0, "Conceal", { link = "Comment" })
	if bg == "light" then
		vim.api.nvim_set_hl(0, "Cursor", { fg = p.accent, bg = p.warning })
	end
	vim.api.nvim_set_hl(0, "CursorLine", { link = "StatusLine" })
	vim.api.nvim_set_hl(0, "ColorColumn", { link = "CursorLine" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { link = "Normal" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { link = "NonText" })
	vim.api.nvim_set_hl(0, "Folded", { link = "NonText" })
	vim.api.nvim_set_hl(0, "LineNr", { link = "NonText" })
	vim.api.nvim_set_hl(0, "FoldColumn", { link = "LineNr" })
	vim.api.nvim_set_hl(0, "SignColumn", { link = "LineNr" })
	vim.api.nvim_set_hl(0, "VertSplit", { link = "NonText" })
	vim.api.nvim_set_hl(0, "Whitespace", { link = "NonText" })
	vim.api.nvim_set_hl(0, "WinSeparator", { link = "NonText" })

	vim.api.nvim_set_hl(0, "TabLine", { link = "Normal" })
	vim.api.nvim_set_hl(0, "TabLineFill", { link = "Normal" })
	vim.api.nvim_set_hl(0, "TabLineSel", { link = "Special" })

	vim.api.nvim_set_hl(0, "NvimInternalError", { link = "Error" })
	vim.api.nvim_set_hl(0, "FloatBorder", { link = "NonText" })

	-- Diagnostics
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = true, sp = p.negative })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = true, sp = p.warning })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = true })
	vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
	vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warning" })
	vim.api.nvim_set_hl(0, "DiagnosticHint", { link = "Comment" })
	vim.api.nvim_set_hl(0, "DiagnosticInfo", { link = "Comment" })
	vim.api.nvim_set_hl(0, "DiagnosticOk", { link = "String" })

	-- Muted virtual text / sign diagnostics
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#5b222c" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#7a4d06" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#458588" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#689d6a" })
	vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#5b222c" })
	vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#7a4d06" })
	vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#458588" })
	vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#689d6a" })

	-- Statusline diagnostic badges
	vim.api.nvim_set_hl(0, "StatuslineError", { fg = "#5b222c" })
	vim.api.nvim_set_hl(0, "StatuslineWarn", { fg = "#7a4d06" })

	-- Illuminate
	vim.api.nvim_set_hl(0, "IlluminatedWord", { bg = "#b47109" })
	vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#454545" })
	vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#454545" })
	vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#454545" })

	-- Treesitter context
	vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#2a2a2a" })

	-- NeoTree git status
	vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#689d6a" })
	vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#c2a300" })
	vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#670001" })
	vim.api.nvim_set_hl(0, "NeoTreeGitRenamed", { fg = "#c2a300" })
	vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#6c7086" })
	vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#518199" })
	vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = "#d787ff" })

	-- Telescope
	vim.api.nvim_set_hl(0, "TelescopeBorder", { link = "Noise" })
	vim.api.nvim_set_hl(0, "TelescopeMatching", { link = "User1" })
	vim.api.nvim_set_hl(0, "TelescopePromptCounter", { link = "Noise" })

	-- Markdown
	vim.api.nvim_set_hl(0, "@markup.list.unchecked.markdown", { link = "Error" })
	vim.api.nvim_set_hl(0, "@markup.list.checked.markdown", { link = "Number" })
	vim.api.nvim_set_hl(0, "@markup.link.label.markdown_inline", { link = "Special" })
	vim.api.nvim_set_hl(0, "@markup.link.url.markdown_inline", { link = "Noise" })

	-- diff
	local diff_add_bg = bg == "light" and p.positive_light or p.positive
	local diff_change_bg = p.changed_muted
	local diff_delete_bg = bg == "light" and p.ignore_hard or p.negative_light

	vim.api.nvim_set_hl(0, "DiffAdd", { fg = p.none, bg = diff_add_bg })
	vim.api.nvim_set_hl(0, "DiffChange", { fg = p.none, bg = diff_change_bg })
	vim.api.nvim_set_hl(0, "DiffDelete", { fg = p.none, bg = diff_delete_bg })

	vim.api.nvim_set_hl(0, "diffadded", { link = "DiffAdd" })
	vim.api.nvim_set_hl(0, "diffremoved", { link = "DiffDelete" })

	vim.api.nvim_set_hl(0, "Added", { fg = p.accent, bg = p.positive })
	vim.api.nvim_set_hl(0, "Changed", { fg = p.accent, bg = p.changed_muted })
	vim.api.nvim_set_hl(0, "Removed", { fg = p.accent, bg = p.negative_light })

	-- GitSigns
	vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = p.positive, bg = p.none })
	vim.api.nvim_set_hl(0, "GitSignsChange", { fg = p.warning, bg = p.none })
	vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = p.negative_light, bg = p.none })

	-- Fugitive
	vim.api.nvim_set_hl(0, "fugitiveUnstagedModifier", { link = "User3" })
	vim.api.nvim_set_hl(0, "fugitiveStagedHeading", { link = "Warning" })
	vim.api.nvim_set_hl(0, "fugitiveUntrackedHeading", { link = "User2" })
	vim.api.nvim_set_hl(0, "fugitiveUntrackedSection", { link = "Noise" })
	vim.api.nvim_set_hl(0, "fugitiveUntrackedModifier", { link = "Noise" })
end

return M
