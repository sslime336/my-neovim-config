vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = { {
            filetype = "NvimTree",
            text = "Zako❤zako~",
            highlight = "Directory",
            text_align = "left"
        } },

    }
}

vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>")
-- 关闭当前标签页，这里主要是为了让关闭后保持 NvimTree 在关闭标签页时的状态(是否显示出来)
local cmds =
    ':bdelete %<CR>' ..
    ':NvimTreeFindFileToggle<CR>' ..
    ':NvimTreeFindFileToggle<CR>' ..
    '<C-w><C-w>'
vim.keymap.set('n', '.', cmds)
