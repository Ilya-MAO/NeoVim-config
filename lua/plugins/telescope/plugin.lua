return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*", -- або tag = '0.1.4' для фіксованої версії
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", enabled = vim.fn.executable("make") == 1 },
		},

		config = function()
			require("telescope").setup()
			pcall(require("telescope").load_extension, "fzf") -- завантажує fzf-розширення
		end,
	}
}
