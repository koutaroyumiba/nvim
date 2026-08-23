return {
  "esmuellert/codediff.nvim",
  cmd = "CodeDiff",
  opts = {
    explorer = {
      hidden = true,
      initial_focus = "modified",
      view_mode = "tree", -- tree/list
      status_right_margin = 2,
    },
    history = {
      initial_focus = "modified",
    },
  },
  keys = {
    {
      "<leader>gd",
      function()
        vim.cmd.CodeDiff()
      end,
      desc = "Toggle CodeDiff"
    }
  }
}
