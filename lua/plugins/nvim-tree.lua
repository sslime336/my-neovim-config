vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup {

}

-- 从 VSCode 迁移过来的习惯，Ctrl-b 打开文件列表
vim.keymap.set('n', '<C-b>', ':NvimTreeFindFileToggle<CR>')

