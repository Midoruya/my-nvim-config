require 'plugins'
require 'keybind'
require 'plugin-config'

vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.mouse = 'a'
vim.opt.encoding = 'UTF-8'
vim.opt.cursorline = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wildmenu = true
vim.opt.smarttab = true
vim.wo.wrap = false
vim.opt.sidescroll = 1
vim.opt.number = true
vim.opt.syntax = 'on'

--vim.api.nvim_create_autocmd('VimEnter',
--	{
--		pattern = '*',
--		command = 'NERDTree'
--	})
--vim.api.nvim_create_autocmd('VimEnter',
--	{
--		pattern = '*',
--		command = 'PlugUpdate'
--	})

--vim.api.nvim_create_autocmd('BufEnter',
--	{
--		command = "if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif"
--	})
