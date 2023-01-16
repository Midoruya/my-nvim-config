local setup, lspconfig = pcall(require, 'lspconfig')

if not setup then
	print('Plugin lspconfig not loadded')
	return
end

function on_attach(client, bufnr)
	-- format on save
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("Format", { clear = true }),
			buffer = bufnr,
			callback = function() vim.lsp.buf.formatting_seq_sync() end
		})
	end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

lspconfig.sumneko_lua.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.volar.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
