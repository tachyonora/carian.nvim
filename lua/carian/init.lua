local bufferline = require("carian.integrations.bufferline")
local cmp = require("carian.integrations.cmp")
local colorscheme_module = require("carian.colorscheme")
local ibl = require("carian.integrations.ibl")
local config = require("carian.config")
local utils = require("carian.utils")
local theme = {}

local function set_terminal_colors(colorscheme)
	local t = colorscheme.terminal

	vim.g.terminal_color_0 = t.black
	vim.g.terminal_color_1 = t.red
	vim.g.terminal_color_2 = t.green
	vim.g.terminal_color_3 = t.yellow
	vim.g.terminal_color_4 = t.blue
	vim.g.terminal_color_5 = t.magenta
	vim.g.terminal_color_6 = t.cyan
	vim.g.terminal_color_7 = t.white
	vim.g.terminal_color_8 = t.bright_black
	vim.g.terminal_color_9 = t.bright_red
	vim.g.terminal_color_10 = t.bright_green
	vim.g.terminal_color_11 = t.bright_yellow
	vim.g.terminal_color_12 = t.bright_blue
	vim.g.terminal_color_13 = t.bright_magenta
	vim.g.terminal_color_14 = t.bright_cyan
	vim.g.terminal_color_15 = t.bright_white

	vim.g.terminal_color_background = t.background
	vim.g.terminal_color_foreground = t.foreground
end

