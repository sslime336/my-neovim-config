-- 右侧滚动条

local M = {
    'petertriho/nvim-scrollbar',
}

M.config = function()
    require("scrollbar").setup()
end

return M
