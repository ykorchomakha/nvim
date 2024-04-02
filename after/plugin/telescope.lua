local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ft', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})

local telescope = require('telescope')
telescope.setup{
    defaults = {
        file_ignore_patterns = {"node_modules", "target"}
    }
}

