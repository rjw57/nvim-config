return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<C-p>",
        function()
          require("telescope.builtin").git_files({
            use_git_root = false,
            show_untracked = true,
          })
        end,
      },
    },
  },
}
