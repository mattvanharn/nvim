-- lua/plugins/copilot.lua

return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	dependencies = {
		"AndreM222/copilot-lualine",
	},
	config = function()
		require("copilot").setup({
			panel = {
				enabled = false,
				auto_refresh = false,
				keymap = {
					jump_prev = "[[",
					jump_next = "]]",
					accept = "<Tab>",
					refresh = "gr",
					open = "<M-CR>",
				},
				layout = {
					position = "right", -- | top | left | right
					ratio = 0.4,
				},
			},
			suggestion = {
				enabled = true,
				auto_trigger = true,
				debounce = 75,
				keymap = {
					accept = "<Tab>",
					accept_word = false,
					accept_line = false,
					next = "<C-n>",
					prev = "<C-p>",
					dismiss = "<C-j>",
				},
			},
			filetypes = {
				yaml = false,
				markdown = false,
				help = false,
				gitcommit = false,
				gitrebase = false,
				hgcommit = false,
				svn = false,
				cvs = false,
				["."] = false,
			},
			copilot_node_command = "node", -- Node.js version must be > 18.x
			server_opts_overrides = {},
		})
	end,
}
