-- define the keymap variable for convenience
local keymap = vim.keymap

-- nvim-tree configuration
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- git configuration
keymap.set("n", "<leader>gp", ":Git push")
keymap.set("n", "<leader>gP", ":Git push --force")
