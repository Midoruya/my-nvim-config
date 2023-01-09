local status_cmp, cmp = pcall(require, "cmp")
local status_luasnip, luasnip = pcall(require, 'luasnip')
local status_lspkind, lspkind = pcall(require, 'lspkind')

if not status_cmp then return end
if not status_luasnip then return end
if not status_lspkind then return end

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
				-- elseif has_words_before() then TODO: doesn't have function
				--	cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true
		}),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
	}),
	formatting = {
		format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
	}
})
