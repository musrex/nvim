return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Automaticall update parsers after installation
    config = function()
        require("nvim-treesitter.configs").setup({
        ensure_installed = {"javascript", "python", "java", "c", "lua", "vim", "vimdoc", "query" },

        sync_install = false,
        auto_install = true,

        highlight = {
        -- 'false' will disable the whole extension
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
        },
    })
    end,
}
