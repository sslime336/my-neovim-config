--[[
    Outline
]]

require("symbols-outline").setup {
}

local opt = {
    noremap = true,
    silent = true,
}

vim.keymap.set('n', '<space>o', ':SymbolsOutline<CR>', opt)
