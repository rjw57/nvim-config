return {
  { "jose-elias-alvarez/null-ls.nvim" },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- I know some people love this. I am not one of them.
      opts.autoformat = false

      opts.servers.pylsp = {
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
      }

      return opts
    end,
  },
  { "glepnir/lspsaga.nvim" },
  { "hrsh7th/cmp-nvim-lsp" },
}
