local view = {
	width = 30,
	side = 'left', -- сторона для розположення
	relativenumber = true,
	signcolumn = 'yes'
}

local renderer = {
	group_empty = true, -- поєднує порожні теми в одну
	highlight_git = false, -- підсвічує git-статус
	indent_markers = {
		enable = true -- відображення ліній-гілок
	},
	icons = {
		show = { -- які іконки показувати
			git = true,
			folder = true,
			file = true
		},
		glyphs = {
			git = {
				untracked = '󰫣',
				unstaged = '󰛓',
				staged = '',
				unmerged = '',
				ignored = '󰈉',
				renamed = '',
				deleted = '󱎘'
			}
		}
	}
}

local git = {
	enable = true, -- показ статусу git
	ignore = false, -- при true не показує .gitignore
	show_on_dirs = true, -- підсвітка git для каталогів
	timeout = 500 -- таймаут для git у мс
}

return {
	view = view,
	renderer = renderer,
	git = git
}
