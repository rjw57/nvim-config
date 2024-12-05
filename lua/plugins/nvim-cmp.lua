return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- text completion from all buffers
      local cmp = require("cmp")
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
      return opts
    end,
  },
}