local function set_groups(colorscheme)
	local bg = config.transparent and "NONE" or colorscheme.editorBackground
	local diff_add = utils.shade(colorscheme.successText, 0.5, colorscheme.editorBackground)
	local diff_delete = utils.shade(colorscheme.syntaxError, 0.5, colorscheme.editorBackground)
	local diff_change = utils.shade(colorscheme.syntaxFunction, 0.5, colorscheme.editorBackground)
	local diff_text = utils.shade(colorscheme.warningEmphasis, 0.5, colorscheme.editorBackground)

	local groups = {
		Normal = { fg = colorscheme.mainText, bg = bg },
		LineNr = { fg = colorscheme.lineNumberText },
		ColorColumn = {
			bg = utils.shade(colorscheme.linkText, 0.5, colorscheme.editorBackground),
		},
		Conceal = {},
		Cursor = { fg = colorscheme.editorBackground, bg = colorscheme.mainText },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = colorscheme.popupBackground },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = colorscheme.syntaxFunction },
		DiffAdd = { bg = bg, fg = diff_add },
		DiffChange = { bg = bg, fg = diff_change },
		DiffDelete = { bg = bg, fg = diff_delete },
		DiffText = { bg = bg, fg = diff_text },
		EndOfBuffer = { fg = colorscheme.syntaxKeyword },
		TermCursor = { link = "Cursor" },
		TermCursorNC = { link = "Cursor" },
		ErrorMsg = { fg = colorscheme.syntaxError },
		VertSplit = { fg = colorscheme.windowBorder, bg = bg },
		Winseparator = { link = "VertSplit" },
		SignColumn = { link = "Normal" },
		Folded = { fg = colorscheme.mainText, bg = colorscheme.popupBackground },
		FoldColumn = { link = "SignColumn" },
		IncSearch = {
			bg = utils.mix(colorscheme.syntaxFunction, colorscheme.editorBackground, math.abs(0.30)),
			fg = colorscheme.editorBackground,
		},
		Substitute = { link = "IncSearch" },
		CursorLineNr = { fg = colorscheme.specialKeyword, bg = "NONE" },
		MatchParen = { fg = colorscheme.syntaxError, bg = bg },
		ModeMsg = { link = "Normal" },
		MsgArea = { link = "Normal" },
		MoreMsg = { fg = colorscheme.syntaxFunction },
		NonText = { fg = utils.shade(colorscheme.editorBackground, 0.30) },
		NormalFloat = { bg = colorscheme.floatingWindowBackground },
		NormalNC = { link = "Normal" },
		Pmenu = { link = "NormalFloat" },
		PmenuSel = { bg = colorscheme.menuOptionBackground },
		PmenuSbar = {
			bg = utils.shade(colorscheme.syntaxFunction, 0.5, colorscheme.editorBackground),
		},
		PmenuThumb = { bg = utils.shade(colorscheme.editorBackground, 0.20) },
		Question = { fg = colorscheme.syntaxFunction },
		QuickFixLine = { fg = colorscheme.syntaxFunction },
		SpecialKey = { fg = colorscheme.syntaxOperator },
		StatusLine = { fg = colorscheme.mainText, bg = bg },
		StatusLineNC = {
			fg = colorscheme.inactiveText,
			bg = colorscheme.sidebarBackground,
		},
		WinBar = { fg = colorscheme.mainText, bg = bg },
		WinBarNC = { fg = colorscheme.inactiveText, bg = bg },
		TabLine = {
			bg = colorscheme.sidebarBackground,
			fg = colorscheme.inactiveText,
		},
		TabLineFill = { link = "TabLine" },
		TabLineSel = {
			bg = colorscheme.editorBackground,
			fg = colorscheme.emphasisText,
		},
		Search = { bg = utils.shade(colorscheme.stringText, 0.40, colorscheme.editorBackground) },
		SpellBad = { undercurl = true, sp = colorscheme.syntaxError },
		SpellCap = { undercurl = true, sp = colorscheme.syntaxFunction },
		SpellLocal = { undercurl = true, sp = colorscheme.syntaxKeyword },
		SpellRare = { undercurl = true, sp = colorscheme.warningText },
		Title = { fg = colorscheme.syntaxFunction },
		Visual = {
			bg = utils.shade(colorscheme.syntaxFunction, 0.20, colorscheme.editorBackground),
		},
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = colorscheme.warningText },
		Whitespace = { fg = colorscheme.syntaxOperator },
		WildMenu = { bg = colorscheme.menuOptionBackground },
		Comment = {
			fg = colorscheme.commentText,
			italic = config.italics.comments or false,
		},

		Constant = { fg = colorscheme.syntaxError },
		String = {
			fg = colorscheme.stringText,
			italic = config.italics.strings or false,
		},
		Character = { fg = colorscheme.stringText },
		Number = { fg = colorscheme.foregroundEmphasis, bold = true },
		Boolean = { fg = colorscheme.syntaxFunction },
		Float = { link = "Number" },

		Identifier = { fg = colorscheme.mainText },
		Function = { fg = colorscheme.syntaxKeyword },
		Method = { fg = colorscheme.syntaxKeyword },
		Property = { fg = colorscheme.syntaxFunction },
		Field = { link = "Property" },
		Parameter = { fg = colorscheme.mainText },
		Statement = { fg = colorscheme.syntaxError },
		Conditional = { fg = colorscheme.syntaxError },
		Label = { fg = colorscheme.syntaxFunction },
		Operator = { fg = colorscheme.syntaxError },
		Keyword = { link = "Statement", italic = config.italics.keywords or false },
		Exception = { fg = colorscheme.syntaxError },

		PreProc = { link = "Keyword" },
		Define = { fg = colorscheme.syntaxKeyword },
		Macro = { link = "Define" },
		PreCondit = { fg = colorscheme.syntaxError },

		Type = { fg = colorscheme.syntaxKeyword },
		Struct = { link = "Type" },
		Class = { link = "Type" },

		Attribute = { link = "Character" },
		Punctuation = { fg = colorscheme.syntaxOperator },
		Special = { fg = colorscheme.syntaxOperator },

		SpecialChar = { fg = colorscheme.syntaxError },
		Tag = { fg = colorscheme.stringText },
		Delimiter = { fg = colorscheme.syntaxOperator },
		Debug = { fg = colorscheme.specialKeyword },

		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },
		Ignore = { fg = colorscheme.editorBackground },
		Error = { link = "ErrorMsg" },
		Todo = { fg = colorscheme.warningText, bold = true },

		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = colorscheme.syntaxFunction },
		DiagnosticHint = { fg = colorscheme.warningEmphasis },
		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
		DiagnosticUnderlineError = { undercurl = true, link = "DiagnosticError" },
		DiagnosticUnderlineWarn = { undercurl = true, link = "DiagnosticWarn" },
		DiagnosticUnderlineInfo = { undercurl = true, link = "DiagnosticInfo" },
		DiagnosticUnderlineHint = { undercurl = true, link = "DiagnosticHint" },

		["@text"] = { fg = colorscheme.mainText },
		["@texcolorscheme.literal"] = { link = "Property" },
		["@texcolorscheme.strong"] = { link = "Bold" },
		["@texcolorscheme.italic"] = { link = "Italic" },
		["@texcolorscheme.title"] = { link = "Keyword" },
		["@texcolorscheme.uri"] = {
			fg = colorscheme.syntaxFunction,
			sp = colorscheme.syntaxFunction,
			underline = true,
		},
		["@texcolorscheme.underline"] = { link = "Underlined" },
		["@symbol"] = { fg = colorscheme.syntaxOperator },
		["@texcolorscheme.todo"] = { link = "Todo" },
		["@comment"] = { link = "Comment" },
		["@punctuation"] = { link = "Punctuation" },
		["@punctuation.bracket"] = { fg = colorscheme.warningEmphasis },
		["@punctuation.delimiter"] = { fg = colorscheme.syntaxError },
		["@punctuation.terminator.statement"] = { link = "Delimiter" },
		["@punctuation.special"] = { fg = colorscheme.syntaxError },
		["@punctuation.separator.keyvalue"] = { fg = colorscheme.syntaxError },

		["@texcolorscheme.diff.add"] = { fg = colorscheme.successText },
		["@texcolorscheme.diff.delete"] = { fg = colorscheme.errorText },

		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { fg = colorscheme.syntaxFunction },
		["@constancolorscheme.builtin"] = { link = "Keyword" },
		["@string"] = { link = "String" },
		["@string.escape"] = { fg = utils.shade(colorscheme.stringText, 0.45) },
		["@string.special"] = { fg = utils.shade(colorscheme.syntaxFunction, 0.45) },
		["@number"] = { link = "Number" },
		["@boolean"] = { link = "Boolean" },
		["@function"] = {
			link = "Function",
			italic = config.italics.functions or false,
		},
		["@function.call"] = { link = "Function" },
		["@function.builtin"] = { link = "Function" },
		["@parameter"] = { link = "Parameter" },
		["@method"] = { link = "Function" },
		["@field"] = { link = "Property" },
		["@property"] = { link = "Property" },
		["@constructor"] = { fg = colorscheme.syntaxFunction },
		["@label"] = { link = "Label" },
		["@operator"] = { link = "Operator" },
		["@exception"] = { link = "Exception" },
		["@variable"] = {
			fg = colorscheme.syntaxFunction,
			italic = config.italics.variables or false,
		},
		["@variable.builtin"] = { fg = colorscheme.syntaxFunction },
		["@variable.member"] = { fg = colorscheme.mainText },
		["@variable.parameter"] = {
			fg = colorscheme.mainText,
			italic = config.italics.variables or false,
		},
		["@type"] = { link = "Type" },
		["@type.definition"] = { fg = colorscheme.mainText },
		["@type.builtin"] = { fg = colorscheme.syntaxFunction },
		["@type.qualifier"] = { fg = colorscheme.syntaxFunction },
		["@keyword"] = { link = "Keyword" },
		["@namespace"] = { link = "Type" },
		["@annotation"] = { link = "Label" },
		["@debug"] = { fg = colorscheme.specialKeyword },
		["@tag"] = { link = "Tag" },
		["@tag.builtin"] = { link = "Tag" },
		["@tag.delimiter"] = { fg = colorscheme.syntaxOperator },
		["@tag.attribute"] = { fg = colorscheme.syntaxKeyword },
		["@tag.jsx.element"] = { fg = colorscheme.syntaxFunction },
		["@attribute"] = { fg = colorscheme.syntaxKeyword },
		["@error"] = { link = "Error" },
		["@warning"] = { link = "WarningMsg" },
		["@info"] = { fg = colorscheme.syntaxFunction },

		["@label.json"] = { fg = colorscheme.property },
		["@label.help"] = { link = "@texcolorscheme.uri" },
		["@texcolorscheme.uri.html"] = { underline = true },

		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { fg = colorscheme.syntaxFunction },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@text" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.macro"] = { link = "@label" },
		["@lsp.type.decorator"] = { link = "@label" },
		["@lsp.typemod.function.declaration"] = { link = "@function" },
		["@lsp.typemod.function.readonly"] = { link = "@function" },
	}

	groups = vim.tbl_extend("force", groups, cmp.highlights(colorscheme))
	groups = vim.tbl_extend("force", groups, ibl.highlights(colorscheme))
	groups = vim.tbl_extend("force", groups, bufferline.highlights(colorscheme, config))

	groups =
		vim.tbl_extend("force", groups, type(config.overrides) == "function" and config.overrides() or config.overrides)

	for group, parameters in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameters)
	end
end

function theme.setup(values)
	setmetatable(config, { __index = vim.tbl_extend("force", config.defaults, values) })
end

function theme.colorscheme()
	if vim.version().minor < 8 then
		vim.notify("Neovim 0.8+ is required for carian colorscheme", vim.log.levels.ERROR, { title = "Carian Theme" })
		return
	end

	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.g.VM_theme_set_by_colorscheme = true
	vim.o.termguicolors = true
	vim.g.colors_name = "carian"

	local colorscheme = colorscheme_module.pick()

	set_terminal_colors(colorscheme)
	set_groups(colorscheme)
end

return theme
