local opt = vim.opt
local g = vim.g


-- Пошук

opt.ignorecase = true -- ігнор регістра при пошуку ("fell" = "FELL")
opt.smartcase = true -- не ігнорить регістр якщо є символи в верхньому регістрі ("Fell" = "Fell")
opt.showmatch = true -- підсвітка найдених команд

-- Редагування

opt.shiftwidth = 4 -- кількість пробілів у табуляціях
opt.tabstop = 4 -- кількість пробілів у табуляціях які вже були в файлі
opt.smartindent = true -- підстановка відступа відносно попереднього

opt.number = true -- нумерація рядків
opt.relativenumber = true -- відносна нумерація рядків
opt.cursorline = true -- підсвітка поточного номера

-- Спліти

opt.splitright = true -- вертикальні спліти створюються cправа
opt.splitbelow = true -- горизонтальні спліти створюються знизу
