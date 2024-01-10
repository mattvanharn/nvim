-- lua/plugins/mason.lua

return {
  "williamboman/mason.nvim",
  event = "BufReadPre",
  config = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  }
}
