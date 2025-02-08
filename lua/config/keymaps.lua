-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- define the keymap variable for convenience
local keymap = vim.keymap

-- git configuration
keymap.set("n", "<leader>gp", ":Git push<CR>")
keymap.set("n", "<leader>gP", ":Git push --force<CR>")

-- diagnostics
--vim.api.nvim_set_keymap(
--  "n",
--  "<leader>do",
--  "<cmd>lua vim.diagnostic.open_float()<CR>",
--  { noremap = true, silent = true }
--)
--vim.api.nvim_set_keymap("n", "<leader>d[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", "<leader>d]", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", "<leader>dd", "<cmd>Telescope diagnostics<CR>", { noremap = true, silent = true })
