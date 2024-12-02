-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Use "opt" as an alias for vim.opt for convenience.
local opt = vim.opt

-- This is too ingrained in me to change.
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Undo Lazy.nvim settings
opt.autowrite = false
opt.conceallevel = 0
opt.clipboard = ""
opt.cursorline = false
opt.laststatus = 2

-- Line numbering.
opt.number = true
opt.relativenumber = false

-- Search
opt.hlsearch = false
opt.incsearch = false

-- Tab settings which don't make me rage.
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2

-- Appearance.
opt.termguicolors = true
opt.background = "dark" -- Like God intended
opt.signcolumn = "yes"

-- Highlight the column after textwidth
opt.colorcolumn = "+1"

-- Default text width
opt.textwidth = 100

-- Set characters to show for trailing whitespace/tabs
opt.listchars = "tab:› ,trail:·"
opt.list = true

-- Line breaking
opt.breakindent = true
-- Use built in formatting with gq. Use <leader>gq to use lsp formatting.
opt.formatexpr = "1"
