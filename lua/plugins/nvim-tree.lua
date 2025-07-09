return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 40,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
      git = {
        ignore = false
      },
      actions = {
        open_file = {
          quit_on_open = false
        }
      }
    })
  end
}