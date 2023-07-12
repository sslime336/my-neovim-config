--[[ 导入插件，需要以 lua 目录为根目录 ]]

-- 插件包管理器
require 'plugins.packer'
-- 类似与 Powerline，Neovim 的状态栏插件
require 'plugins.lualine'
-- 树状文件列表，这里用的是 github 上面同步的镜像，官方库一直下载失败
require 'plugins.nvim-tree'
-- 主题的 wrapper，具体是什么主题需要看 ./theme/init.lua
require 'plugins.theme'
-- 提供基于文件名和文本内容的搜索
require 'plugins.telescope'
-- 代码高亮，具体高亮那种代码需要自己配置(这名字取得挺误导的>w<)
require 'plugins.treesitter'
-- Neovim 版 easymotion
require 'plugins.hop' 
-- 显示 git 更改信息，blame 等
require 'plugins.gitsigns'
-- VSCode 类似的 tabs
require 'plugins.bufferline'
-- 内嵌终端
require 'plugins.toggleterm'

