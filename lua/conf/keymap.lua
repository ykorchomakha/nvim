-- set up leader key
vim.g.mapleader = " "

-- don't override default register on paste
vim.api.nvim_set_keymap('v', 'p', '"_dP', { noremap = true })

-- keymap
local keys = {
    -- general
    ['quit'] = '<leader>qq',

    -- navigation
    ['file_explorer'] = '<leader>op',
    ['find_files'] = '<leader>pf',
    ['git_files'] = '<leader><leader>',
    ['live_grep'] = '<leader>/',

    -- windows
    ['window_up'] = '<leader>wk',
    ['window_down'] = '<leader>wj',
    ['window_left'] = '<leader>wh',
    ['window_right'] = '<leader>wl',
    ['next_window'] = '<leader>ww',
    ['close_window'] = '<leader>wq',
    ['horizontal_split'] = '<leader>ws',
    ['vertical_split'] = '<leader>wv',

    -- files
    ['save_file'] = '<leader>fs',

    -- harpoon
    ['harpoon_add'] = '<leader>ha',
    ['harpoon_quick_menu'] = '<leader>hm',

    -- LSP
    ['find_workspace_symbols'] = '<leader>cj',
    ['find_references'] = 'gD',
    ['format_code'] = '<leader>cf',
    ['code_action'] = '<leader>ca',
    ['diagnostic_float'] = '<leader>cd',

    -- debugger
    ['debug_toggle_ui'] = '<leader>du',
    ['debug_toggle_breakpoint'] = '<leader>db',
    ['debug_continue'] = '<leader>dc',
    ['debug_step_into'] = '<leader>di',
    ['debug_step_over'] = '<leader>do',

    -- tests
    ['test_nearest'] = '<leader>tr',

    -- misc
    ['terminal'] = '<leader>ot',
}

vim.keymap.set('n', keys['quit'], ":qa<CR>")

vim.keymap.set('n', keys['window_up'], '<C-w>k')
vim.keymap.set('n', keys['window_down'], '<C-w>j')
vim.keymap.set('n', keys['window_left'], '<C-w>h')
vim.keymap.set('n', keys['window_right'], '<C-w>l')
vim.keymap.set('n', keys['next_window'], '<C-w><C-w>')
vim.keymap.set('n', keys['close_window'], ':q<CR>')
vim.keymap.set('n', keys['horizontal_split'], ':split<CR><C-w>j')
vim.keymap.set('n', keys['vertical_split'], ':vsplit<CR><C-w>l')

vim.keymap.set('n', keys['save_file'], ':w<CR>')

vim.keymap.set('n', keys['terminal'], ':terminal<CR>')

return keys
