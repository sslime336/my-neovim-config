--[[
    tokyonight 主题配置
]]

require("tokyonight").setup {
    style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day",    -- The theme is used when the background is set to light
    transparent = false,    -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
    styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark",   -- style for floating windows
    },
    -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    sidebars = { "qf", "help" },
    -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    day_brightness = 0.3,
    -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead.
    -- Should work with the standard **StatusLine** and **LuaLine**.
    hide_inactive_statusline = false,
    dim_inactive = false, -- dims inactive windows
    lualine_bold = true,  -- When `true`, section headers in the lualine theme will be bold

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table
    ---@param colors ColorScheme
    on_colors = function(colors) end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors) end,
}
-- 再次设置使能，因为 core.init 里面的命令会在这里的设置执行前先执行
-- 当然也可以调整 init.lua 中的 require 顺序来处理(不想调整就先这样了)
vim.cmd [[colorscheme tokyonight]]
