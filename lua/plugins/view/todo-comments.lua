-- todo/fixme/issue 等高亮和跳转
return {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    config = function()
        require("todo-comments").setup({})
        vim.keymap.set("n", "]t", function()
            require("todo-comments").jump_next()
        end, { desc = "Next todo comment" })

        vim.keymap.set("n", "[t", function()
            require("todo-comments").jump_prev()
        end, { desc = "Previous todo comment" })
    end
}
