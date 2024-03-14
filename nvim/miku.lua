local colours = {
    bg = '#000000',
    fg = '#E2E7EC',
    black = '#3B4252',
    red = '#a6496d',
    green = '#7EC3CF',
    yellow = '#dbc56b',
    blue = '#9fb9d6',
    magenta = '#a56388',
    cyan = '#9ecfde',
    white = '#E2E7EC',
    black2 = '#4C566A',
    red2 = '#a85173',
    green2 = '#9EDAE5',
    yellow2 = '#d9c77c',
    blue2 = '#b0c6de',
    magenta2 = '#b5769a',
    cyan2 = '#b4d6e0',
    white2 = '#F5F7FA',
}

-- Setting background and foreground color for Normal text
vim.cmd[[ hi Normal guibg=colours.bg]]

-- Other highlights
vim.cmd[[ hi Comment guifg=colours.blue2]]
vim.cmd[[ hi Identifier guifg=]]

-- Bright highlights
vim.cmd[[ hi ErrorMsg guifg=]]
