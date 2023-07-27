-- bufferline 把 buffer 显示成类似 VSCode 中 Tab 页的形式

return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true

        require("bufferline").setup {
            options = {
                -- 使用 nvim 内置lsp
                diagnostics = "nvim_lsp",
                -- 左侧让出 nvim-tree 的位置
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "Directory",
                        text_align = "left",
                        separator = false,
                    },
                },
                separator_style = "slant", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = { 'close' }
                }
            },
        }

        local opt = {
            silent = true,
            noremap = true,
        }

        vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
        vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
        vim.keymap.set("n", "<leader>b", ":BufferLinePick<CR>", opt)      -- 选择标签页
        vim.keymap.set("n", "<leader>B", ":BufferLinePickClose<CR>", opt) -- 关闭标签页选择，或者直接 <C-[>/<Esc>

        -- 关闭当前标签页，这里主要是为了让关闭后保持 NvimTree 在关闭标签页时的状态(是否显示出来)
        local cmds =
            '<C-w>l<Esc>' ..
            ':bdelete %<CR>' ..
            ':NvimTreeFindFileToggle<CR>' ..
            ':NvimTreeFindFileToggle<CR>' ..
            '<C-w><C-w>'
        vim.keymap.set('n', '.', cmds, opt)
    end
}
