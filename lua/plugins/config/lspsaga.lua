-- Lspsaga LSP 美化插件

local opt = {
    silent = true, noremap = true
}

-- 在悬浮窗查看定义
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opt)
-- 跳转到定义
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
-- 显示注释文档
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opt)
-- 跳转到实现
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
-- 重命名
vim.keymap.set("n", "<space>rn", "<cmd>Lspsaga rename<CR>", opt)
-- 显示错误信息
vim.keymap.set("n", "<space>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
-- 跳转到上一个错误
vim.keymap.set("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
-- 跳转到下一个错误
vim.keymap.set("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)

-- Code Action
vim.keymap.set("n", "<space>j", "<cmd>Lspsaga code_action<CR>", opt)
vim.keymap.set("v", "<space>j", "<cmd>Lspsaga code_action<CR>", opt)
