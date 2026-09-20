local colorscheme = require 'carian.colorscheme'
local config = require 'carian.config'
local theme = {}

local bg = (config.transparent and colorscheme.sidebarBackground) or colorscheme.editorBackground

theme.normal = {
    a = { bg = bg, fg = colorscheme.syntaxFunction, gui = 'bold' },
    b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    c = { bg = bg, fg = colorscheme.mainText },
    x = { bg = bg, fg = colorscheme.mainText },
    y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    z = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
}

theme.insert = {
    a = { bg = bg, fg = colorscheme.syntaxOperator, gui = 'bold' },
    b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    c = { bg = bg, fg = colorscheme.mainText },
    x = { bg = bg, fg = colorscheme.mainText },
    y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    z = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
}

theme.terminal = {
    a = { bg = bg, fg = colorscheme.successText, gui = 'bold' },
    b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    c = { bg = bg, fg = colorscheme.mainText },
    x = { bg = bg, fg = colorscheme.mainText },
    y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    z = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
}

theme.command = {
    a = { bg = bg, fg = colorscheme.warningEmphasis, gui = 'bold' },
    b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    c = { bg = bg, fg = colorscheme.mainText },
    x = { bg = bg, fg = colorscheme.mainText },
    y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    z = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
}

theme.visual = {
    a = { bg = bg, fg = colorscheme.syntaxKeyword, gui = 'bold' },
    b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    c = { bg = bg, fg = colorscheme.mainText },
    x = { bg = bg, fg = colorscheme.mainText },
    y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    z = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
}

theme.replace = {
    a = { bg = bg, fg = colorscheme.warningText, gui = 'bold' },
    b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    c = { bg = bg, fg = colorscheme.mainText },
    x = { bg = bg, fg = colorscheme.mainText },
    y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
    z = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
}

theme.inactive = {
    a = { bg = colorscheme.inactiveText, fg = colorscheme.sidebarBackground },
    b = { bg = bg, fg = colorscheme.inactiveText },
    c = { bg = bg, fg = colorscheme.disabledText },
    x = { bg = bg, fg = colorscheme.disabledText },
    y = { bg = bg, fg = colorscheme.inactiveText },
    z = { bg = colorscheme.sidebarBackground, fg = colorscheme.inactiveText },
}

return theme
