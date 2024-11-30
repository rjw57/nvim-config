return {
  { "jose-elias-alvarez/null-ls.nvim" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              configurationSources = { "pycodestyle", "flake8" },
              plugins = {
                pycodestyle = {
                  enabled = false,
                },
                flake8 = {
                  enabled = true,
                },
                pylint = {
                  enabled = false,
                },
              },
            },
          },
        },
      },
    },
  },
  { "glepnir/lspsaga.nvim" },
  { "hrsh7th/cmp-nvim-lsp" },
}
