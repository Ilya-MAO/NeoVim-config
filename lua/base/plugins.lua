local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "plugins.autoclose" },
    { import = "plugins.cmp.plugin" },
	{ import = "plugins.lsp.plugin" },
	{ import = "plugins.nvim-tree.plugin" },
	{ import = "plugins.gruvbox.plugin" },
	{ import = "plugins.lualine.plugin" },
	{ import = "plugins.bufferline.plugin" },
    checker = {
        enabled = false -- відключає автооновлення плагінів
    }
})
