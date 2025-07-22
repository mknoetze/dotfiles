return {
  "f-person/git-blame.nvim",
  event = "VeryLazy",
  init = function()
    -- Disable git-blame by default on startup
    vim.g.gitblame_enabled = 0
  end,
  opts = {
    message_template = " <summary> • <date> • <author> • <<sha>>",
    date_format = "%m-%d-%Y %H:%M:%S",
    virtual_text_column = 1,
  },
  keys = {
    {
      "<leader>gb",
      function()
        vim.cmd("GitBlameToggle")
      end,
      desc = "Toggle Git Blame",
    },
  },
}
