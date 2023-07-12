-- 使用系统剪切板
vim.opt.clipboard = 'unnamedplus'

-- 是否启用鼠标，不启用可以设置为空字符串: ''
vim.opt.mouse = 'a'

-- <leader>
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- 启用行号和相对行号
vim.opt.number = true
vim.opt.relativenumber = true

-- 这个会高亮当前行(在原版状态下当前行会有一个下划线)
vim.opt.cursorline = true

-- tab 相关配置
vim.opt.shiftwidth = 4   -- 按下 tab 4 格宽
vim.opt.tabstop = 4      -- 一个 tab 会被显示成 4 个空格
vim.opt.softtabstop = 4
 vim.opt.shiftwidth = 4  -- 每个 tab 会插入 4 个空格
vim.opt.expandtab = true -- 将 tabs 换成 spaces

-- Windows 下面 Neovim terminal bug 的 workaround
vim.cmd [[let &shell = '"D:/Git/bin/bash.exe"']]
vim.cmd [[let &shellcmdflag = '-s']]

-- 不生成备份文件，如 *.swp
vim.cmd 'set nobackup'

