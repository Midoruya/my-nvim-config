local status, bufferline = pcall(require, "bufferline")
if not status then
	print('plugin buffer line not loadded')
	return
end

local diagnostics_indicator = function(count, level, diagnostics_dict, context)
	local s = " "
	for e, n in pairs(diagnostics_dict) do
		local icon = (e == "error" and "") or
				(e == "warning" and "") or
				(e == "info" and "") or
				(e == "hint" and "") or "UN"
		if icon == "UN" then
			print(e)
		end
		s = s .. icon .. " " .. n .. " "
	end
	return s
end

bufferline.setup({
	options = {
		close_command = 'bdelete! %d',
		diagnostics_indicator = diagnostics_indicator,
		mode = "buffers",
		separator_style = 'slant',
		always_show_bufferline = true,
		show_close_icon = true,
		color_icons = true,
		diagnostics = "nvim_lsp",
		show_buffer_close_icons = true,
		indicato = {
			style = "icon",
		},
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "left",
				separator = false,
			},
		},
		numbers = 'ordinal',
		hover = {
			enabled = true,
			delay = 200,
			reveal = { 'close' }
		},
	},
})
