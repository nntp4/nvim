local fn = vim.fn
local cmd = vim.cmd

local packer_bootstrap = nil
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

cmd [[packadd packer.nvim]]

local use = require('packer').use

require('packer').startup(function()
  -- prerequisite
  use 'nvim-lua/plenary.nvim'
  use 'wbthomason/packer.nvim'
  use { 'norcalli/nvim-colorizer.lua', config = require('xxy/plug/colorizer').config }
  use 'kyazdani42/nvim-web-devicons'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = require('xxy/plug/treesitter').config
  }

  use 'kevinhwang91/nvim-bqf'

  -- explorer
  --use { 'kyazdani42/nvim-tree.lua', config = require('xxy/plug/nvimtree').config }

  --  instead of EasyMotion, go to anywhere in the file.
  -- use 'phaazon/hop.nvim'
  use 'ggandor/lightspeed.nvim'


  -- statusline & tablelin
  -- use {
  --   'akinsho/bufferline.nvim', tag = "v2.*",
  --   config = require('xxy/plug/bufferline').config,
  --   requires = 'kyazdani42/nvim-web-devicons'
  -- }
  use { 'hoob3rt/lualine.nvim', config = require('xxy/plug/lualine').config }

  -- official extensions for Telescope
  use 'nvim-telescope/telescope-file-browser.nvim'
  use { "nvim-telescope/telescope-frecency.nvim", requires = { 'tami5/sqlite.lua' } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-project.nvim'
  -- third-party eextensions
  use 'fannheyward/telescope-coc.nvim'
  use 'nvim-neorg/neorg-telescope'
  -- Telescope
  use { 'nvim-telescope/telescope.nvim', config = require('xxy/plug/telescope').config }

  -- Neorg
  use { "nvim-neorg/neorg", config = require('xxy/plug/neorg').config }

  -- instead of editorconfig
  use 'gpanders/editorconfig.nvim'

  -- comment text in and out
  use { 'numToStr/Comment.nvim', config = require("xxy/plug/comment").config }

  -- Highlight Todolist & serach todos with Telescope
  use "folke/todo-comments.nvim"

  use { "folke/trouble.nvim", config = require("xxy/plug/trouble").config }

  use 'glepnir/dashboard-nvim'

  -- LSP
  use {
    'neoclide/coc.nvim',
    branch = 'release',
    run = require("xxy/plug/coc").run,
    cconfig = require("xxy/plug/coc").config
  }

  -- Version Control
  use {
    'lewis6991/gitsigns.nvim',
    tag = 'release',
    config = require("xxy/plug/gitsigns").config
  }
  use {
    'TimUntersberger/neogit',
    config = require("xxy/plug/neogit").config
  }

  -- AI code completion, I feel so fucking good!
  use 'github/copilot.vim'

  -- A neovim plugin to persist and toggle multiple terminals during an editing session
  use { "akinsho/toggleterm.nvim", tag = 'v1.*' }

  -- displays a popup with possible key bindings of the command you started typing
  use { 'folke/which-key.nvim', config = require("xxy/plug/whichkey").config }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

require('xxy/plug/mapping')
