--[[
    导入插件，需要以 lua 目录为根目录

    这里导入都是对应插件的配置文件
    但有的虽然是配置文件，由于 bug 不能直接导入，只能
    在 packer use 的时候通过相应参数指定来执行配置操作，
    但为了标记已安装的插件，所以仍然写了一些注释来标注
]]

local plugin_path_prefix = 'plugins.config.'
local function load(plugin_name)
    require(plugin_path_prefix .. plugin_name)
end
local function load_batch(plugin_list)
    for _, plugin in ipairs(plugin_list) do
        load(plugin)
    end
end

-- 插件包管理器
require 'plugins.packer'

load_batch {
    -- 类似与 Powerline，Neovim 的状态栏插件
    'lualine',
    -- 树状文件列表，这里用的是 github 上面同步的镜像，官方库一直下载失败
    'nvim-tree',
    -- 提供基于文件名和文本内容的搜索
    'telescope',
    -- 代码高亮，具体高亮那种代码需要自己配置(这名字取得挺误导的>w<)
    'treesitter',
    -- Neovim 版 easymotion
    'hop',
    -- 显示 git 更改信息，blame 等
    'gitsigns',
    -- VSCode 类似的 tabs
    'bufferline',
    -- 内嵌终端
    'toggleterm',
    -- 语言无关注释
    'comment',
    -- 自动补全
    'nvim-cmp',
    -- 'lsp'
    'mason',
    -- rust-tools
    'rust-tools',
    -- 大纲 (SymbolsOutline)
    'symbols-outline',
    -- Lsp 美化
    'lspsaga',
}
