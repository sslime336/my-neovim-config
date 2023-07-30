-- Git 比较文件不同

return {
    'sindrets/diffview.nvim',
    config = function()
        vim.opt.fillchars:append { diff = " " }
    end
}
