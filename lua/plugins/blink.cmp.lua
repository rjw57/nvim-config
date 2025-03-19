return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.completion.accept.auto_brackets.enabled = false
      opts.completion.ghost_text.enabled = false
      opts.keymap.preset = "default"
      opts.sources.default = { "lsp", "path", "buffer" }
    end,
  },
}
