return {
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.6',
        event = 'VeryLazy',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require('telescope').setup({
                extensions = {
                    ['ui-select'] = {
                        require("telescope.themes").get_dropdown({
                            winblend = 10,
                            border = true,
                            previewer = false,
                            layout_config = {
                                width = 0.5,
                                height = 0.5,
                            }
                        })
                    }
                }
            })
            require('telescope').load_extension('ui-select')
        end
    }
}
