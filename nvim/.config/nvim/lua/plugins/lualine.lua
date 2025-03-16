return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = require('utils').is_nvim_editor()
		and {
			sections = {
				lualine_b = { 'filetype' },
				lualine_x = { 'searchcount', 'encoding', 'fileformat', },
				lualine_z = { 'location', '%b', },
			},
		}
		or nil,
}
