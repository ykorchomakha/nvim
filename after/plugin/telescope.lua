local builtin = require('telescope.builtin')
local keymap = require('conf.keymap')
vim.keymap.set('n', keymap['find_files'], function() builtin.find_files({path_display = { 'smart' }}) end, {})
vim.keymap.set('n', keymap['git_files'], function() builtin.git_files({path_display = { 'smart' }}) end, {})
vim.keymap.set('n', keymap['live_grep'], builtin.live_grep, {})
vim.keymap.set('n', keymap['find_workspace_symbols'], builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', keymap['find_references'], builtin.lsp_references, {})

local telescope = require('telescope')
telescope.setup {
    defaults = {
        path_display = { 'smart' },
        file_ignore_patterns = { 'node_modules', 'target', '.settings', '.idea' }
    }
}
