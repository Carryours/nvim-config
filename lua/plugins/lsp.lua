require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- 告诉语言服务器使用 Lua 5.1（Neovim 是基于 LuaJIT）
        version = 'LuaJIT',
      },
      diagnostics = {
        -- 识别全局变量 `vim`
        globals = { 'vim' },
      },
      workspace = {
        -- 将 Neovim 的 runtime 文件添加到语言服务器的工作区
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false, -- 禁止提示“第三方库未检查”警告
      },
      telemetry = {
        enable = false, -- 禁用遥测
      },
    },
  }
}
