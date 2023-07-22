require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" },
}

local function on_attach(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opt = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opt)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opt)
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opt)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opt)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opt)
    -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opt)
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opt)
    -- vim.keymap.set('n', '<space>wl', function()
    --     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, opt) vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opt)
    -- 重命名
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opt)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)

    -- lint(其实只是 format)
    vim.keymap.set('n', '<space>l', function() vim.lsp.buf.format { async = true } end, opt)
end

-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").lua_ls.setup { on_attach = on_attach }
require("lspconfig").rust_analyzer.setup { on_attach = on_attach }
require("lspconfig").marksman.setup { on_attach = on_attach }
require("lspconfig").jsonls.setup { on_attach = on_attach }
