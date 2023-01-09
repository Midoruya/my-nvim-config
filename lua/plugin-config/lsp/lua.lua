local setup, lspconfig = pcall(require, 'lspconfig')

if not setup then
	print('Plugin lspconfig not loadded')
	return
end

require('plugin-config.lsp.utilities')

lspconfig['sumneko_lua'].setup {
	on_attach = on_attach,
	filetype = { "lua" },
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup your lua path
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		}
	}
}
