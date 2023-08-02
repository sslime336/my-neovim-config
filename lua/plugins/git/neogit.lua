-- Git view/stage/commit

local M = {
    "NeogitOrg/neogit",
    event = "VeryLazy",
    dependencies = "nvim-lua/plenary.nvim",
}

M.config = function()
    local ng = require('neogit')
    ng.setup {}
end

return M
