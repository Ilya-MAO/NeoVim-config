local map = require('mappings.alias')

require('plugins.nvim-tree.mapping')
require('plugins.bufferline.mapping')
require('plugins.dap.mapping')
require('plugins.telescope.mapping')

-- Базові налаштування
map.im('<C-k>', '<Escape>')
map.vm('<C-y>', '"+y') -- копіювання в глобальний буфер
map.nm('f', '<C-w>')
map.tm('<Esc>', '<C-\\><C-n>') -- для виходу із режима terminal

-- Компілятор C/C++
map.nm('<leader>c', ':terminal cmpl -n %<CR>')
map.nm('<leader><S-c>', ':!cmpl -d %<CR>')

-- Зберігання та завантаження буферних вкладок (tabs)
map.nm('<leader>bb', ':luafile ~/.config/nvim/lua/scripts/dump_neovim_buffer/save.lua<CR>')
map.nm('<leader>bl', ':luafile ~/.config/nvim/lua/scripts/dump_neovim_buffer/load.lua<CR>')

-- Запуск Python
map.nm('<leader><C-p>', ':terminal python3 %<CR>')

-- Django (запуск в проекті)
map.nm('<leader>j', ':terminal python ./manage.py runserver<CR>')
map.nm('<leader><C-j>', ':terminal python -m debugpy --listen 5680 --wait-for-client manage.py runserver<CR>')
