-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.g.nvim_tree_auto_open = 1

-- empty setup using defaults
require("nvim-tree").setup({
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    renderer = {
        group_empty = true,
    },
})

local api = require("nvim-tree.api")

-- automatically open file upon creation
api.events.subscribe(api.events.Event.FileCreated, function(file)
    vim.cmd("edit " .. file.fname)
end)

local function show_tree()
    if not api.tree.is_visible() then
        api.tree.open({ current_window = true })
    end
end

vim.keymap.set("n", "<leader>pv", show_tree)
