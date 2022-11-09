-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
    -- treesitter highlighting does not play nicely with vim-markdown
    disable = { "markdown", "markdown_inline" },
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "bash",
    "c_sharp",
    "cmake",
    "cpp",
    "css",
    "dart",
    "dockerfile",
    "dot",
    "git_rebase",
    "gitattributes",
    "gitignore",
    "glsl",
    "go",
    "gomod",
    "graphql",
    "hcl",
    "html",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "latex",
    "make",
    "markdown",
    "markdown_inline",
    "scss",
    "sql",
    "svelte",
    "toml",
    "tsx",
    "typescript",
    "verilog",
    "vim",
    "yaml",
  },
  -- auto install above language parsers
  auto_install = true,
})
