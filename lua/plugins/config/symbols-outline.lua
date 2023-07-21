--[[
    Outline
]]

local opt = {
    noremap = true,
    silent = true,
}

vim.keymap.set('n', '<space>o', ':SymbolsOutline<CR>', opt)

require("symbols-outline").setup {
}
