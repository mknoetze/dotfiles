return {
  "folke/which-key.nvim",
  config = function()
    local mappings = {
      q = { "<cmd>confirm q<CR>", "Quit" },
      v = { "<cmd>vsplit<CR>", "Split Vertical" },
      h = { "<cmd>split<CR>", "Split Horizontal"},
      d = { name = "Display" },
      f = { name = "Find" },
      g = { name = "Git" },
      l = { name = "LSP" },
      p = { name = "Plugins" },
      t = {name = "Terminal" },
      T = { name = "Treesitter" },
    }

    local which_key = require "which-key"
    which_key.setup {
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
          suggestions = 20,
        },
        presets = {
          operators = false,
          motions = false,
          text_objects = false,
          windows = false,
          nav = false,
          z = false,
          g = false,
        },
      },
      window = {
        border = "rounded",
        position = "bottom",
        padding = { 2, 2, 2, 2 },
      },
      ignore_missing = true,
      show_help = false,
      show_keys = false,
      disable = {
        buftypes = {},
        filetypes = { "TelescopePrompt" },
      },
    }

    local opts = {
      mode = "n", -- NORMAL mode
      prefix = "<leader>",
    }

    which_key.register(mappings, opts)
  end
}
