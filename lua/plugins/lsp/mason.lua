-- lsp 支持

return {
    {
        "williamboman/mason.nvim",
        event = "VeryLazy",
        dependencies = {
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "gopls",
                    "marksman",
                },
            }

            local function on_attach(client, bufnr)
                local opt = { noremap = true, silent = true, buffer = bufnr }
            end

            -- Setup LSP
            require("lspconfig").lua_ls.setup { on_attach = on_attach }
            require("lspconfig").rust_analyzer.setup { on_attach = on_attach }
            require("lspconfig").gopls.setup {
                on_attach = on_attach,
                settings = {
                    -- INFO: https://github.com/golang/tools/blob/master/gopls/doc/settings.md
                },
            }
            require("lspconfig").marksman.setup { on_attach = on_attach }
            require("lspconfig").jsonls.setup { on_attach = on_attach }
        end
    },
}
