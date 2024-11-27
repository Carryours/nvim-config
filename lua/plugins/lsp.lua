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
    "volar",
    "ts_ls"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {
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

local mason_registry = require('mason-registry')

-- 获取 vue-language-server 的安装路径
local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path()..'/node_modules/@vue/language-server'
lspconfig.ts_ls.setup {
  init_options = {
    plugins = {
      {
        name = '@vue/typescript-plugin',
        location = vue_language_server_path,
        languages = { 'vue' },
      }
    },
  },
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }
}

-- Volar
lspconfig.volar.setup = {

  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
}
