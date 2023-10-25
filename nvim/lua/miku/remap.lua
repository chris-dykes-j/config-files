vim.g.mapleader = " "

-- directory
vim.keymap.set("n", "<leader>v", vim.cmd.Ex)

-- terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':terminal<CR>', {noremap = true, silent = true})

