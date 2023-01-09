local setup, lspconfig = pcall(require, 'lspconfig')

if not setup then
	print('Plugin lspconfig not loadded')
	return
end

lspconfig['vimls'].setup {
	diagnostic = {
		enable = true
	},
	indexes = {
		count = 3,
		gap = 100,
		projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
		runtimepath = true
	},
	isNeovim = true,
	iskeyword = "@,48-57,_,192-255,-#",
	runtimepath = "",
	suggest = {
		fromRuntimepath = true,
		fromVimruntime = true
	},
	vimruntime = ""
}

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
