-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- We use the "auto" theme. If it's wrong, override here.
-- local lualine_theme = require("lualine.themes.solarized_dark")

lualine.setup({
  options = {
    theme = "16color",
    globalstatus = true,
  },
})
