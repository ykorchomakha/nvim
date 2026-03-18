require('mason-lspconfig').setup(
    {
        automatic_installation = true,
        ensure_installed = {
            'clangd',
            'gopls',
            'jdtls',
            'kotlin_lsp',
            'lua_ls',
            'pyright',
            'ruff',
            'rust_analyzer',
            'ts_ls',
        },
    }
)

