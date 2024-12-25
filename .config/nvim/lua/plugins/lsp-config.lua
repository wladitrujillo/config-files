return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "angularls", "lua_ls", "ts_ls", "html", "cssls", "sqlls", "yamlls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
           local lspconfig = require('lspconfig')
           local util = require('lspconfig.util')
           lspconfig.lua_ls.setup({})
           lspconfig.ts_ls.setup({})
           lspconfig.html.setup({})
           lspconfig.cssls.setup({})
           lspconfig.sqlls.setup({
                cmd = { 'sql-language-server', 'up', '--method', 'stdio' },
                filetypes = { 'sql', 'mysql', 'sp' },
                root_dir = util.root_pattern '.sqllsrc.json',
                settings = {},
           })
           lspconfig.yamlls.setup({})
           lspconfig.angularls.setup({})
           vim.keymap.set('n', 'K', vim.lsp.buf.hover)
           vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
           vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
