local setup, icon_picker = pcall(require, 'icon-picker')

if not setup then
	print('icon picker not installed')
	return
end

icon_picker.setup {
  disable_legacy_commands = false
}

