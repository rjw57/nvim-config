return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local null_ls = require("null-ls")
      local formatting = null_ls.builtins.formatting -- to setup formatters
      local diagnostics = null_ls.builtins.diagnostics -- to setup linters

      return {
        -- setup formatters & linters
        sources = {
          --  to disable file types use
          --  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
          formatting.prettier, -- js/ts formatter
          formatting.stylua, -- lua formatter
          formatting.black,
          formatting.isort,
          diagnostics.eslint_d.with({ -- js/ts linter
            -- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
            condition = function(utils)
              return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
            end,
          }),
        },
      }
    end,
  },
  { "glepnir/lspsaga.nvim" },
  { "hrsh7th/cmp-nvim-lsp" },
}
