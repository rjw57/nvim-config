return {
  {
    "saghen/blink.cmp",
    opts = function (_, opts)
      opts.completion.accept.auto_brackets.enabled = false
      opts.keymap.preset = "default"
    end,
  },
}
