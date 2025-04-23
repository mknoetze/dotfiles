return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 1000
  end,
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>s", group = "Search"},
      { "<leader>g", group = "Git"},
      { "<leader>l", group = "LSP"},
      { "<leader>d", group = "Display"},
      { "<leader>f", group = "File"},
      { "<leader>p", group = "Plugins"},
    })
  end,
}
