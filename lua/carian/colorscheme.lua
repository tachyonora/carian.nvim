local p = {
	c0 = "#dfe4f2",
	c1 = "#171c26",
	c2 = "#171c26",
	c3 = "#dfe4f2",
	c4 = "#797c8c",
	c5 = "#a51c1a",
	c6 = "#b4b6d9",
	c7 = "#b39c8c",
	c8 = "#80b2d2",
	c9 = "#b7add9",
	c10 = "#c7d7e8",
	c11 = "#e9ecfd",
	c12 = "#4c5059",
	c13 = "#af331c",
	c14 = "#707287",
	c15 = "#755443",
	c16 = "#1755a6",
	c17 = "#997ebf",
	c18 = "#9ab6ce",
	c19 = "#a6adc8",
	c20 = "#1f2533",
	c21 = "#252b3a",
	c22 = "#2e3547",
	c23 = "#3a4155",
	c24 = "#464e63",
	c25 = "#525a70",
	c26 = "#5e667d",
	c27 = "#6a728a",
	c28 = "#767e97",
	c29 = "#828aa4",
	c30 = "#8e96b1",
	c31 = "#9aa2be",
	c32 = "#a6adc8",
	c33 = "#b2b9d2",
	c34 = "#bec5dc",
	c35 = "#c9d0e6",
	c36 = "#d5dcf0",
	c37 = "#8a9bb5",
	c38 = "#6b7a94",
	c39 = "#b4b6d9",
}

local M = {}

function M.pick()
	local colorscheme = {}

	if vim.o.background == "light" then
		colorscheme.editorBackground = p.c0
		colorscheme.sidebarBackground = p.c32
		colorscheme.popupBackground = p.c34
		colorscheme.floatingWindowBackground = p.c34
		colorscheme.menuOptionBackground = p.c36

		colorscheme.mainText = p.c1
		colorscheme.emphasisText = p.c14
		colorscheme.commandText = p.c16
		colorscheme.inactiveText = p.c12
		colorscheme.disabledText = p.c4
		colorscheme.lineNumberText = p.c30
		colorscheme.selectedText = p.c14
		colorscheme.inactiveSelectionText = p.c19

		colorscheme.windowBorder = p.c12
		colorscheme.focusedBorder = p.c16
		colorscheme.emphasizedBorder = p.c5

		colorscheme.syntaxError = p.c5
		colorscheme.syntaxFunction = p.c17
		colorscheme.warningText = p.c7
		colorscheme.syntaxKeyword = p.c15
		colorscheme.linkText = p.c16
		colorscheme.commentText = p.c30
		colorscheme.stringText = p.c5
		colorscheme.successText = p.c6
		colorscheme.warningEmphasis = p.c7
		colorscheme.specialKeyword = p.c17
		colorscheme.syntaxOperator = p.c16
		colorscheme.foregroundEmphasis = p.c21
		colorscheme.terminalGray = p.c4
	else
		colorscheme.editorBackground = p.c1
		colorscheme.sidebarBackground = p.c20
		colorscheme.popupBackground = p.c21
		colorscheme.floatingWindowBackground = p.c22
		colorscheme.menuOptionBackground = p.c23

		colorscheme.mainText = p.c0
		colorscheme.emphasisText = p.c33
		colorscheme.commandText = p.c8
		colorscheme.inactiveText = p.c30
		colorscheme.disabledText = p.c26
		colorscheme.lineNumberText = p.c27
		colorscheme.currentLineNumber = p.c0
		colorscheme.selectedText = p.c34
		colorscheme.inactiveSelectionText = p.c29

		colorscheme.windowBorder = p.c35
		colorscheme.focusedBorder = p.c8
		colorscheme.emphasizedBorder = p.c6

		colorscheme.syntaxError = p.c5
		colorscheme.syntaxFunction = p.c9
		colorscheme.warningText = p.c7
		colorscheme.syntaxKeyword = p.c10
		colorscheme.linkText = p.c8
		colorscheme.stringText = p.c6
		colorscheme.warningEmphasis = p.c7
		colorscheme.successText = p.c6
		colorscheme.errorText = p.c5
		colorscheme.specialKeyword = p.c17
		colorscheme.commentText = p.c28
		colorscheme.syntaxOperator = p.c39
		colorscheme.foregroundEmphasis = p.c0
		colorscheme.terminalGray = p.c32
	end

	return colorscheme
end

return M
