return {
    -- Mason - Package manager for LSP servers, formatters, etc.
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {"lua_ls", "rust_analyzer" },
        },
        dependencies = {
        	{ "mason-org/mason.nvim", opts = {} },
	       "neovim/nvim-lspconfig",
        	"hrsh7th/cmp-nvim-lsp",
        },
        config = function(_, opts)
            vim.lsp.config("*", {
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
            })

            require("mason-lspconfig").setup(opts)
        end,
    },
    
    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            
            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = {
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                },
            })
        end
    },
}
