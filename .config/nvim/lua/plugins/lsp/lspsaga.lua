return {
  "nvimdev/lspsaga.nvim",
  enabled = true,
  lazy = true,
  event = "LspAttach",
  config = function()
    vim.keymap.set("n", "<leader>lt", "<cmd>Lspsaga outline<cr>", { desc = "Lspsaga | Code Outline", silent = true })
    vim.keymap.set("n", "<leader>lp", "<cmd>Lspsaga peek_definition<cr>", { desc = "Lspsaga | Peek Definition", silent = true })
    require("lspsaga").setup({
      ui = {
        theme = "round",
        border = "rounded",
        winblend = 0,
        expand = "",
        collaspe = "",
        preview = " ",
        code_action = "󱧣 ",
        diagnostic = " ",
        hover = " ",
        kind = {},
      },
      lightbulb = {
        enable = false,
        enable_in_insert = true,
        sign = true,
        sign_priority = 40,
        virtual_text = true,
      },
      symbol_in_winbar = {
        enable = false,
        separator = "  ",
        hide_keyword = true,
        show_file = true,
        folder_level = 0,
      },
    })
  end,
}
