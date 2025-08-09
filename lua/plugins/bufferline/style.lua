return {
	mode = 'buffer',
	diagnostics = 'nvim_lsp',

	numbers = 'none', -- нумерація вікон. (можливо задати свою функцію)
	tab_size = 10,
	enforce_regular_tabs = true, -- всі таби з днаковою шириною
	sort_by = 'id', -- за чим сортувати
	separator_style = 'thick', -- стиль вкладок
	offsets = { -- робить різне оформлення для вкладок певного типу
		{
			filetype = 'NvimTree',
			text = 'File System',
			text_align = 'center'
		}
	},

	left_trunc_marker = '',
	right_trunc_marker = '',

	always_show_bufferline = true, -- чи показувати буферлінію для однієї вкладки
	show_buffer_icons = true, -- іконки біля вкладок
	show_buffer_close_icons = false, -- хрестик біля вкладок
	show_close_icon = false -- хрестик для виходу з NeoVim справа на панелі
}
