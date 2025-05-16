local mappings = {
	basic = true, -- включає основні комбінації клавіш: gcc, gc - у visual mode
	extra = true -- додаткові комбінації: gco, gcO, gcA
}

local toggler = {
	line = 'gcc', -- рядковий коментар в normal mode
	block = 'gbc' -- блочний коментар в normal mode
}

local opleader = {
	line = 'gc', -- рядковий коментар в visual mode
	block = 'gb' -- блочний коментар в visual mode
}


return {
	mappings = mappings,
	toggler = toggler,
	opleader = opleader
}
