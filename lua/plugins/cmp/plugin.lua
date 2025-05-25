return {
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp', -- LSP підсказки
			'hrsh7th/cmp-buffer', -- підсказки в буферах
			'hrsh7th/cmp-path', -- підсказки до шляхів
			'hrsh7th/cmp-cmdline', -- підсказки для командного рядка
			'onsails/lspkind-nvim', -- іконки для пісказок
			'L3MON4D3/LuaSnip',
			'rafamadriz/friendly-snippets',
			'saadparwaiz1/cmp_luasnip',
		},

		config = function()
			local cmp = require('cmp')
			local lspkind = require('lspkind')
			local format = require('plugins.cmp.style')

			cmp.setup({
				mapping = require('plugins.cmp.mapping').mapping,

				format = lspkind.cmp_format(format),

				snippet = {
  					expand = function(args)
    					require("luasnip").lsp_expand(args.body)
  					end,
				},

				performance = {
					max_view_entries = 10
				},

				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
					{ name = 'buffer' },
					{ name = 'path' }
				})
			})
		end
	}
}
