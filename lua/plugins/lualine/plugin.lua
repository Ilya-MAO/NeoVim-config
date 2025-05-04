return {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},

	config = function()
		require('lualine').setup({
			options = require('plugins.lualine.style').options,
			sections = require('plugins.lualine.style').sections,
			inactive_sections = require('plugins.lualine.style').inactive_sections,
			tabline = require('plugins.lualine.style').tabline,
			extensions = require('plugins.lualine.style').extensions
		})
	end
}
