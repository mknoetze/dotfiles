return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  enabled = true,
  dependencies = { { "nvim-lua/plenary.nvim" } },
  config = function()
    local harpoon = require("harpoon")
    harpoon.setup()

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end, {desc="Harpoon add"})
    vim.keymap.set("n", "<leader>A", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end,{desc="Harpoon Menu"})

    vim.keymap.set("n", "<leader>1", function()
      harpoon:list():select(1)
    end, {desc="Harpoon 1"})
    vim.keymap.set("n", "<leader>2", function()
      harpoon:list():select(2)
    end, {desc="Harpoon 2"})
    vim.keymap.set("n", "<leader>3", function()
      harpoon:list():select(3)
    end, {desc="Harpoon 3"})
    vim.keymap.set("n", "<leader>4", function()
      harpoon:list():select(4)
    end, {desc="Harpoon 4"})
  end,
}
