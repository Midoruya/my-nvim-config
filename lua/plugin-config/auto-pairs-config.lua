local setup, auto_pairs = pcall(require, 'nvim-autopairs')

if not setup then
	print('Plugin auto pairs not loadded')
	return
end

-- NOTE: may be need to configuration this plugin

auto_pairs.setup {

}
