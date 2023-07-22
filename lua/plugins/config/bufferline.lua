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
                highlight = "Directory",
                text_align = "left"
            },
        },

    }
}

local opt = {
    silent = true,
    noremap = true,
}

vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭当前标签页，这里主要是为了让关闭后保持 NvimTree 在关闭标签页时的状态(是否显示出来)
local cmds =
    ':bdelete %<CR>' ..
    ':NvimTreeFindFileToggle<CR>' ..
    ':NvimTreeFindFileToggle<CR>' ..
    '<C-w><C-w>'
vim.keymap.set('n', '.', cmds, opt)
