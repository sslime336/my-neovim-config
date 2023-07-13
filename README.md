# my-neovim-config

## 使用环境

OS: Windows10
字体: JetBrains Mono NF
字号: 10
终端: Git Bash on Windows terminal (终端主题: **One Half Dark** theme)

## Features

- 插件包管理(Packer)，常用命令: `:PackerSync`
- 内嵌终端，打开关闭快捷键 `<C-\>`
- 文件查找，`<space>f`
- Git 信息，更改、新增、删除, blame 信息
- hop(Neovim 版 EasyMotion)，<leader> = ',':

    向前查找 `<leader>f`
    向后查找 `<leader>F`
    向前查找 `<leader>T`
    向后查找 `<leader>t`

- 注释代码，在 NORMAL 下 `gcc`，或在 VISUAL 下 `gc`
- 代码补全(lsp, snippet): 

    - `<C-j>` 下一个选项
    - `<C-k>` 上一个选项
    - `<Tab>`/<CR> 确定
- 还有的懒得写了...

## 已知问题

- Nerd Font 字体一部分 icon 缺失

