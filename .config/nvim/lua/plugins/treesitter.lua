return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy", 
    main = "nvim-treesitter.configs",
    opts = {
          ensure_installed = { "c", "lua", "luadoc", "vim", "vimdoc", "javascript", "html", "java", "typescript" },
          highlight = { enable = true },
          indent = { enable = true },  
    }
}
