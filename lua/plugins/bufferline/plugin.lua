return {
	'akinsho/bufferline.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},

	config = function()
		require('bufferline').setup({
			options = require('plugins.bufferline.style')
		})
	end
}
