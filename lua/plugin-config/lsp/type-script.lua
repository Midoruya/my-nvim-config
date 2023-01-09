local setup, lspconfig = pcall(require, 'lspconfig')

if not setup then
	print('plugin lspconfig not loadded')
	return
end

require('plugin-config.lsp.utilities')

lspconfig['tsserver'].setup {
	on_attach = on_attach,
	filetype = { "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
}
