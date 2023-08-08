-- Git view/stage/commit

local M = {
    "NeogitOrg/neogit",
    cmd = { "Neogit" },
    dependencies = "nvim-lua/plenary.nvim",
}

M.config = function()
    local ng = require('neogit')
    ng.setup {}
end

return M
