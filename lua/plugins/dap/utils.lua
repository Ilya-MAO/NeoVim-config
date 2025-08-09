local dap, dapui = require('dap'), require('dapui')

dap.listeners.after.event_initialized['dapui_config'] = function()
	dapui.open() -- відкривати UI після ініціалізації dap
	vim.cmd('ForceEqualize')
end
dap.listeners.before.event_terminated['dapui_config'] = function()
	dapui.close() -- закривати UI перед завершенням
end
dap.listeners.before.event_exited['dapui_config'] = function()
	dapui.close() -- закривати UI перед завершенням сесії чи помилці
end

-- Прибирає баг із плагіном 'nvim-tree'
vim.api.nvim_create_user_command('ForceEqualize', function()
	for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
		vim.api.nvim_win_set_option(win, 'winfixwidth', false)
	end
end, {})

-- Завершення дебагу в 'cpp' при завершенні функції 'main'
vim.api.nvim_create_autocmd("CursorMoved", {
	callback = function()
		local params = vim.lsp.util.make_position_params()
		local curr_line = vim.api.nvim_win_get_cursor(0)[1] -- за потреби можно дописати ' - 1'
		print()

		vim.lsp.buf_request(0, 'textDocument/documentSymbol', params, function(err, result, ctx, config)
			if err or not result or vim.tbl_isempty(result) then return end

			for _, symbol in ipairs(result) do
				local end_fn = symbol.range['end'].line
				-- print(end_fn, curr_line) -- для перевірки

				if end_fn == curr_line then
					dap.terminate()
				end
			end
		end)
	end
})
