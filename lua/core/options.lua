local opt = vim.opt

-- 行号
opt.relativenumber = false
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

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

vim.cmd[[colorscheme gruvbox]]
vim.g.gruvbox_contrast_dark = 'hard'  -- 选项可以是 'soft', 'medium', 'hard'
vim.g.gruvbox_invert_selection = true  -- 选中时反转颜色

-- 设置背景为透明
vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])  -- 适用于 GUI 版本
vim.cmd([[ hi NonText guibg=NONE ctermbg=NONE ]]) -- 隐藏字符的背景
