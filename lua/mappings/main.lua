local map = require('mappings.alias')

require('plugins.nvim-tree.mapping')
require('plugins.bufferline.mapping')


map.im('<C-k>', '<Escape>')
map.nm('<S-s>', ':Lazy reload<CR>')
