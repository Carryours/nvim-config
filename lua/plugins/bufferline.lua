vim.opt.termguicolors = true

require("bufferline").setup {
  options = {
    -- 使用 nvim 内置lsp
    diagnostics = "nvim_lsp",
    -- 左侧让出 nvim-tree 的位置
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left"
    }},

    -- close_command = function(bufnum)
    --   require('bufdelete').bufdelete(bufnum, true)
    -- end,
    -- right_mouse_command = "Bdelete! %d",
    -- show_close_icon = true,
    -- separator_style = "slant",
    -- always_show_bufferline = true,
  }
}

-- local function close_buffer_protected()
--   local current_win = vim.api.nvim_get_current_win()
--   local tree_win = vim.fn.bufwinid("NvimTree")
--   if current_win == tree_win then
--     vim.cmd("wincmd l") -- 切换到其他窗口
--   end
--   vim.cmd("bdelete!") -- 关闭缓冲区
-- end
--
-- vim.api.nvim_set_keymap('n', '<leader>q', ':lua close_buffer_protected()<CR>', { noremap = true, silent = true })
-- require("bufferline").setup({
--   options = {
--     close_command = function(bufnum)
--       require('bufdelete').bufdelete(bufnum, true)
--     end,
--     right_mouse_command = "Bdelete! %d",
--     show_close_icon = true,
--     separator_style = "slant",
--   }
-- })
-- vim.api.nvim_create_autocmd("BufDelete", {
--   callback = function ()
--     local buffers = vim.fn.getbufinfo({ buflisted = 1})
--     if #buffers > 0 then
--       vim.cmd("bnext")
--     end
--   end
-- })

