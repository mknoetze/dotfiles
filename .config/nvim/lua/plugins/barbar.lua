local M = {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",     -- optional, for git status
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false -- disable auto-setup so we can configure it manually
  end,
  version = "^1.0.0",
  event = "BufEnter",
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = true,
    insert_at_start = true,
    -- …etc.
  },
  keys = {
    -- Navigation
    { "<leader>bp",  "<cmd>BufferPrevious<CR>",                   desc = "Previous buffer" },
    { "<leader>bn",  "<cmd>BufferNext<CR>",                       desc = "Next buffer" },

    -- Move buffer
    { "<leader>bmP", "<cmd>BufferMovePrevious<CR>",               desc = "Move buffer left" },
    { "<leader>bmN", "<cmd>BufferMoveNext<CR>",                   desc = "Move buffer right" },

    -- Goto buffer
    { "<leader>bg1", "<cmd>BufferGoto 1<CR>",                     desc = "Go to buffer 1" },
    { "<leader>bg2", "<cmd>BufferGoto 2<CR>",                     desc = "Go to buffer 2" },
    { "<leader>bg3", "<cmd>BufferGoto 3<CR>",                     desc = "Go to buffer 3" },
    { "<leader>bg4", "<cmd>BufferGoto 4<CR>",                     desc = "Go to buffer 4" },
    { "<leader>bg5", "<cmd>BufferGoto 5<CR>",                     desc = "Go to buffer 5" },
    { "<leader>bg6", "<cmd>BufferGoto 6<CR>",                     desc = "Go to buffer 6" },
    { "<leader>bg7", "<cmd>BufferGoto 7<CR>",                     desc = "Go to buffer 7" },
    { "<leader>bg8", "<cmd>BufferGoto 8<CR>",                     desc = "Go to buffer 8" },
    { "<leader>bg9", "<cmd>BufferGoto 9<CR>",                     desc = "Go to buffer 9" },
    { "<leader>bg0", "<cmd>BufferLast<CR>",                       desc = "Go to last buffer" },

    -- Pin / Unpin
    { "<leader>bb",  "<cmd>BufferPin<CR>",                        desc = "Pin/unpin buffer" },

    -- Close
    { "<leader>bq",  "<cmd>BufferClose<CR>",                      desc = "Close buffer" },
    { "<leader>bca", "<cmd>BufferCloseAllButCurrent<CR>",         desc = "Close all but current" },
    { "<leader>bcp", "<cmd>BufferCloseAllButPinned<CR>",          desc = "Close all but pinned" },
    { "<leader>bco", "<cmd>BufferCloseAllButCurrentOrPinned<CR>", desc = "Close all but current or pinned" },
    { "<leader>bcl", "<cmd>BufferCloseBuffersLeft<CR>",           desc = "Close buffers to the left" },
    { "<leader>bcr", "<cmd>BufferCloseBuffersRight<CR>",          desc = "Close buffers to the right" },

    -- Picking
    { "<leader>bf",  "<cmd>BufferPick<CR>",                       desc = "Pick buffer" },
    { "<leader>bd",  "<cmd>BufferPickDelete<CR>",                 desc = "Pick & delete buffer" },

    -- Sort
    { "<leader>bsb", "<cmd>BufferOrderByBufferNumber<CR>",        desc = "Sort by buffer number" },
    { "<leader>bsn", "<cmd>BufferOrderByName<CR>",                desc = "Sort by name" },
    { "<leader>bsd", "<cmd>BufferOrderByDirectory<CR>",           desc = "Sort by directory" },
    { "<leader>bsl", "<cmd>BufferOrderByLanguage<CR>",            desc = "Sort by language" },
    { "<leader>bsw", "<cmd>BufferOrderByWindowNumber<CR>",        desc = "Sort by window number" },
  },

  config = function()
    require("barbar").setup({
      icons = {
        button = false, -- hides close icon
      },
    })
  end,
}

return M
