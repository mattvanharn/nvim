-- lua/plugins/init.lua

return {
	{
		"folke/neoconf.nvim",
		cmd = "Neoconf",
		lazy = false,
	},
	{
		"folke/neodev.nvim",
		lazy = false,
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving
		opts = {
			-- options
		},
	},
}
