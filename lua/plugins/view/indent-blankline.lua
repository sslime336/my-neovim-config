-- 函数作用域竖线提示

return {
    'lukas-reineke/indent-blankline.nvim',
    event = "VeryLazy",
    config = function()
        require("indent_blankline").setup {
            space_char_blankline = " ",
            show_current_context = true,
            show_current_context_start = false,
            filetype_exclude = {
                "help",
                "packer",
                "dashboard",
                "nvim-tree",
                "lspinfo",
                "TelescopePrompt",
                "TelescopeResults",
                "mason",
                "",
            },
            show_trailing_blankline_indent = false,
            show_first_indent_level = false,
        }
    end
}
