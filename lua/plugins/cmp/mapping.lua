local cmp_map = require('cmp').mapping

local mapping = cmp_map.preset.insert({
	['<CR>'] = cmp_map.confirm({ select = true }),
	['<Tab>'] = cmp_map.select_next_item(),
	['<S-Tab>'] = cmp_map.select_prev_item()
})

return { mapping = mapping }
