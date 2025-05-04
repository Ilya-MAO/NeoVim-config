return {
	mode = 'buffer',
	diagnostics = 'nvim_lsp',

	numbers = 'none', -- нумерація вікон. (можливо задати свою функцію)
	separator_style = 'slant', -- стиль вкладок
	enforce_regular_tabs = false, -- всі таби з днаковою шириною
	sort_by = 'directory', -- за чим сортувати
	offsets = { -- робить різне оформлення для вкладок певного типу
		{
			filetype = 'NvimTree',
			text = 'File System',
			text_align = 'center'
		}
	},

	always_show_bufferline = true, -- чи показувати буферлінію для однієї вкладки
	show_buffer_icons = true, -- іконки біля вкладок
	show_buffer_close_icons = false, -- хрестик біля вкладок
	show_close_icon = false -- хрестик для виходу з NeoVim справа на панелі
}
