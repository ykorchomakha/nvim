local harpoon = require("harpoon")

harpoon:setup()

local keymap = require("conf.keymap")

vim.keymap.set("n", keymap['harpoon_add'], function() harpoon:list():add() end)
vim.keymap.set("n", keymap['harpoon_quick_menu'], function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

