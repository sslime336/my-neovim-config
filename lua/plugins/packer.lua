--[[
    插件包管理器 packer.lua

    同步插件执行:

        :PackerSync

    这会检查更新并安装没有安装的插件
]]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup({
  function(use)
    use 'wbthomason/packer.nvim'

    -- 需要安装的插件，因为现在在用 github 来下载插件，所以这些需要能在 github 上面找到
    use 'nvim-tree/nvim-tree.lua'
    -- 不同类型文件的 icons
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'antonk52/lake.nvim' -- 主题 lake
    use 'nvim-treesitter/nvim-treesitter'
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{
        'nvim-lua/plenary.nvim'
      }}
    }
    -- bufferline 把 buffer 显示成类似 VSCode 中 Tab 页的形式
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    -- 方便的终端
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    -- 显示 git 的修改和 blame
    use 'lewis6991/gitsigns.nvim'
    -- 显示文件不同
    use 'sindrets/diffview.nvim'
    -- Neovim 版 easymotion
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure hop the way you like here; see :h hop-config
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
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
