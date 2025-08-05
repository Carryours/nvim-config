return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  config = function()
    require("mason").setup({
      ensure_installed = {
        -- formatters
        "stylua",
        "prettier",
        "gofmt",
        "goimports",
      },
      ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
      }
    })
  end,
}