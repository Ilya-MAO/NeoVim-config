return {
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp', -- LSP підсказки
			'hrsh7th/cmp-buffer', -- підсказки в буферах
			'hrsh7th/cmp-path', -- підсказки до шляхів
			'hrsh7th/cmp-cmdline', -- підсказки для командного рядка
			'onsails/lspkind-nvim', -- іконки для пісказок
			'L3MON4D3/LuaSnip', -- підключення сгіпив
			'rafamadriz/friendly-snippets',
			'saadparwaiz1/cmp_luasnip',
			'onsails/lspkind.nvim',
			'hrsh7th/cmp-nvim-lsp-signature-help',
		},

		config = function()
			local cmp = require('cmp')

			vim.cmd [[
				highlight! CmpBorder guifg=NONE guibg=#282828
				highlight! CmpDocBorder guifg=NONE guibg=#282828
				highlight! Pmenu guibg=#1e1e1e guifg=#c0c0c0
  				highlight! PmenuSel guibg=#3c3836 guifg=#ffffff
			]]

			cmp.setup({
				mapping = require('plugins.cmp.mapping').mapping,
				formatting = { format = require('plugins.cmp.style').format },
				window = require('plugins.cmp.style').window,
				performance = require('plugins.cmp.style').performance,
				experimental = require('plugins.cmp.style').experimental,

				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},

				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
					{ name = 'buffer' },
					{ name = 'path' },
					{ name = 'nvim_lsp_signature_help' }
				})
			})
		end
	}
}
