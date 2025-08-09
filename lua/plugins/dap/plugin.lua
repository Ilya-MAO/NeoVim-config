return {
	{
		'mfussenegger/nvim-dap',
		dependencies = {
			'rcarriga/nvim-dap-ui',
			'nvim-neotest/nvim-nio', -- потрібен для 'nvim-dap-ui'
			'mfussenegger/nvim-dap-python', -- обгортка над 'debugpy'
			'williamboman/mason.nvim',
			'jay-babu/mason-nvim-dap.nvim'
		},

		config = function()
			local dap = require('dap')

			-- 'mason'
			require('mason').setup()

			-- Встановлення адаптерів через 'mason'
			require('mason-nvim-dap').setup({
				ensure_installed = {
					'codelldb'
				},

				automatic_installation = true,
			})

			-- Графічний інтерфейс
			require('dapui').setup({
				layouts = require('plugins.dap.style').layouts,
				controls = require('plugins.dap.style').controls
			})

			-- Загальні команди керуванням 'dap' та 'dapui'
			-- require('plugins.dap.utils') -- покищо в розробці

			-- `dap` для `python`
			require('dap-python').setup(os.getenv('HOME') .. '/.local/share/pipx/venvs/debugpy/bin/python')

			-- Налаштування `dap` для 'python'
			dap.configurations.python = {
				{
					type = 'python', -- назва конфігурації (має збігатись)
					request = 'launch', -- 'launch' це запуск свого сервера
					name = "This file", -- назва режиму
					program = "${file}", -- '${file}' це поточний файл
					console = "integratedTerminal"
				},
				{
					type = 'python',
					request = 'attach', -- 'attach' це підключення до вже створеного сервера
					connect = { -- пікдлючення
						host = '127.0.0.1',
						port = 5690
					},
					mode = 'remote', -- вказання що це підключення
					name = 'Django'
				}
			}

			-- Налаштування адаптера `codelldb`
			dap.adapters.codelldb = {
				type = 'server', -- 'server' це TCP-сервер
				port = '${port}', -- '${port}' порт випадковий
				executable = {
					command = vim.fn.stdpath('data') .. '/mason/packages/codelldb/extension/adapter/codelldb',
					args = { '--port', '${port}' }
				}
			}

			-- Налаштування `dap` для 'cpp'
			dap.configurations.cpp = {
				{
					name = 'Out file',
					type = 'codelldb',
					request = 'launch',
					program = function()
						-- return '${fileBasenameNoExtension}.out'
						-- return './build/Syncuris'
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/build/Syncuris', 'file')
						-- return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = '${workspaceFolder}',
					stopOnEntry = false,
					console = "integratedTerminal",
					args = {},
					runInTerminal = true,
				}
			}

			-- Копіювання налаштувань 'cpp' для 'c'
			dap.configurations.c = dap.configurations.cpp
		end
	}
}
