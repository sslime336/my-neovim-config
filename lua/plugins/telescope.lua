local builtin = require('telescope.builtin')

-- 查找文件，进去是 INSERT，退出要敲两遍 `Ctrl-[`
vim.keymap.set('n', '<space>f', builtin.find_files, {})
-- 查找从根目录开始的文件中与要求匹配具体的内容
vim.keymap.set('n', '<space>g', builtin.live_grep, {})
-- 查找缓冲区? "A buffer is the in-memory text of a file."
vim.keymap.set('n', '<space>b', builtin.buffers, {})
-- 打开插件帮助
vim.keymap.set('n', '<space>h', builtin.help_tags, {})

-- telescope 拓展
-- require('telescope').load_extension('projects')

-- projects
-- require 'plugins/project'
-- vim.keymap.set('n', '<space>p', recent_projects)

