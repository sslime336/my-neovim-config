local M = {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim"
    }
}

M.config = function()
    require("neotest").setup({
        adapters = {
            require("neotest-rust")
        }
    })
end

-- return M
