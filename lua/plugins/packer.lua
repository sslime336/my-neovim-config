--[[
    插件包管理器 packer.lua

    同步插件执行:

        :PackerSync

    这会检查更新并安装没有安装的插件
]]

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local PACKER_BOOTSTRAPED = ensure_packer()

return require('packer').startup({
    function(use)
        use 'wbthomason/packer.nvim'

        -- 需要安装的插件，因为现在在用 github 来下载插件，所以这些需要能在 github 上面找到
        use 'nvim-tree/nvim-tree.lua'
        -- tabnine AI 辅助
        use {
            'tzachar/cmp-tabnine',
            after = "nvim-cmp",
            run = function()
                local on_windows = 'powershell ./install.ps1' -- on Windows
                local on_unix = './install.sh'                -- on Unix-like OS
                local defalut_install_script = on_unix
                local cur_os_path_separator = package.config:sub(1, 1)
                if cur_os_path_separator == '\\' then
                    return on_windows
                elseif cur_os_path_separator == '/' then
                    return on_unix
                else
                    return defalut_install_script
                end
            end
        }
        -- 不同类型文件的 icons
        use 'nvim-tree/nvim-web-devicons'
        -- 类似 Powerline
        use { 'nvim-lualine/lualine.nvim' }
        use 'nvim-treesitter/nvim-treesitter'
        -- 通用工具包，有不少的库都依赖于这个
        use "nvim-lua/plenary.nvim"
        use 'nvim-telescope/telescope.nvim'
        -- bufferline 把 buffer 显示成类似 VSCode 中 Tab 页的形式
        use {
            'akinsho/bufferline.nvim',
            tag = "*",
        }
        -- 方便的终端
        use {
            "akinsho/toggleterm.nvim",
            tag = '*',
        }
        -- 显示 git 的修改和 blame
        use 'lewis6991/gitsigns.nvim'
        -- 显示文件不同
        use 'sindrets/diffview.nvim'
        -- Neovim 版 easymotion
        -- use 'phaazon/hop.nvim' -- maintainer 正在找维护者，空行报错 bug 还未修复所以先用 fork
        use 'sslime336/hop.nvim'
        -- outline
        use 'simrat39/symbols-outline.nvim'
        -- 补全括号
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        -- 语言无关注释
        use 'numToStr/Comment.nvim'
        -- 各种场景的自动补全
        use 'hrsh7th/nvim-cmp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/cmp-nvim-lsp'
        -- vsnip
        use 'hrsh7th/cmp-vsnip'
        use 'hrsh7th/vim-vsnip'
        use 'rafamadriz/friendly-snippets'
        -- lspkind 提供 VSCode 样式的代码补全 ui(函数，接口等的 ui)
        use 'onsails/lspkind-nvim'
        -- lsp 支持
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        }
        -- For using rust-analyzer tools
        use 'simrat39/rust-tools.nvim'
        use {
            'ahmedkhalf/project.nvim',
            config = function()
                require("project_nvim").setup {}
            end
        }
        -- 自动保存
        use {
            "Pocco81/auto-save.nvim",
            config = function()
                require("auto-save").setup {}
            end,
        }
        -- 配合 LSP，美化 LSP 的提示等
        use {
            "nvimdev/lspsaga.nvim",
            after = 'nvim-lspconfig',
            config = function()
                require("lspsaga").setup {}
            end
        }
        -- Theme
        use "folke/tokyonight.nvim"
        use { "ellisonleao/gruvbox.nvim" }

        use {
            'crusj/bookmarks.nvim',
            branch = 'main',
            requires = { 'kyazdani42/nvim-web-devicons' },
            config = function()
            end
        }
        -- todo/fixme/issue 等高亮和跳转
        use { "folke/todo-comments.nvim" }

        -- 函数作用域竖线提示(这个目前竖线位置有点不对)
        -- use {
        --     'lukas-reineke/indent-blankline.nvim',
        --     config = function()
        --         require('indent-blankline').setup {
        --             show_current_context = false,
        --             show_current_context_start = false,
        --         }
        --     end
        -- }

        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if PACKER_BOOTSTRAPED then
            require('packer').sync()
        end
    end,

    config = {
        -- 最大并发数
        max_jobs = 16,
        -- 自定义源
        git = {
            default_url_format = "git@github.com:%s",
            -- default_url_format = 'https://ghproxy.com/https://github.com/%s'
            -- default_url_format = "https://hub.fastgit.xyz/%s",
            -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
            -- default_url_format = "https://gitcode.net/mirrors/%s",
            -- default_url_format = "https://gitclone.com/github.com/%s",
        },
        display = {
            -- 使用浮动窗口显示
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        },
    }
})
