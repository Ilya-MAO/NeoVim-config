local map = require('mappings.alias')

map.nm('<Tab>', ':BufferLineCycleNext<CR>')
map.nm('<S-Tab>', ':BufferLineCyclePrev<CR>')
map.nm('<C-Tab>', ':BufferLineMoveNext<CR>')
map.nm('<C-S-Tab>', ':BufferLineMovePrev<CR>')
map.nm('<leader>bd', ':bdelete<CR>')
