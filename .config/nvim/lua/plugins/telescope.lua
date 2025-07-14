return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false,
    lazy = true,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-tree/nvim-web-devicons" },
      -- { "nvim-telescope/telescope-fzf-native.nvim", build = "zig" },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "nvim-telescope/telescope-frecency.nvim" },
    },
    keys = {
      {
        "<leader>sf",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find File (CWD)",
      },
      {
        "<leader>sr",
        function()
          require("telescope").extensions.frecency.frecency({ workspace = "CWD" })
        end,
        desc = "Find File (Frecency)", -- Add frecency keybinding
      },
      {
        "<leader>so",
        function()
          require("telescope.builtin").oldfiles()
        end,
        desc = "Search Recent File",
      },
      {
        "<leader>sg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Search Live Grep",
      },
      {
        "<leader>sw",
        function()
          require("telescope.builtin").grep_string()
        end,
        desc = "Search Current String",
      },
      {
        "<leader>sk",
        function()
          require("telescope.builtin").keymaps()
        end,
        desc = "Search Keymaps",
      },
      {
        "<leader>sC",
        function()
          require("telescope.builtin").commands()
        end,
        desc = "Search Commands",
      },
      {
        "<leader><leader>",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Search For Buffers",
      },
      {
        "<leader>sd",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc = "Search Diagnostics",
      },
      {
        "<leader>sj",
        function()
          require("telescope.builtin").jumplist()
        end,
        desc = "Search Jumplist",
      },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        pickers = {
          oldfiles = {
            cwd_only = true,
          },
          find_files = {
            hidden = true,
            file_ignore_patterns = { ".git/", ".cache", "%.o", "%.a", "%.out", "%.class",
              "%.pdf", "%.mkv", "%.mp4", "%.zip" },
          },
          grep_string = {
            additional_args = { "--hidden" }
          },
          live_grep = {
            additional_args = { "--hidden", "--fixed-strings" }
          },
        },
        defaults = {
          file_ignore_patterns = {
            ".git/", "venv", "__pycache__", "%.xlsx", "%.jpg", "%.jpeg", "%.png", "%.webp",
            "%.pdf", "%.odt", "%.ico", "%.pptx", "%.doc", "%.docx", "%.exe", "%.dll", "%.so",
            "%.dylib", "%.class", "%.pyc", "%.o", "%.a", "%.out", "%.bin", "%.jar", "%.dat",
            "%.mp3", "%.ogg", "%.flac", "%.mp4", "%.avi", "%.mkv", "%.mov", "%.zip", "%.tar",
            "%.gz", "%.bz2", "%.7z", "%.iso", "%.img", "%.dmg", "%.svg",
            "%.eot", "%.ttf", "%.otf", "%.bak", "%.tmp", "%.xd, package-lock.json"
          },

        },
        extensions = {
          fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
          },
        },
        borderchars = {
          prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
          results = { " ", " ", " ", " ", " ", " ", " ", " " },
        },
      })
      telescope.load_extension("ui-select")
    end,
  },
}
