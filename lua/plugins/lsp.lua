return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "cssls",
        "thriftls"
      },
    })

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup {
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = { version = 'LuaJIT' },
          diagnostics = { globals = { 'vim' } },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = { enable = false },
        },
      }
    }
    lspconfig.cssls.setup { capabilities = capabilities }
    lspconfig.thriftls.setup { capabilities = capabilities }
    lspconfig.ts_ls.setup { capabilities = capabilities }
  end
}