local venv = require('plugins.lualine.utils').venv

local options = {
	theme = 'gruvbox',
	icon_enabled = true,
	globalstatus = false, -- глобальний статус-бар який для кожного вікна окремий

	component_separators = '|',
	section_separators = '',

	disabled_filetypes = {
		'dap-repl',
		'dapui_scopes',
		'dapui_breakpoints',
		'dapui_stacks',
		'dapui_watches',
		'dapui_console'
	}
}

local inactive_sections = {} -- для неактивних вікон
local tabline = {} -- додатковий статус-бар зверху
local extensions = { 'nvim-tree', 'fugitive' }

local sections = {
	lualine_a = { 'mode' }, -- поточний режим NeoVim
	lualine_b = { 'diff', { 'branch', color = { fg = '#F2ACD3' } } }, -- гілка Git, зміни, LSD-діагностика
	lualine_c = { { venv, color = { fg = '#EFF323' } } }, -- віртуальне оточення venv
	lualine_x = { { 'encoding', color = { fg = '#E4EAF2' } } }, -- кодування
	lualine_y = { 'diagnostics' }, -- діагностика синтаксису
	lualine_z = { 'os.date("%H:%M:%S")' } -- час
}

return {
	options = options,
	sections = sections,
	inactive_sections = inactive_sections,
	tabline = tabline,
	extensions = extensions
}
