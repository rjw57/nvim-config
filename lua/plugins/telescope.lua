return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>fg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
      { "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
    },
  },
}
