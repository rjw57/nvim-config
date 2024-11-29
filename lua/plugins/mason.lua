return {
  {
    "mason.nvim",
    opts = {
      ensure_installed = {
        "astro-language-server",
        "stylua",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      -- list of servers for mason to install
      ensure_installed = {
        "astro",
        "clangd",
        "cssls",
        "denols",
        "emmet_ls",
        "eslint",
        "gopls",
        "html",
        "jdtls",
        "lua_ls",
        "luau_lsp",
        "pylsp",
        "rust_analyzer",
        "tailwindcss",
        "ts_ls",
        "yamlls",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    },
  },
  {
    "jayp0521/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "autopep8",
        "black",
        "flake8",
        "isort",
        "mypy",
        "prettier",
      },
      automatic_installation = true,
      automatic_setup = false,
    },
  },
}
