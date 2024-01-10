-- lua/plugins/which-key.lua

return {
	"folke/which-key.nvim",
  lazy = false,
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {}
}
