vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
    -- hide_root_folder = true
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
