local builtin = require('telescope.builtin')
local keymap = require('conf.keymap')

local function is_git_repo()
    local result = vim.system(
        { "git", "rev-parse", "--is-inside-work-tree" },
        { text = true }
    ):wait()

    return result.code == 0
end

local function git_files(opts)
    if is_git_repo() then
        builtin.git_files(opts)
    else
        vim.notify("Not a Git Repo")
    end
end

vim.keymap.set('n', keymap['find_files'], builtin.find_files, {})
vim.keymap.set('n', keymap['git_files'], git_files, {})
vim.keymap.set('n', keymap['live_grep'], builtin.live_grep, {})
vim.keymap.set('n', keymap['find_workspace_symbols'], builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', keymap['find_references'], builtin.lsp_references, {})

local telescope = require('telescope')
telescope.setup {
    defaults = {
        path_display = { 'smart' },
        file_ignore_patterns = { 'node_modules', 'target', '.settings', '.idea', 'build' }
    }
}
