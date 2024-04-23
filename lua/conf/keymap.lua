vim.g.mapleader = " "
vim.api.nvim_set_keymap('v', 'p', '"_dP', { noremap = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")

