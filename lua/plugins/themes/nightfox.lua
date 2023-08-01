-- Nordfox

local M = {
    "EdenEast/nightfox.nvim",
}

function M.config()
    vim.cmd [[colorscheme nordfox]]
    require('nightfox').setup({
        options = {
            styles = {
                comments = "none",
                keywords = "none",
                types = "none",
            }
        }
    })
end

return M
