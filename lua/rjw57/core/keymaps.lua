-- define the keymap variable for convenience
local keymap = vim.keymap

-- nvim-tree configuration
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- git configuration
keymap.set("n", "<leader>gp", ":Git push<CR>")
keymap.set("n", "<leader>gP", ":Git push --force<CR>")

-- telescope
local status, telescope_builtin = pcall(require, "telescope.builtin")
if status then
  keymap.set("n", "<C-p>", telescope_builtin.find_files, {})
  keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
  keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
  keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
  keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
  keymap.set("n", "<leader>ft", telescope_builtin.treesitter, {})
end
