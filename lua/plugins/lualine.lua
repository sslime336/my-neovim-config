require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'lake',
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}