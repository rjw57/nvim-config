-- import nvim-tree plugin safely
local status, tree = pcall(require, "nvim-tree")
if not status then
  return
end

-- Recommended settings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

tree.setup()
