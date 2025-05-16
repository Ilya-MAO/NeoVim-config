local map = require('mappings.alias')

require('plugins.nvim-tree.mapping')
require('plugins.bufferline.mapping')


map.im('<C-k>', '<Escape>')
map.nm('<leader>c', ':!cmpl %<CR>')
map.nm('<leader>f', ':!ffst %<CR>')
map.vm('<C-y>', '"+y')
