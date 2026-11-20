return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        -- Install your desired parsers
        require("nvim-treesitter").install({
            "javascript",
            "python",
            "java",
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            "haskell", -- Useful for TidalCycles (.tidal) files
        })

        -- Enable native Neovim Tree-sitter highlighting for all filetypes with a parser
        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                pcall(vim.treesitter.start, args.buf)
            end,
        })
    end,
}

