-- Outline

return {
    'simrat39/symbols-outline.nvim',
    keys = {
        { "<space>o" },
    },
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
