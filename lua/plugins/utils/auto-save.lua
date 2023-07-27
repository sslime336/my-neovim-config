-- 自动保存

return {
    "Pocco81/auto-save.nvim",
    config = function()
        require("auto-save").setup {
            -- 一次性保存所有 buffer
            write_all_buffers = true,
        }
    end,
}
