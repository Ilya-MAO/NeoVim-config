return {
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
		},

		config = function()
			require('mason').setup() -- менеджер встановлення LSP-серверів
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls' },
				automatic_installation = false,
			})

			local lspconfig = require('lspconfig') -- підключає LSP-сервера до NeoVim
			local on_attach = require('plugins.lsp.mapping').on_attach

			lspconfig.lua_ls.setup({ on_attach = on_attach })
			lspconfig.pyright.setup({ on_attach = on_attach })
			lspconfig.clangd.setup({ on_attach = on_attach })
		end
	}
}
