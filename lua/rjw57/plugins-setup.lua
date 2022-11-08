-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  -- lua functions that many plugins use
  use("nvim-lua/plenary.nvim")

  -- colorscheme
  use("ericbn/vim-solarized")

  -- "Leap" cursor navigation
  use("ggandor/leap.nvim")

  -- Case aware search and replace
  use("tpope/vim-abolish")

  -- File browser
  use("nvim-tree/nvim-tree.lua")

  -- Status lune
  use("nvim-lualine/lualine.nvim")

  -- Autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")

  -- Downloading and configuring LSP servers
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")

  -- Treesitter parsing
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  })

  -- Git integration
  use("tpope/vim-fugitive")

  -- Telescope for fuzzy search
  use({
    "nvim-telescope/telescope.nvim",
    branch="0.1.x",
    requires={ {'nvim-lua/plenary.nvim'} }
  })
  use({"nvim-telescope/telescope-fzf-native.nvim", run="make"})


  if packer_bootstrap then
    require("packer").sync()
  end
end)
