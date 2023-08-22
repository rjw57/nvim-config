-- set colorscheme to solarized with protected call
-- in case it isn't installed
--vim.g.BorlandStyle = "classic"
local status, _ = pcall(vim.cmd, "colorscheme catppuccin")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

-- override highlights
vim.cmd([[
  highlight clear SpellBad
  highlight SpellBad cterm=underline gui=undercurl
]])
