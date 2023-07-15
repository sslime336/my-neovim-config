-- 保存当前文件
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- 插入模式下 Ctrl-v 能粘贴
vim.keymap.set('i', '<C-v>', '<Esc>pa')
-- 命令模式下 Ctrl-v 能粘贴
vim.keymap.set('c', '<C-v>', '<C-r>"')
