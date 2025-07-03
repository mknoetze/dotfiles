return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  enabled = true,
  dependencies = { { "nvim-lua/plenary.nvim" } },
  config = function()
    local harpoon = require("harpoon")
    harpoon.setup()

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():append()
    end, {desc="Harpoon add"})
    vim.keymap.set("n", "<leader>hA", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end,{desc="Harpoon Menu"})

    vim.keymap.set("n", "<leader>h1", function()
      harpoon:list():select(1)
    end, {desc="Harpoon 1"})
    vim.keymap.set("n", "<leader>h2", function()
      harpoon:list():select(2)
    end, {desc="Harpoon 2"})
    vim.keymap.set("n", "<leader>h3", function()
      harpoon:list():select(3)
    end, {desc="Harpoon 3"})
    vim.keymap.set("n", "<leader>h4", function()
      harpoon:list():select(4)
    end, {desc="Harpoon 4"})
    vim.keymap.set("n", "<leader>h5", function()
      harpoon:list():select(5)
    end, {desc="Harpoon 5"})
    vim.keymap.set("n", "<leader>h6", function()
      harpoon:list():select(6)
    end, {desc="Harpoon 6"})
    vim.keymap.set("n", "<leader>h7", function()
      harpoon:list():select(7)
    end, {desc="Harpoon 7"})
    vim.keymap.set("n", "<leader>h8", function()
      harpoon:list():select(8)
    end, {desc="Harpoon 8"})
  end,
}
