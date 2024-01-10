-- lua/plugins/mason-lspconfig.lua

return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "efm",
      "lua_ls",
      "pyright"
    },
  automatic_installation = true,
  },
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim",
}
