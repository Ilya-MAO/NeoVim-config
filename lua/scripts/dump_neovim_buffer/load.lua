local path = os.getenv("HOME") .. "/.config/nvim/lua/scripts/dump_neovim_buffer/dump.txt"

-- перетворює вивід ':ls' у шляхи вкладок буфера для команди 'edit'
local filter_content = io.popen("sed -e 's/\"[^\"]*$//' -e 's/^.*\"//' " .. path, "r")
local result = filter_content:read("a")
filter_content:close()

for tab in string.gmatch(result, "%S+") do
	vim.cmd("edit " .. tab)
	print(tab)
end
