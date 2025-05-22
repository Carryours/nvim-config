local opt = vim.opt

-- 行号
opt.relativenumber = false
opt.number = true

-- 换行
opt.wrap = true           -- 开启软换行
opt.linebreak = true      -- 在单词边界折行
opt.breakindent = true    -- 折行后保持缩进

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
-- Lua
-- vim.cmd[[colorscheme tokyonight-moon]]

opt.background = "dark" --  light or dark 

-- opt.hidden = true

vim.cmd[[colorscheme gruvbox]]
vim.g.gruvbox_contrast_dark = 'hard'  -- 选项可以是 'soft', 'medium', 'hard'
vim.g.gruvbox_invert_selection = true  -- 选中时反转颜色

-- 设置背景为透明
vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])  -- 适用于 GUI 版本
vim.cmd([[ hi NonText guibg=NONE ctermbg=NONE ]]) -- 隐藏字符的背景

-- vim.wo.foldlevel = 3
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- vim.wo.fillchars='eob: '


-- vim.g.lazygit_floating_window_winblend = 0 -- transparency of floating window
-- vim.g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
-- vim.g.lazygit_floating_window_border_chars = {'╭','─', '╮', '│', '╯','─', '╰', '│'} -- customize lazygit popup window border characters
-- vim.g.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
-- vim.g.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed

-- vim.g.lazygit_use_custom_config_file_path = 0 -- config file path is evaluated if this value is 1
-- vim.g.lazygit_config_file_path = '' -- custom config file path
-- OR
-- vim.g.lazygit_config_file_path = {} -- table of custom config file paths
