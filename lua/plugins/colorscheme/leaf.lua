-- lua/plugins/colorscheme/leaf.lua

-- Ensure the leaf plugin is installed
return {
	"daschw/leaf.nvim",
	name = "leaf",
	priority = 1000,
	lazy = false,
	config = function()
		-- Setup Leaf with default options
		require("leaf").setup({
			underlineStyle = "underline",
			commentStyle = "italic",
			functionStyle = "NONE",
			keywordStyle = "italic",
			statementStyle = "bold",
			typeStyle = "NONE",
			variablebuiltinStyle = "italic",
			transparent = true,
			colors = { bg3 = "#59795F" },
			overrides = {},
			theme = "auto", -- default, based on vim.o.background, alternatives: "light", "dark"
			contrast = "medium", -- default, alternatives: "medium", "high"
		})

		-- setup must be called before loading
		vim.cmd("colorscheme leaf")
	end,
}
