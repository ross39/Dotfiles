require('lualine').setup{
	options = {
		icons_enabled = true,
		theme = 'gruvbox',
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch'},
		lualine_c = {'filename', require('pomodoro').statusline},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	}
}

