return {
	'ellisonleao/gruvbox.nvim',

	config = function()
		local opts = require('plugins.gruvbox.style')
		require('gruvbox').setup(opts)

		vim.cmd("colorscheme gruvbox")
	end
}
