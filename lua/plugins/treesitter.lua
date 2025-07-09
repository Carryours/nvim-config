return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "p00f/nvim-ts-rainbow" },
  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "vim", "bash", "c", "cpp", "json", "lua", "java", "javascript", "python", "typescript", "rust", "vue", "css", "html", "tsx", "scss", "thrift"},
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}