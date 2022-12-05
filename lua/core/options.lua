-- Use "opt" as an alias for vim.opt for convenience.optio
local opt = vim.opt

-- Line numbering.
opt.number = true

-- Search
opt.hlsearch = false
opt.incsearch = false

-- Tab settings which don't make me rage.
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
vim.cmd([[
  filetype indent on
]])

-- Disable mouse support.
opt.mouse = ""

-- Use build in formatting with gq. Use <leader>gq to use lsp formatting.
opt.formatexpr = "1"

-- Spell checking
opt.spell = true
opt.spelllang = "en_gb"

-- Line wrapping.
opt.wrap = false

-- Use smart case for search... unsure if I want this.
opt.ignorecase = true
opt.smartcase = true

-- Appearance.
opt.termguicolors = true
opt.background = "dark" -- Like God intended
opt.signcolumn = "yes"

-- Highlight the column after textwidth
opt.colorcolumn = "+1"

-- Disable the perl and ruby providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Markdown
vim.g.vim_markdown_folding_disabled = 1
vim.g.vim_markdown_fenced_languages = {
  "js=javascript",
  "jsx=javascriptreact",
  "ts=typescript",
  "tsx=typescriptreact",
  "python",
  "css",
  "html",
  "console=sh",
  "bash=sh",
}

-- Set characters to show for trailing whitespace/tabs
opt.listchars = "tab:› ,trail:·"
opt.list = true

-- Python executable (this may need tweaking on some systems)
if vim.fn.has("macunix") == 1 then
  vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
elseif vim.fn.has("unix") == 1 then
  vim.g.python3_host_prog = "/usr/bin/python3"
end

-- Doge configuration
vim.g.doge_mapping = "gdd"
