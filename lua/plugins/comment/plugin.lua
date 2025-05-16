return {
	'numToStr/Comment.nvim',

	config = function()
		require('Comment').setup({
			require('plugins.comment.style'),
			require('plugins.comment.mapping')
		})
	end
}
