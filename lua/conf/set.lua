vim.cmd("source ~/.vimrc")

vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

-- stop extending comments automatically
vim.opt.formatoptions:remove("c")
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")

-- Set up an autocmd to trigger the highlighting after yanking
vim.cmd([[
    augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
    augroup END
]])

