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
	{ import = "plugins.markdown-prev.plugin" }, -- автоматичні конструкції для швидкого писання кода
    { import = "plugins.cmp.plugin" }, -- підсказки
	{ import = "plugins.lsp.plugin" }, -- LSP-сервера для розуміння певних мов програмування
	{ import = "plugins.nvim-tree.plugin" }, -- дерево файлової структури
	{ import = "plugins.lualine.plugin" }, -- нижня полоска із інформацією
	{ import = "plugins.bufferline.plugin" }, -- верхня полоска із вкладками
	{ import = "plugins.comment.plugin" }, -- закоментовування коду через комбінації клавіш
	{ import = "plugins.colorizer.plugin" }, -- фарбує текст RGB, HEX, ... в їх колір
	{ import = "plugins.gruvbox.plugin" }, -- тема gruvbox
	{ import = "plugins.dap.plugin" }, -- дебагер коду
	{ import = "plugins.telescope.plugin" }, -- плагін для гнучкого пошуку
    { import = "plugins.autoclose" }, -- автозакривання дужок та лапок
	{ import = "plugins.luasnip" }, -- автоматичні конструкції для швидкого писання кода
    checker = {
        enabled = false -- відключає автооновлення плагінів
    }
})
