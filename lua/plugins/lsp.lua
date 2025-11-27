return {
  { "nvim-tools/none-ls.nvim" },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Disable <CR> accepts suggestion since this is just too difficult for me to internalise.
      -- local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- keys[#keys + 1] = { "<leader>gq", "<cmd>lua vim.lsp.buf.format()<CR>" }

      -- I know some people love this. I am not one of them.
      -- opts.autoformat = false

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
  -- { "hrsh7th/cmp-nvim-lsp" },
}
