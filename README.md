# my-neovim-config

## 使用环境

OS: Windows10/Ubuntu20.04(WSL2)

字体: FiraCode Nerd Font Mono

字号: 10

终端: Git Bash on Windows terminal (终端主题: **One Half Dark** theme), Bash

## 已知问题

Currently unknown

## TODO

- debug support
- ssh
- translation
- session

## 使用手册

### Overview

```
~/.config/nvim
│  .gitignore
│  init.lua
│  README.md
│
├─lua
│  ├─core
│  │  │  init.lua
│  │  │  keymaps.lua
│  │  │
│  │  └─theme
│  │          gruvbox.lua
│  │          init.lua
│  │          tokyonight.lua
│  │
│  └─plugins
│      │  init.lua
│      │  packer.lua
│      │
│      └─config
│              bookmarks.lua
│              bufferline.lua
│              comment.lua
│              gitsigns.lua
│              hop.lua
│              lspsaga.lua
│              lualine.lua
│              mason.lua
│              nvim-cmp.lua
│              nvim-tree.lua
│              rust-tools.lua
│              symbols-outline.lua
│              telescope.lua
│              todo-comments.lua
│              toggleterm.lua
│              treesitter.lua
│
└─plugin(这个是packer编译后的产物，不是配置文件的一部分)
        packer_compiled.lua
```

### 已安装插件

#### 包管理器/插件管理

- wbthomason/packer.nvim 

#### Lsp 相关

- williamboman/mason.nvim
- williamboman/mason-lspconfig.nvim
- neovim/nvim-lspconfig
- nvimdev/lspsaga.nvim

#### 代码补全/Snippets

- hrsh7th/nvim-cmp 补全
- hrsh7th/cmp-buffer
- hrsh7th/cmp-path
- hrsh7th/cmp-cmdline
- hrsh7th/cmp-nvim-lsp
- hrsh7th/cmp-vsnip
- hrsh7th/vim-vsnip
- rafamadriz/friendly-snippets
- tzachar/cmp-tabnine Tabnine AI 补全方案

#### icons/UI

- onsails/lspkind-nvim
- nvim-tree/nvim-web-devicons 好看的图标
- nvim-lualine/lualine.nvim 好看的状态栏
- nvim-tree/nvim-tree.lua 文件列表
- nvim-telescope/telescope.nvim 一个方便的功能性插件
- akinsho/bufferline.nvim 类似 VSCode 的标签页(不过是 buffer)

#### 终端

- akinsho/toggleterm.nvim 内嵌终端

#### Git

- lewis6991/gitsigns.nvim Git 信息提示高亮
- sindrets/diffview.nvim Git 文件比较

#### 主题

- ellisonleao/gruvbox.nvim
- folke/tokyonight.nvim

#### 语法高亮

- nvim-treesitter/nvim-treesitter

#### 注释/文档

- numToStr/Comment.nvim 一键注释
- crusj/bookmarks.nvim
- folke/todo-comments.nvim

#### Smart/Happy Coding

- nvim-lua/plenary.nvim 封装了一些工具函数，很多插件用到
- simrat39/symbols-outline.nvim 大纲
- windwp/nvim-autopairs 智能补全(括号引号等)
- ahmedkhalf/project.nvim
- Pocco81/auto-save.nvim
- sslime336/hop.nvim

    Nvim 版 Easymotion 原仓库为 phaazon/hop.nvim，maintainer
    正在找维护者，空行报错 bug 还未修复所以先用 fork

#### rust-analyzer

- simrat39/rust-tools.nvim
