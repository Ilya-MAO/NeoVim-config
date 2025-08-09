return {
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim'
		},

		config = function()
			require('mason').setup() -- менеджер встановлення LSP-серверів
			require('mason-lspconfig').setup({
				ensure_installed = {
					'lua_ls',
					'pyright',
					'html',
					'cssls',
					'jsonls',
					'ts_ls',
					'cmake'
				},
				automatic_installation = true,
			})

			local lspconfig = require('lspconfig') -- підключає LSP-сервера до NeoVim
			local on_attach = require('plugins.lsp.mapping').on_attach

			lspconfig.clangd.setup({ on_attach = on_attach })
			lspconfig.lua_ls.setup({ on_attach = on_attach })
			lspconfig.pyright.setup({ on_attach = on_attach })
			lspconfig.html.setup({ on_attach = on_attach })
			lspconfig.cssls.setup({ on_attach = on_attach })
			lspconfig.jsonls.setup({ on_attach = on_attach })
			lspconfig.ts_ls.setup({ on_attach = on_attach })
			lspconfig.cmake.setup({ on_attach = on_attach })
		end
	}
}
