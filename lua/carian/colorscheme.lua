local config = require("carian.config")

local p = {
	c0 = "#CDD6F4",
	c1 = "#F38BA8",
	c2 = "#A6E3A1",
	c3 = "#F9E2AF",
	c4 = "#89B4FA",
	c5 = "#CBA6F7",
	c6 = "#94E2D5",
	c7 = "#BAC2DE",
	c8 = "#585B70",
	c9 = "#F28FAD",
	c10 = "#A6E3A1",
	c11 = "#F9E2AF",
	c12 = "#89B4FA",
	c13 = "#CBA6F7",
	c14 = "#94E2D5",
	c15 = "#BAC2DE",
	c16 = "#F5E0DC",
	c17 = "#1E1E2E",
	c18 = "#313244",
	c19 = "#45475A",
	c20 = "#585B70",
	c21 = "#6C7086",
	c22 = "#9399B2",
	c23 = "#A6ADC8",
	c24 = "#89B4FA",
	c25 = "#F38BA8",
	c26 = "#F9E2AF",
	c27 = "#A6E3A1",
	c28 = "#CBA6F7",
	c29 = "#94E2D5",
	c30 = "#F5A393",
	c31 = "#C17373",
	c32 = "#60A63F",
	c33 = "#A65C32",
	c34 = "#7985FF",
	c35 = "#F10A87",
	c36 = "#D6D5DB",
}

local colorscheme = {}

if vim.o.background == "light" then
	colorscheme.editorBackground = p.c16
	colorscheme.sidebarBackground = p.c7
	colorscheme.popupBackground = p.c36
	colorscheme.floatingWindowBackground = p.c23
	colorscheme.menuOptionBackground = p.c12

	colorscheme.mainText = p.c17
	colorscheme.emphasisText = p.c19
	colorscheme.commandText = p.c24
	colorscheme.inactiveText = p.c21
	colorscheme.disabledText = p.c8
	colorscheme.lineNumberText = p.c20
	colorscheme.selectedText = p.c19
	colorscheme.inactiveSelectionText = p.c22

	colorscheme.windowBorder = p.c21
	colorscheme.focusedBorder = p.c24
	colorscheme.emphasizedBorder = p.c32

	colorscheme.syntaxError = p.c25
	colorscheme.syntaxFunction = p.c28
	colorscheme.warningText = p.c26
	colorscheme.syntaxKeyword = p.c30
	colorscheme.linkText = p.c24
	colorscheme.commentText = p.c22
	colorscheme.stringText = p.c32
	colorscheme.successText = p.c27
	colorscheme.warningEmphasis = p.c33
	colorscheme.specialKeyword = p.c35
	colorscheme.syntaxOperator = p.c34
	colorscheme.foregroundEmphasis = p.c18
	colorscheme.terminalGray = p.c8
else
	colorscheme.editorBackground = p.c17
	colorscheme.sidebarBackground = p.c18
	colorscheme.popupBackground = p.c19
	colorscheme.floatingWindowBackground = p.c20
	colorscheme.menuOptionBackground = p.c21

	colorscheme.mainText = p.c0
	colorscheme.emphasisText = p.c7
	colorscheme.commandText = p.c4
	colorscheme.inactiveText = p.c21
	colorscheme.disabledText = p.c20
	colorscheme.lineNumberText = p.c22
	colorscheme.currentLineNumber = p.c0
	colorscheme.selectedText = p.c23
	colorscheme.inactiveSelectionText = p.c20

	colorscheme.windowBorder = p.c21
	colorscheme.focusedBorder = p.c4
	colorscheme.emphasizedBorder = p.c2

	colorscheme.syntaxError = p.c1
	colorscheme.syntaxFunction = p.c5
	colorscheme.warningText = p.c3
	colorscheme.syntaxKeyword = p.c6
	colorscheme.linkText = p.c4
	colorscheme.stringText = p.c2
	colorscheme.warningEmphasis = p.c3
	colorscheme.successText = p.c2
	colorscheme.errorText = p.c1
	colorscheme.specialKeyword = p.c5
	colorscheme.commentText = p.c22
	colorscheme.syntaxOperator = p.c13
	colorscheme.foregroundEmphasis = p.c0
	colorscheme.terminalGray = p.c20
end

return colorscheme
