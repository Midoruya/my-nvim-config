local status, packer = pcall(require, 'packer')

if not status then
	print('Nvim packeg manager [ Packer ] is not installed')
	return
end

-- require('icon-picker').setup { disable_legacy_commands = true }

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	----------------------------------------------------------------
	--                            LSP                             --
	----------------------------------------------------------------
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use 'neovim/nvim-lspconfig' -- INFO: Configurations for Nvim LSP
	use {
		"L3MON4D3/LuaSnip",
		tag = "v<CurrentMajor>.*"
	}
	use "windwp/nvim-autopairs" -- INFO: Plugin for auto complete pairs
	use "stevearc/dressing.nvim" -- TODO: need to config and learn that
	use "ziontee113/icon-picker.nvim"
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	} -- INFO: Plugin for displaying another notes
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	} -- TODO: need to learn about that plugin
	use 'hrsh7th/nvim-cmp' -- TODO: need to learn about that plugin
	use 'hrsh7th/cmp-buffer' -- TODO: need to learn about that plugin
	use 'hrsh7th/cmp-nvim-lsp' -- TODO: need to learn about that plugin
	use 'onsails/lspkind.nvim' -- TODO: need to learn about that plugin
	use 'andweeb/presence.nvim' -- INFO: plugin for Discord PRC
	use 'wbthomason/packer.nvim' -- INFO: packer as package manager
	use 'navarasu/onedark.nvim' -- INFO: color them pluging
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*",
		requires = 'nvim-tree/nvim-web-devicons'
	}
	use {
		'nvim-tree/nvim-tree.lua', -- INFO: plugin for displaying file manager tree
		requires = {
			'nvim-tree/nvim-web-devicons', -- INFO: optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use "Pocco81/auto-save.nvim" -- INFO: plugin for auto save edit file
	use {
		'nvim-lualine/lualine.nvim', -- plugin for dislay ide staty
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for icon
			opt = true
		}
	}
end)
