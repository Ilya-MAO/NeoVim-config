local map = require('mappings.alias')

require('plugins.nvim-tree.mapping')
require('plugins.bufferline.mapping')

map.im('<C-k>', '<Escape>')
map.vm('<C-y>', '"+y')

-- Компілятор C/C++
map.nm('<leader>c', ':terminal cmpl %<CR>')

-- Зберігання та завантаження буферних вкладок (tabs)
map.nm('<leader>bb', ':luafile ~/.config/nvim/lua/scripts/dump_neovim_buffer/save.lua<CR>')
map.nm('<leader>bl', ':luafile ~/.config/nvim/lua/scripts/dump_neovim_buffer/load.lua<CR>')
