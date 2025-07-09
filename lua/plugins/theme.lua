return {
  "gruvbox-community/gruvbox",
  lazy = false,
  priority = 1000,
  init = function()
    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.gruvbox_invert_selection = true
  end,
  config = function()
    vim.cmd.colorscheme "gruvbox"
  end,
}