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
        dependencies = {
            "williamboman/mason.nvim",
        },
        config = function()
           local lspconfig = require('lspconfig')
           local util = require('lspconfig.util')
           -- Angular requires a node_modules directory to probe for @angular/language-service and typescript
           -- in order to use your projects configured versions.
           -- This defaults to the vim cwd, but will get overwritten by the resolved root of the file.
           local function get_probe_dir(root_dir)
             local project_root = vim.fs.find('node_modules', { path = root_dir, upward = true })[1]

             return project_root and (project_root .. '/node_modules') or ''
           end
           local default_probe_dir = get_probe_dir(vim.fn.getcwd())

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
           lspconfig.angularls.setup({
              cmd = {
                  'ngserver',
                  '--stdio',
                  '--tsProbeLocations',
                  table.concat({
                        default_probe_dir .. '/typescript/lib',
                        vim.uv.cwd(),
                  }, ','),
                  '--ngProbeLocations',
                  table.concat({
                        default_probe_dir .. '/@angular/language-server/bin',
                        vim.uv.cwd(),
                  }, ',')
                },
                filetypes = { 'ts', 'typescript', 'html', 'typescriptreact', 'typescript.tsx', 'htmlangular' },
                -- Check for angular.json since that is the root of the project.
                -- Don't check for tsconfig.json or package.json since there are multiple of these
                -- in an angular monorepo setup.
                root_dir = util.root_pattern 'angular.json',
           })
           vim.keymap.set('n', 'K', vim.lsp.buf.hover)
           vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
           vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
