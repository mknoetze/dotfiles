return {
  "mknoetze/ScratchPad",
  lazy = true,
  cmd = { "ScratchPad" },
  keys = {
    { "<leader>e", "<cmd>ScratchPad<CR>", desc = "Toggle ScratchPad" },
  },
  init = function()
    -- Don't auto-open on startup
    vim.g.scratchpad_autostart = 0

    -- Enable daily scratchpad
    -- vim.g.scratchpad_daily = 1
    -- vim.g.scratchpad_daily_location = vim.fn.expand("~/.daily_scratchpad")
    -- vim.g.scratchpad_daily_format = "scratchpad-%Y-%m-%d.md"
    vim.g.scratchpad_autosize = 1
    vim.g.scratchpad_autofocus = 1
    vim.g.scratchpad_minwidth = 12
    vim.g.scratchpad_textwidth = 70
  end,
  config = function()
    -- Change text color: light gray on black (example)
    vim.cmd("hi ScratchPad ctermfg=160 ctermbg=NONE")  -- ctermfg=250 is light gray

    -- For GUI (like Neovide or GUIs), you can also add:
    vim.cmd("hi ScratchPad guifg=#d0d0d0 guibg=NONE")
  end,
}

