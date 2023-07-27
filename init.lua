require('core')
require('keymaps')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
local opts = {}
require('lazy').setup({
    spec = {
        { import = 'plugins' },
        { import = 'plugins.git' },
        { import = 'plugins.languages' },
        { import = 'plugins.lsp' },
        { import = 'plugins.themes' },
        { import = 'plugins.ui' },
        { import = 'plugins.utils' },
        { import = 'plugins.view' },
    },
}, opts)
