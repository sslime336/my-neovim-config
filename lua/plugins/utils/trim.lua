-- 删除行末空格/空行

local M = {
    "cappyzawa/trim.nvim",
    event = "BufReadPost",
}

M.config = function()
    local setting = {
        ft_blocklist = {
            "lua", "go", "rs"
        },
        patterns = {},
        trim_on_write = true,
        trim_trailing = true,
        trim_last_line = false,
        trim_first_line = false,
    }
    require("trim").setup(setting)
end

return M
