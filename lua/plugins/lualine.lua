-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_theme = require("lualine.themes.solarized_dark")

lualine.setup({
  options = {
    theme = lualine_theme,
  },
})
