local status, lualine = pcall(require, "lualine")

if not status then 
	print('Plugin lualine not loadded')
	return
end

-- Lua Line block name position
-- +-------------------------------------------------+
-- | A | B | C                             X | Y | Z |
-- +-------------------------------------------------+

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
		lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'lsp_progress'},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
		} },
		lualine_x = {
      {
					'diagnostics',
					sources = {
						"nvim_diagnostic"
					},
					symbols = {
						error = '',
						warn = '⚠',
						info = '',
						hint = ' '
					}
			},
      'encoding', -- for example utf - 8
			--'fileformat',
      'filetype' -- with icon, for example [ icone lua ] 
    },
		-- lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress', 'tabs'},
    lualine_z = {'location'}
  },
  inactive_sections = {
		lualine_a = {},
    lualine_b = {},
	  lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

