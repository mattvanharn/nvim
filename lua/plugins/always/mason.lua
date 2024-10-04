-- lua/plugins/lsp/mason.lua

return {
	"williamboman/mason.nvim",
	event = "BufReadPre",
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
}
