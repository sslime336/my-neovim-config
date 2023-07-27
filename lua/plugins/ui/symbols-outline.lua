-- Outline

return {
    'simrat39/symbols-outline.nvim',
    config = function()
        local opt = {
            noremap = true,
            silent = true,
        }
        require("symbols-outline").setup({
        })
        vim.keymap.set('n', '<space>o', ':SymbolsOutline<CR>', opt)
    end
}
