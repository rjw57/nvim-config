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
  -- disable indentation - it is currently broken for some languages Python
  indent = { enable = true, disable = { "python" } },
  -- disable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = false },
  -- ensure these language parsers are installed
  ensure_installed = {
    "astro",
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
    "lua",
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
