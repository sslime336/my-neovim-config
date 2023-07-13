-- lsp-installer 不再更新，其推荐使用 mason

require("mason").setup()
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" },
}

-- 使用 lsp 格式化
require("lsp-format").setup {
    rust_analyzer = {}
}

local function on_attach(client)
    require("lsp-format").on_attach(client)
end

-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").lua_ls.setup { on_attach = on_attach }
require("lspconfig").rust_analyzer.setup { on_attach = on_attach }
require("lspconfig").marksman.setup {}
require("lspconfig").jsonls.setup { on_attach = on_attach }
