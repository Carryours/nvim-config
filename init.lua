-- Set up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Require core configuration
require("core.options")
require("core.keymaps")

-- Set up lazy.nvim with plugins from lua/plugins/
require("lazy").setup("plugins")

-- Remove the old packer compiled file
pcall(vim.cmd, "aunmenu Packer")
pcall(vim.cmd, "aunmenu! Packer")
local packer_compiled = vim.fn.stdpath("config") .. "/plugin/packer_compiled.lua"
if vim.fn.filereadable(packer_compiled) == 1 then
  os.remove(packer_compiled)
end