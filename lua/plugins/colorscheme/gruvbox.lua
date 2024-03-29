-- lua/plugins/colorscheme/gruvbox.lua

-- Ensure the gruvbox plugin is installed
return {
	"ellisonleao/gruvbox.nvim",
	name = "gruvbox",
	priority = 1000,
	lazy = false,
	config = function()
		-- Setup Gruvbox with default options
		require("gruvbox").setup({
			terminal_colors = true, -- add neovim terminal colors
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = true,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true, -- invert background for search, diffs, statuslines and errors
			contrast = "", -- can be "hard", "soft" or empty string
			palette_overrides = {},
			overrides = {},
			dim_inactive = false,
			transparent_mode = true,
		})

		-- Apply the Gruvbox color scheme
		vim.cmd("colorscheme gruvbox")
	end,
}
