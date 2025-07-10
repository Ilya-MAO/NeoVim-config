local path = os.getenv("HOME") .. "/.config/nvim/lua/scripts/dump_neovim_buffer/dump.txt"

vim.cmd([[
	redir => g:ls_out
	silent ls
	redir END
]])
local content = vim.api.nvim_get_var("ls_out")

local file = io.open(path, "w")

for line in string.gmatch(content, "[^\n]+") do
	local relative_path = line:match('"(.-)"')
	if relative_path then
		local abs_path = vim.fn.fnamemodify(relative_path, ":p")
		file:write(abs_path .. "\n")
	end
end

file:close()

print("Шляхи буферів збережено в: " .. path)
