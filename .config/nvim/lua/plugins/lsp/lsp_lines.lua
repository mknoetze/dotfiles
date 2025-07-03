return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = "BufReadPost",
  enabled = true,
  config = function()
    require("lsp_lines").setup()
  end,
}
