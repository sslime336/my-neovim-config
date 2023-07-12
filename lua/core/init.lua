-- 使用系统剪切板
vim.opt.clipboard = 'unnamedplus'

-- 是否启用鼠标(e.g. 可以用鼠标改变光标的位置) 这里是不启用
vim.opt.mouse = ''

-- <leader>
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- 启用行号和相对行号
vim.opt.number = true
vim.opt.relativenumber = true

-- 这个会高亮当前行(在原版状态下当前行会有一个下划线)
-- vim.opt.cursorline = true

-- 将 tabs 换成 spaces
vim.opt.expandtab = true
