# my-neovim-config

## 使用环境

OS: Windows10/Ubuntu20.04(WSL2)

字体: FiraCode Nerd Font Mono

终端: Git Bash on Windows terminal (终端主题: **One Half Dark** theme), Bash

## TODO

- debug support
- ssh
- todo-comments 是否支持类似 TODO(sslime336): xxx 这样的？需要看看文档 :h todo-comments.txt?
- **my-nvim-manual**

## Features

- lazy 插件管理
- Tabnine AI 辅助代码补全
- hop(NvimのEasymotion)精确跳转
- Auto session save, bufflines saving
- Git 详情支持(inline blame等)，冲突处理支持
- 跨平台配置
- Lsp 支持/美化
- TODO/FIXME 等高亮
- 书签 bookmarks
- 自动补全/Snippets/智能括号补全
- 状态栏
- 文件自动保存
- 终端集成
- Outline 代码大纲
- 主题(gruvbox/tokynight等)
- VSCode 类似标签页/VSCode icon
- 代码快速注释

## 已知问题 (可能已修复但未验证)

- bookmarks 有时啥都找不到，还不清楚具体怎么用
- 有时新窗口行号全消失

## 食用手册

### 键位映射

- Leader: ','

#### 查找

- Hop(EasyMotion): `,F`(向前查找) or `,f`(向后查找)
- `<space>g`: 使用 rg(ripgrep) 在当前路径查找匹配的文件及其内容
- `<space>f`: 在当前路径查找匹配的文件
- `<space>p`: 查找历史 projects
- `<space>b`: 在当前 buffer 中查找
- `<space>m`: 查找书签

#### 跳转

- `<leader>b` 开启标签页跳转选择
- `<leader>B` 关闭标签页跳转选择

#### Lsp

- `gr`: 查找引用
- `gp`: 跳转到上一个报错/警告的地方
- `gn`: 跳转到下一个报错/警告的地方
- `gd`: 弹出窗口查看定义
- `gD`: 跳转到定义
- `<C-k>`: 显示变量/函数等的信息
- `<space>dw`: 显示当前 workspace 中的诊断信息
- `<space>dl`: 显示当前行的诊断信息
- `<space>j`: Quick Fix，Code Action

#### Git

- `<leader>ga`: git add
- `<leader>gd`: undo git add
- `<leader>gi`: 在原文本中查看变化
- `<leader>gv`: 在弹出的小窗口中查看变话(ps:
  感觉不如上一个快捷键展示效果好)

#### 内嵌终端

- `<C-\>`: 打开关闭
- `2<C-\>`: 打开关闭第二个，其他以此类推 `x<C-\>`，可以在已经打开第一个后使用
  `<C-[>` 在终端进入普通模式，然后再敲 `2<C-\>`
  打开第二个终端(一般会在第一个的右边打开)

#### 窗口大小

- `<C-Up>`
- `<C-Left>`
- `<C-Right>`
- `<C-Down>`
