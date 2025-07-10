return {
	'NvChad/nvim-colorizer.lua',

	config = function()
		require('colorizer').setup({
			filetypes = { '*' }, -- { 'css', 'html', 'javascript' }
			user_default_options = require('plugins.colorizer.style'),
		})
	end,
}
