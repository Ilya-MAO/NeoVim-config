local options = {
	theme = 'gruvbox',
	icon_enabled = true,
	globalstatus = false, -- глобальний статус-бар який для кожного вікна окремий

	component_separators = '|',
	section_separators = '',
	
	disabled_filetypes = {}
}

local inactive_sections = {} -- для неактивних вікон
local tabline = {} -- додатковий статус-бар зверху
local extensions = { 'nvim-tree', 'fugitive' }

local sections = {
	lualine_a = { 'mode' }, -- поточний режим NeoVim
	lualine_b = { 'diff', 'branch' }, -- гілка Git, зміни, LSD-діагностика
	lualine_c = {},
	lualine_x = { 'encoding' },
	lualine_y = { 'diagnostics' },
	lualine_z = { 'os.date("%H:%M:%S")' }
}


return {
	options = options,
	sections = sections,
	inactive_sections = inactive_sections,
	tabline = tabline,
	extensions = extensions
}
