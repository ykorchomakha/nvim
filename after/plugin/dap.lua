local dap = require('dap')

dap.adapters.codelldb = {
    type = 'server',
    host = '127.0.0.1',
    port = '13000',
    executable = {
        command = 'codelldb',
        args = { '--port', '13000' }
    }
}

dap.configurations.c = {
    {
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd()..'/', 'file')
        end,
        cwd = '${workspaceFolder}',
        terminal = 'integrated'
    }
}

dap.configurations.cpp = dap.configurations.c

dap.configurations.rust = {
    {
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd()..'/', 'file')
        end,
        cwd = '${workspaceFolder}',
        terminal = 'integrated',
        sourceLanguages = { 'rust' }
    }
}

vim.keymap.set('n', '<F3>', dap.toggle_breakpoint, {})
vim.keymap.set('n', '<F5>', dap.continue, {})
vim.keymap.set('n', '<F7>', dap.step_into, {})
vim.keymap.set('n', '<F8>', dap.step_over, {})
