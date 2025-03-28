-- 自动安装packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use 'folke/tokyonight.nvim' -- 主题
  use 'gruvbox-community/gruvbox' -- gruvbox主题
  use {
    'nvim-lualine/lualine.nvim', --状态栏
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- 状态栏图标
  }
  use {
    'nvim-tree/nvim-tree.lua', -- 文档树
    requires = {
    'nvim-tree/nvim-web-devicons', -- 文档树图标
    }
  }
  use "christoomey/vim-tmux-navigator" -- 用ctl-hjkl来定位窗口
  use "nvim-treesitter/nvim-treesitter" -- 语法高亮
  use "p00f/nvim-ts-rainbow" -- 配合treesitter，不同括号颜色区分
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  }
  -- 自动补全
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径

  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号

  use "akinsho/bufferline.nvim" -- buffer分割线
  use "lewis6991/gitsigns.nvim" -- 左则git提示
  -- lazygit  
  -- use({
  --     "kdheepak/lazygit.nvim",
  --     -- optional for floating window border decoration
  --     requires = {
  --         "nvim-lua/plenary.nvim",
  --     },
  -- })
  --

  use "echasnovski/mini.move" -- 用opt+方向键移动行
  use({
      "kdheepak/lazygit.nvim",
      requires = {
          "nvim-telescope/telescope.nvim",
          "nvim-lua/plenary.nvim",
      },
      config = function()
          require("telescope").load_extension("lazygit")
      end,
  })

  use {
    'nvim-telescope/telescope.nvim', -- tag = '0.1.8',  -- 文件检索
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'DaikyXendo/nvim-material-icon' -- 图标
  -- use 'voldikss/vim-floaterm' -- termainal manager
  use {
    "akinsho/toggleterm.nvim", tag = '*', 
    config = function()
      require("toggleterm").setup()
    end
  }
  -- install without yarn or npm
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- use 'famiu/bufdelete.nvim'  -- 关闭缓冲区
  if packer_bootstrap then
    require('packer').sync()
  end
end)
