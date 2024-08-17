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
  use("overcache/NeoSolarized")
  -- use("letorbi/vim-colors-modern-borland") -- apparently this is no more
  use("bluz71/vim-moonfly-colors")
  use("folke/tokyonight.nvim")
  use({ "catppuccin/nvim", as = "catppuccin" })
  use("tanvirtin/monokai.nvim")

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
  use("glepnir/lspsaga.nvim", { branch = "main" })

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
    branch = "0.1.x",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

  -- Markdown
  use("plasticboy/vim-markdown")

  -- Linting and formatting
  use("jose-elias-alvarez/null-ls.nvim")
  use("jayp0521/mason-null-ls.nvim")

  -- Snippets (needed for autocomplete)
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion

  -- All the syntax highlighting. Disable vim-polyglot indent detection since it overrides
  -- editorconfig.
  vim.g.polyglot_disabled = { "autoindent" }
  use("sheerun/vim-polyglot")

  -- Helpful bracket commands like ]q, etc.
  use("tpope/vim-unimpaired")

  -- Document generation
  use({ "kkoomen/vim-doge", run = ":call doge#install()" })

  -- kitty.conf highlighting
  use("fladson/vim-kitty")

  -- Extensions for Java Language Server
  use("mfussenegger/nvim-jdtls")

  -- Allow specifying some tools must be installed via Mason
  use("WhoIsSethDaniel/mason-tool-installer.nvim")

  -- Golang tooling
  use("fatih/vim-go")
  use("rfratto/vim-go-testify")

  -- Test suite integration
  use({
    "nvim-neotest/neotest",
    requires = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
    },
  })

  -- Debugger
  use("mfussenegger/nvim-dap")
  use("mfussenegger/nvim-dap-python")
  use({
    "rcarriga/nvim-dap-ui",
    requires = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
  })

  use({ "folke/trouble.nvim" })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
