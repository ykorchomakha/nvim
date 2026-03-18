-- Enable syntax highlighting
vim.cmd("syntax on")

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs & indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Display
vim.opt.wrap = false
vim.opt.colorcolumn = "100"

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- List chars
vim.opt.list = true
vim.opt.listchars = {
  tab = "›⋅",
  trail = "⋅",
  space = "⋅",
}

-- Cursor line
vim.opt.cursorline = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- Scrolling & UI
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Colors
vim.opt.termguicolors = true
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

