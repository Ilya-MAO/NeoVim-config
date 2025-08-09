local layouts = {
	{
		elements = {
			{ id = "scopes", size = 0.64 },
			{ id = "stacks", size = 0.18 },
			{ id = "breakpoints", size = 0.18 }
		},
		size = 50,
		position = "right"
	},
	{
		elements = { "console", "repl", "watches" },
		size = 10,
		position = "bottom"
	}
}

local controls = { enabled = false }

return {
	layouts = layouts,
	controls = controls
}
