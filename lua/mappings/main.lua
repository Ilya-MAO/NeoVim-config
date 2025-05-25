local map = require('mappings.alias')

require('plugins.nvim-tree.mapping')
require('plugins.bufferline.mapping')


map.im('<C-k>', '<Escape>')
map.vm('<C-y>', '"+y')
map.nm('<leader>c', ':!cmpl %<CR>')
map.nm('<leader>f', ':!ffst -f %<CR>')
map.nm('<leader>p', ':!ffst -p %<CR>')
