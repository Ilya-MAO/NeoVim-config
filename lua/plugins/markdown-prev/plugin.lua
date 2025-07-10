return {
  "iamcco/markdown-preview.nvim",

  build = "cd app && npm install",
  ft = "markdown",

  config = function()
    vim.g.mkdp_auto_start = 1
    vim.g.mkdp_auto_close = 1
    vim.g.mkdp_refresh_slow = 0
	vim.g.mkdp_port = 3000
    vim.g.mkdp_browser = "firefox"
    vim.g.mkdp_theme = "dark"
  end
}
