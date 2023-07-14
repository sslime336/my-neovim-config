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
