-- lua/plugins/lsp.lua

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- 定义 on_attach 函数，用于统一设置
    local on_attach = function(client, bufnr)
      -- 这里可以定义所有 LSP 共享的快捷键
      local nmap = function(keys, func, desc)
        if desc then
          desc = 'LSP: ' .. desc
        end
        vim.keymap.set('n', keys, func, { buffer = bufnr, noremap = true, silent = true, desc = desc })
      end

      nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
      nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
      nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
      nmap('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
      nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
      nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
      nmap('<leader>ws', vim.lsp.buf.workspace_symbol, '[W]orkspace [S]ymbols')
      nmap('<leader>d', vim.diagnostic.open_float, '[D]iagnostics')
    end

    -- 获取 LSP 的 capabilities
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- 需要安装的 LSP 服务列表
    local servers = {
      "lua_ls",
      "ts_ls",
      "cssls",
      "thriftls",
      "gopls"
    }

    -- 使用 mason-lspconfig 确保 LSP 已安装
    require("mason-lspconfig").setup({
      ensure_installed = servers,
    })

    local lspconfig = require("lspconfig")

    -- 循环为每个 server 设置
    for _, server_name in ipairs(servers) do
      local opts = {
        on_attach = on_attach,
        capabilities = capabilities,
      }
      -- 特殊配置
      if server_name == "lua_ls" then
        opts.settings = {
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
      elseif server_name == "ts_ls" then
        opts.filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
      end
      
      lspconfig[server_name].setup(opts)
    end
  end
}
