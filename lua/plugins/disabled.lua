-- Disable any plugins which I don't use
return {
  { "persistence.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "echasnovski/mini.pairs", enabled = false },
  -- yanky can hang with Wayland https://github.com/gbprod/yanky.nvim/issues/123
  { "gbprod/yanky.nvim", enabled = false },
}
