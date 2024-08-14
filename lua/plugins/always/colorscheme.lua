-- lua/plugins/ui/colorscheme.lua

return {
	{
		"xiyaowong/nvim-transparent",
		lazy = false,
		priority = 999,
	},
	-- Nightfox
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local palette = require("nightfox.palette").load("carbonfox")
			require("nightfox").setup({
				options = { transparent = true },
				groups = {
					all = {
						TelescopeBorder = { fg = palette.fg3 },
					},
					nightfox = {
						Visual = { bg = palette.bg1 },
					},
				},
			})
			-- vim.cmd.colorscheme("carbonfox")
		end,
	},
	-- Catppuccin
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "latte", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true, -- disables setting the background color.
				show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
				term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
				dim_inactive = {
					enabled = false, -- dims the background color of inactive window
					shade = "dark",
					percentage = 0.15, -- percentage of the shade to apply to the inactive window
				},
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				no_underline = false, -- Force no underline
				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
					-- miscs = {}, -- Uncomment to turn off hard-coded styles
				},
				color_overrides = {},
				custom_highlights = {},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
				},
			})

			-- setup must be called before loading
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
	-- Leaf
	{
		"daschw/leaf.nvim",
		lazy = false,
		priority = 1000,
		name = "leaf",
		config = function()
			local leaf_colors = require("leaf.colors").setup()
			require("leaf").setup({
				underlineStyle = "underline",
				commentStyle = "italic",
				functionStyle = "NONE",
				keywordStyle = "italic",
				statementStyle = "bold",
				typeStyle = "NONE",
				variablebuiltinStyle = "italic",
				transparent = true,
				colors = {
					bg3 = leaf_colors.leaf_green_3,
				},
				overrides = {},
				theme = "auto", -- default, based on vim.o.background, alternatives: "light", "dark"
				contrast = "high", -- "low", "medium", "high"
			})

			-- setup must be called before loading
			vim.cmd("colorscheme leaf")
		end,
	},
	-- Github
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			require("github-theme").setup({
				options = {
					-- Compiled file's destination location
					compile_path = vim.fn.stdpath("cache") .. "/github-theme",
					compile_file_suffix = "_compiled", -- Compiled file suffix
					hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
					hide_nc_statusline = true, -- Override the underline style for non-active statuslines
					transparent = true, -- Disable setting bg (make neovim's background transparent)
					terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
					dim_inactive = false, -- Non focused panes set to alternative background
					module_default = true, -- Default enable value for modules
					styles = { -- Style to be applied to different syntax groups
						comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
						functions = "NONE",
						keywords = "NONE",
						variables = "NONE",
						conditionals = "NONE",
						constants = "NONE",
						numbers = "NONE",
						operators = "NONE",
						strings = "NONE",
						types = "NONE",
					},
					inverse = { -- Inverse highlight for different types
						match_paren = false,
						visual = false,
						search = false,
					},
					darken = { -- Darken floating windows and sidebar-like windows
						floats = true,
						sidebars = {
							enable = true,
							list = {}, -- Apply dark background to specific windows
						},
					},
					modules = { -- List of various plugins and additional options
						-- ...
					},
				},
				palettes = {},
				specs = {},
				groups = {},
			})
			-- vim.cmd("colorscheme github_light_default")
		end,
	},
	-- Everforest
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup({
				---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
				---Default is "medium".
				background = "medium",
				---How much of the background should be transparent. 2 will have more UI
				---components be transparent (e.g. status line background)
				transparent_background_level = 2,
				---Whether italics should be used for keywords and more.
				italics = false,
				---Disable italic fonts for comments. Comments are in italics by default, set
				---this to `true` to make them _not_ italic!
				disable_italic_comments = false,
				---By default, the colour of the sign column background is the same as the as normal text
				---background, but you can use a grey background by setting this to `"grey"`.
				sign_column_background = "none",
				---The contrast of line numbers, indent lines, etc. Options are `"high"` or
				---`"low"` (default).
				ui_contrast = "low",
				---Dim inactive windows. Only works in Neovim. Can look a bit weird with Telescope.
				---
				---When this option is used in conjunction with show_eob set to `false`, the
				---end of the buffer will only be hidden inside the active window. Inside
				---inactive windows, the end of buffer filler characters will be visible in
				---dimmed symbols. This is due to the way Vim and Neovim handle `EndOfBuffer`.
				dim_inactive_windows = false,
				---Some plugins support highlighting error/warning/info/hint texts, by
				---default these texts are only underlined, but you can use this option to
				---also highlight the background of them.
				diagnostic_text_highlight = false,
				---Which colour the diagnostic text should be. Options are `"grey"` or `"coloured"` (default)
				diagnostic_virtual_text = "coloured",
				---Some plugins support highlighting error/warning/info/hint lines, but this
				---feature is disabled by default in this colour scheme.
				diagnostic_line_highlight = false,
				---By default, this color scheme won't colour the foreground of |spell|, instead
				---colored under curls will be used. If you also want to colour the foreground,
				---set this option to `true`.
				spell_foreground = false,
				---Whether to show the EndOfBuffer highlight.
				show_eob = true,
				---Style used to make floating windows stand out from other windows. `"bright"`
				---makes the background of these windows lighter than |hl-Normal|, whereas
				---`"dim"` makes it darker.
				---
				---Floating windows include for instance diagnostic pop-ups, scrollable
				---documentation windows from completion engines, overlay windows from
				---installers, etc.
				---
				---NB: This is only significant for dark backgrounds as the light palettes
				---have the same colour for both values in the switch.
				float_style = "bright",
				---Inlay hints are special markers that are displayed inline with the code to
				---provide you with additional information. You can use this option to customize
				---the background color of inlay hints.
				---
				---Options are `"none"` or `"dimmed"`.
				inlay_hints_background = "none",
				---You can override specific highlights to use other groups or a hex colour.
				---This function will be called with the highlights and colour palette tables.
				---@param highlight_groups Highlights
				---@param palette Palette
				on_highlights = function(highlight_groups, palette) end,
				---You can override colours in the palette to use different hex colours.
				---This function will be called once the base and background colours have
				---been mixed on the palette.
				---@param palette Palette
			})
			-- vim.cmd("colorscheme everforest")
		end,
	},
	-- Material
	{
		"marko-cerovac/material.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("material").setup({

				contrast = {
					terminal = false, -- Enable contrast for the built-in terminal
					sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
					floating_windows = false, -- Enable contrast for floating windows
					cursor_line = false, -- Enable darker background for the cursor line
					lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
					non_current_windows = false, -- Enable contrasted background for non-current windows
					filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
				},

				styles = { -- Give comments style such as bold, italic, underline etc.
					comments = { --[[ italic = true ]]
					},
					strings = { --[[ bold = true ]]
					},
					keywords = { --[[ underline = true ]]
					},
					functions = { --[[ bold = true, undercurl = true ]]
					},
					variables = {},
					operators = {},
					types = {},
				},

				plugins = { -- Uncomment the plugins that you use to highlight them
					-- Available plugins:
					-- "coc",
					-- "colorful-winsep",
					"dap",
					"dashboard",
					-- "eyeliner",
					-- "fidget",
					"flash",
					"gitsigns",
					"harpoon",
					-- "hop",
					"illuminate",
					"indent-blankline",
					"lspsaga",
					-- "mini",
					-- "neogit",
					-- "neotest",
					-- "neo-tree",
					-- "neorg",
					"noice",
					"nvim-cmp",
					-- "nvim-navic",
					"nvim-tree",
					"nvim-web-devicons",
					-- "rainbow-delimiters",
					-- "sneak",
					"telescope",
					-- "trouble",
					"which-key",
					"nvim-notify",
				},

				disable = {
					colored_cursor = false, -- Disable the colored cursor
					borders = false, -- Disable borders between vertically split windows
					background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
					term_colors = false, -- Prevent the theme from setting terminal colors
					eob_lines = false, -- Hide the end-of-buffer lines
				},

				high_visibility = {
					lighter = false, -- Enable higher contrast text for lighter style
					darker = false, -- Enable higher contrast text for darker style
				},

				lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

				async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)

				custom_colors = nil, -- If you want to override the default colors, set this to a function

				custom_highlights = {}, -- Overwrite highlights with your own
			})
			-- vim.cmd("colorscheme material")
		end,
	},
}
