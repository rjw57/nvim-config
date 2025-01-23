return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      -- text completion from all buffers
      opts.sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "path" },
      }, {
        {
          name = "buffer",
          option = {
            get_bufnrs = function()
              return vim.api.nvim_list_bufs()
            end
          }
        },
      })

      opts.completion = { completeopt = "menu,menuone,noinsert,noselect" }

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<CR>"] = LazyVim.cmp.confirm({ select = false }),
      })

      return opts
    end,
  },
}
