-- lua/plugins/formatter.lua
return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" }, -- 在保存前格式化
  cmd = { "ConformInfo" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofmt", "goimports" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        -- 等等
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
    -- 添加一个快捷键来手动格式化
    vim.keymap.set({ "n", "v" }, "<leader>f", function()
        require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format buffer" })
  end,
}
