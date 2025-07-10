return {
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},

	config = function()
		require('nvim-tree').setup({
			view = require('plugins.nvim-tree.style').view,
			renderer = require('plugins.nvim-tree.style').renderer,
			git = require('plugins.nvim-tree.style').git,

			disable_netrw = true,
			hijack_netrw = true,
			auto_reload_on_write = true,
			sync_root_with_cwd = true, -- дерево автоматично змінить корінь при переході на інше місце

			actions = {
				open_file = {
					quit_on_open = false, -- закривати дерево при відкритті файлу
					resize_window = true -- зміна розміру після відкриття
				}
			},

			update_focused_file = {
				enable = true,
				update_cwd = true, -- синхронізує робочий каталог із активним файлом
				ignore_list = {}
			}
		})
	end
}
