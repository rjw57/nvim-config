-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- We use the "auto" theme. If it's wrong, override here.
local lualine_theme = require("lualine.themes.auto")

lualine.setup({
  options = {
--    theme = lualine_theme,
    theme = "vscode",
  },
  sections = {
    lualine_c = {
      { 'filename', path = 1 }
    },
  },
  inactive_sections = {
    lualine_c = {
      { 'filename', path = 1 }
    },
  },
})
