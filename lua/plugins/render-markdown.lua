return {
  "git@github.com:MeanderingProgrammer/render-markdown.nvim.git", -- Changed to SSH URL
  ft = "markdown", -- Only load for markdown files
  config = function()
    require("render-markdown").setup({
      -- Default options are usually fine, but can be customized
      -- For example, to open in a vertical split:
      -- open_cmd = "vsplit",
    })
  end,
}
