--[[
    代码补全
]]

local cmp = require('cmp')
-- 使用 VSCode 的标识符 ui
local lspkind = require('lspkind')

cmp.setup {
    formatting = {
        format = lspkind.cmp_format {
            -- show only symbol annotations
            -- mode = 'symbol',
            -- prevent the popup from showing more than provided characters
            -- (e.g 50 will not show more than 50 characters)
            maxwidth = 50,
            -- when popup menu exceed maxwidth, the truncated part would show
            -- ellipsis_char instead (must define maxwidth first)
            ellipsis_char = '...',

            -- The function below will be called before any actual modifications
            -- from lspkind so that you can provide more controls on popup
            -- customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            before = function(entry, vim_item)
                return vim_item
            end
        }
    },
    experimental = {
        -- 是否在当前光标后面虚化显示可补全的内容
        ghost_text = true,
    },
    snippet = {
        -- [必须] 指定一个 snippet 引擎
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    window = {
        -- 给可补全内容外面加上边框
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = {
        -- { 'i', 'c' } 表示可在 INSERT 和 COMMAND 模式使用
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        -- Accept currently selected item. Set `select` to `false` to only
        -- confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        { name = 'buffer' },
        { name = 'path' },
    }
}

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = {
        -- You can specify the `git` source if [you were installed
        -- it](https://github.com/petertriho/cmp-git).
        { name = 'git' },
        { name = 'buffer' },
    }
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
        { name = 'path' },
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'path' },
        { name = 'cmdline' },
    }
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['cmp_nvim_lsp'].setup {
--     capabilities = capabilities
-- }
