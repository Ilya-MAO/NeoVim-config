local map = vim.keymap.set


vim.g.mapleader = ' ' -- налаштування <leader> клавіши

local function nm(key, command)
	map('n', key, command, { noremap = true, silent = true }) -- шаблон для нормального мода
end

local function im(key, command)
	map('i', key, command, { noremap = true, silent = true }) -- шаблон для режиму вставки
end

local function vm(key, command)
	map('v', key, command, { noremap = true, silent = true }) -- шаблон для режиму виділення
end

local function tm(key, command)
	map('t', key, command, { noremap = true, silent = true }) -- шаблон для режиму термінала
end


return {
	nm = nm,
	im = im,
	vm = vm,
	tm = tm
}
