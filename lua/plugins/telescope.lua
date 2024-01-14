-- lua/plugins/telescope.lua

local mapvimkey = require("util.keymapper").mapvimkey

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"debugloop/telescope-undo.nvim",
	},
	config = function()
		local telescope = require("telescope")

		local function flash(prompt_bufnr)
			require("flash").jump({
				pattern = "^",
				label = { after = { 0, 0 } },
				search = {
					mode = "search",
					exclude = {
						function(win)
							return vim.bo[vim.api.nvim_win_get_buf(win)].filetype ~= "TelescopeResults"
						end,
					},
				},
				action = function(match)
					local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
					picker:set_selection(match.pos[1] - 1)
				end,
			})
		end

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = "move_selection_next",
						["<C-k>"] = "move_selection_previous",
						["<C-s>"] = flash,
					},
					n = { s = flash },
				},
			},
			extensions = {
				undo = {
					-- telescope-undo.nvim config
				},
			},
			pickers = {
				find_files = {
					-- theme = "dropdown",
					previewer = true,
					hidden = true,
				},
				live_grep = {
					-- theme = "dropdown",
					previewer = true,
				},
				buffers = {
					-- theme = "dropdown",
					previewer = true,
				},
				keys = {
					mapvimkey("<leader>fk", "Telescope keymaps", "Show Keymaps"),
					mapvimkey("<leader>fh", "Telescope help_tags", "Show Help Tags"),
					mapvimkey("<leader>ff", "Telescope find_files", "Find Files"),
					mapvimkey("<leader>fg", "Telescope live_grep", "Live Grep"),
					mapvimkey("<leader>fb", "Telescope buffers", "Find Buffers"),
					mapvimkey("<leader>u", "Telescope undo", "n"),
				},
			},
		})
		require("telescope").load_extension("undo")
	end,
}
