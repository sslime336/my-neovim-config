--[[
    键盘映射
]]

local opt = {
    noremap = true,
    silent = true,
}

function format_code_lsp()
    vim.lsp.buf.format { async = true }
end

-- 格式化、保存并使能当前文件
vim.keymap.set('n', '<C-s>', ':lua format_code_lsp()<CR>:w<CR>', opt)

-- 插入模式下 Ctrl-v 能粘贴
vim.keymap.set('i', '<C-v>', '<Esc>pa', opt)
-- 命令模式下 Ctrl-v 能粘贴
vim.keymap.set('c', '<C-v>', '<C-r>"', opt)
