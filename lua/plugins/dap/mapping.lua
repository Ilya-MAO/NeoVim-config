local map = require('mappings.alias')

map.nm('<F7>', ':lua require("dap").toggle_breakpoint()<CR>') -- брекпоінт
map.nm('c<F7>', ':lua require("dap").clear_breakpoints()<CR>') -- прибрати всі брекпоінти

map.nm('<F8>', ':lua require("dap").continue()<CR>') -- налаштування запуску дубагера
map.nm('r<F8>', ':lua require("dap")<CR>') -- налаштування запуску дубагера
map.nm('<F9>', ':lua require("dap").step_into()<CR>') -- маленький крок (входить у кожну конструкцію)
map.nm('<F10>', ':lua require("dap").step_over()<CR>') -- великий крок (пропускає вхід у конструкції)
map.nm('<F11>', ':lua require("dap").step_out()<CR>') -- крок на вихід (виходить із конструкції)

map.nm('<F12>', ':lua require("dapui").toggle(); vim.cmd("ForceEqualize")<CR>') -- відкрити чи закрити UI та адаптація вікон
