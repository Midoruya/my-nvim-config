local setup, telescope = pcall(require, 'telescope')

if not setup then
	print('Telescope plugin not loadded')
	return
end

-- TODO: need to config this

telescope.setup {

}
