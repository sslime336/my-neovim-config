-- 文件列表

return {
    'nvim-tree/nvim-tree.lua',
    event = "VeryLazy",
    keys = {
        { "<C-b>" },
    },
    config = function()
        require('nvim-tree').setup(
            {
                renderer = {
                    group_empty = true,
                },
                sync_root_with_cwd = false,
                respect_buf_cwd = false,
                update_focused_file = {
                    enable = true,
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
                    -- 默认映射
                    api.config.mappings.default_on_attach(bufnr)
                    -- 自定义映射
                    -- 返回上级目录
                    vim.keymap.set('n', '<C-[>', '<C-w>l', opts('Back to Editor'))
                    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
                end,
            }

        )
        -- 官方强烈建议关闭 netrw，所以进行如下设置
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        -- 从 VSCode 迁移过来的习惯，Ctrl-b 打开文件列表
        vim.keymap.set('n', '<C-b>', ':NvimTreeFindFileToggle<CR>', { silent = true, noremap = true })
    end
}
