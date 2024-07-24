return {
  "rbong/vim-flog",
  lazy = false,
  cmd = { "Flog", "Flogsplit", "Floggit" },
  dependencies = {
    "tpope/vim-fugitive",
  },
  config = function()
        vim.keymap.set('n', '<leader>gf',':Flog<CR>',{desc="Git Flog", noremap=true, silent=true})
  end
}
