vim.g.mapleader = " "
local keymap = vim.keymap
local api = vim.api
-- ------------- 视觉模式----------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ------------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")


-- --------------  插件 ---------------- ---
-- nvim-tree
-- keymap.set('n', '<Esc>[100~', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>")
-- -------------- bufferline --------------
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")


keymap.set("n", "<leader>q", ":Bdelete<CR>", { noremap = true, silent = true, desc = "Close buffer and keep layout" })
-- gitsigns


keymap.set("n", "<leader>gg", ":LazyGit<CR>")


keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle terminal" })



api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
