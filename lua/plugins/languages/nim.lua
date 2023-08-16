-- Add nim syntax highlighting to nvim via tree sitter

local M = {
    'sigmaSd/nim-nvim-basic',
    ft = "nim",
}

M.config = function()
    require("nim-nvim").setup()
    vim.cmd [[autocmd FileType nim setlocal et sta sw=2 sts=2]]
end

return M
