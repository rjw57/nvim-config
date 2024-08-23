-- set colorscheme to solarized with protected call
-- in case it isn"t installed
--vim.g.BorlandStyle = "classic"
--local status, _ = pcall(vim.cmd, "colorscheme vscode")
local status, vscode = pcall(require, "vscode")

if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

local c = require("vscode.colors").get_colors()
require("vscode").setup({
    -- Alternatively set style in setup
    style = "dark",

    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Underline `@markup.link.*` variants
    underline_links = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
    --     vscLineNumber = "#FFFFFF",
      -- to match kitty
      vcsBack = "#1e1e1e"
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
     --   Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
     --   SpellBad = { cterm="underline", gui="undercurl" },
    }
})
require("vscode").load()

-- load the theme without affecting devicon colors.
vim.cmd.colorscheme "vscode"

-- override highlights
vim.cmd([[
  highlight clear SpellBad
  highlight SpellBad cterm=underline gui=undercurl
]])
