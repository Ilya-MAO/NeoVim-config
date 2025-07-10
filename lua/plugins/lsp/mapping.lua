local map = require('mappings.alias')

local buf = vim.lsp.buf
local on_attach = function(_, bufnr)
	map.nm('fp', buf.references, bufnr)
	map.nm('<leader>e', ":lua vim.diagnostic.open_float()<CR>", bufnr)
end

return { on_attach = on_attach }
