-- 使用系统剪切板
vim.o.clipboard = 'unnamedplus'

-- 是否启用鼠标，不启用可以设置为空字符串: ''
vim.o.mouse = 'a'

-- <leader>
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- 启用行号和相对行号
vim.o.number = true
vim.o.relativenumber = true

-- 这个会高亮当前行(在原版状态下当前行会有一个下划线)
vim.o.cursorline = false

-- tab 相关配置
vim.o.shiftwidth = 4   -- 按下 tab 4 格宽
vim.o.tabstop = 4      -- 一个 tab 会被显示成 4 个空格
vim.o.softtabstop = 4
vim.o.shiftwidth = 4   -- 每个 tab 会插入 4 个空格
vim.o.expandtab = true -- 将 tabs 换成 spaces

local cur_os_path_separator = package.config:sub(1, 1)
if cur_os_path_separator == '\\' then -- On windows
    -- Windows 下面 Neovim terminal bug 的 workaround
    vim.cmd [[let &shell = '"D:/Git/bin/bash.exe"']]
    vim.cmd [[let &shellcmdflag = '-s']]
elseif cur_os_path_separator == '/' then -- On Unix-like OS
    vim.cmd [[let &shell = '/bin/bash']]
end

-- 不生成备份文件，如 *.swp
vim.cmd 'set nobackup'

-- 关闭搜索高亮
vim.cmd 'set nohlsearch'

-- 设置默认文件保存位置
local default_path_windows = 'E:/nvim-temp'
local default_path_linux = '~/nvim-temp'
if cur_os_path_separator == '\\' then    -- On windows
    vim.cmd('cd ' .. default_path_windows)
elseif cur_os_path_separator == '/' then -- On Unix-like OS
    vim.cmd('cd ' .. default_path_linux)
end