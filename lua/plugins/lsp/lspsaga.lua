-- lua/plugins/lsp/lspsaga.lua

return {
	"glepnir/lspsaga.nvim",
	lazy = false,
	config = function()
		require("lspsaga").setup({
			-- keybinds for navigation in lspsaga window
			move_in_saga = { prev = "<C-k>", next = "<C-j>" },
			-- use enter to open file with finder
			finder_action_keys = {
				open = "<CR>",
			},
			-- use enter to open file with definition preview
			definition_action_keys = {
				edit = "<CR>",
			},
			ui = {
				kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
			},
		})
	end,
}