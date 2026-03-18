local dapui = require('dapui')
dapui.setup()

local keymap = require('conf.keymap')
vim.keymap.set('n', keymap['debug_toggle_ui'], dapui.toggle, {})

