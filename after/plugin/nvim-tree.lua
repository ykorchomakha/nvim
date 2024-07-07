-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.g.nvim_tree_auto_open=1

-- empty setup using defaults
require("nvim-tree").setup()

-- automatically open file upon creation
local api = require("nvim-tree.api")
api.events.subscribe(api.events.Event.FileCreated, function(file)
    vim.cmd("edit " .. file.fname)
end)

local nvimTreeFocusOrToggle = function()
    local nvimTree = require("nvim-tree.api")
    nvimTree.tree.toggle()
end

vim.keymap.set("n", "<leader>pv", nvimTreeFocusOrToggle)

