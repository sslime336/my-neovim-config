local builtin = require('telescope.builtin')
local t = require('telescope')

-- 查找文件，进去是 INSERT，退出要敲两遍 `Ctrl-[`
-- 以当前打开的文件所在目录为根目录
vim.keymap.set('n', '<space>f', builtin.find_files, {})
-- 查找从根目录开始的文件中与要求匹配具体的内容
vim.keymap.set('n', '<space>g', builtin.live_grep, {})
-- 查找缓冲区? "A buffer is the in-memory text of a file."
vim.keymap.set('n', '<space>b', builtin.buffers, {})
-- 打开插件帮助
vim.keymap.set('n', '<space>h', builtin.help_tags, {})

-- telescope 拓展
t.load_extension('projects')
t.load_extension("bookmarks")
t.load_extension("todo-comments")
t.load_extension('possession')

-- projects
local recent_projects = [[:lua require 'telescope'.extensions.projects.projects {}<CR>]]
vim.keymap.set('n', '<space>p', recent_projects)

-- possession
vim.keymap.set('n', '<space>s', ':Telescope possession list<CR>', {})
