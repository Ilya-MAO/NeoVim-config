local function venv()
	local active_venv = os.getenv("VIRTUAL_ENV")

	if active_venv then
		local path_and_venv = io.popen("dirname $VIRTUAL_ENV", "r")
		local name_venv = path_and_venv:read("a")
		path_and_venv:close()

		return "venv: " .. vim.fn.fnamemodify(name_venv, ":t"):gsub("\n", '')
	else
		return "No venv"
	end
end


return {
	venv = venv
}
