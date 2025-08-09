local map = require('mappings.alias')

map.nm('<leader>ff', ':lua require("telescope.builtin").find_files()<CR>') -- пошук по файлах
map.nm('<leader>ft', ':lua require("telescope.builtin").live_grep()<CR>') -- пошук тукста по файлах
map.nm('<leader>fw', ':lua require("telescope.builtin").grep_string()<CR>') -- пошук слова під курсором по файлах

map.nm('<leader>cm', ':lua require("telescope.builtin").commands()<CR>') -- вивести список команд із ':'
map.nm('<leader>km', ':lua require("telescope.builtin").keymaps()<CR>') -- вивести список комбінацій клавіш в NeoVim

map.nm('<leader>ld', ':lua require("telescope.builtin").diagnostics()<CR>') -- вивести діагностику lsp-сервера
map.nm('<leader>fn', ':lua require("telescope.builtin").lsp_definitions()<CR>') -- пошук функції під курсором та переносить до неї
-- map.nm('<leader>hh', ':lua require("telescope.builtin").lsp_references()<CR>') -- пошук слова під курсором у проекті
