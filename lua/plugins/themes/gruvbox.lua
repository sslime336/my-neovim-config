-- Gruvbox 主题

local M = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
}

M.config = function()
    require('gruvbox').setup({
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            strings = false,
            comments = false,
            operators = false,
            folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,    -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
    })
end

-- return M
return {}
