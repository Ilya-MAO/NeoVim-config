return {
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp', -- LSP підсказки
			'hrsh7th/cmp-buffer', -- підсказки в буферах
			'hrsh7th/cmp-path', -- підсказки до шляхів
			'hrsh7th/cmp-cmdline', -- підсказки для командного рядка
			'onsails/lspkind-nvim' -- іконки для пісказок
		},

		config = function()
			local cmp = require('cmp')
			local lspkind = require('lspkind')
			local format = require('plugins.cmp.style')

			cmp.setup({
				mapping = require('plugins.cmp.mapping').mapping,

				format = lspkind.cmp_format(format),

				sources = cmp.config.sources({
					{ name = 'nvim_lsp', max_item_count = 10 },
					{ name = 'luasnip' },
					{ name = 'buffer' },
					{ name = 'path' }
				})
			})
		end
	}
}
