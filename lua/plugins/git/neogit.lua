--

local M = {
    "NeogitOrg/neogit",
    dependencies = "nvim-lua/plenary.nvim",
}

M.config = function()
    local ng = require('neogit')
    ng.setup {}
end

return M
