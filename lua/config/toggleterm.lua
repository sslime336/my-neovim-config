--[[
    好用的内部终端
]]

require 'toggleterm'.setup {
    -- 打开关闭终端的快捷键
    open_mapping = '<C-\\>',
    -- 进入终端自动进入 INSERT 模式
    start_in_insert = true,
    -- 在下方打开终端
    direction = 'float', -- 'vertical' | 'horizontal' | 'tab' | 'float'
}

-- 在弹出的终端中也能使用 vim 下的快捷键，但只能在 INSERT 模式下编辑，
-- NORMAL 模式只能复制移动，没有编辑权限
function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
