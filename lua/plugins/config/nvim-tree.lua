-- 官方强烈建议关闭 netrw，所以进行如下设置
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = {
    silent = true, noremap = true,
}

require('nvim-tree').setup {
    renderer = {
        group_empty = true,
    },
    filter = {
        dotfiles = true,
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = false,
        update_root = false
    },
    on_attach = function(bufnr)
        local api = require "nvim-tree.api"

        local function opts(desc)
            return {
                desc = "nvim-tree: " .. desc,
                buffer = bufnr,
                noremap = true,
                silent = true,
                nowait = true
            }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        -- 返回上级目录
        vim.keymap.set('n', '<C-[>', api.tree.change_root_to_parent, opts('Up'))
        vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    end
}

-- 从 VSCode 迁移过来的习惯，Ctrl-b 打开文件列表
vim.keymap.set('n', '<C-b>', ':NvimTreeFindFileToggle<CR>', opt)
