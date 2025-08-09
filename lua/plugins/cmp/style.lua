local format = require('lspkind').cmp_format({
	mode = 'symbol_text',
	maxwidth = 50,
	elispsis_char = '...',
	menu = {
		buffer = '[BUF]'
	}
})

local window = {
	completion = {
		border = 'rounded',
		winhighlight = 'Normal:Pmenu,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None',
	},
	documentation = {
		border = 'rounded',
		winhighlight = 'Normal:Pmenu,FloatBorder:CmpDocBorder',
	},
}

local performance = {
	max_view_entries = 12 -- максимальна кількість варіантів
}

local experimental = {
	ghost_text = true -- відображати привидну підсказку першого варіанту
}

return {
	format = format,
	window = window,
	performance = performance,
	experimental = experimental
}
