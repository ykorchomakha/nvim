require'neotest'.setup({
    adapters = {
        require'neotest-java',
    },
})

local keymap = require('conf.keymap')
vim.keymap.set('n', keymap['test_nearest'], require('neotest').run.run, {})
