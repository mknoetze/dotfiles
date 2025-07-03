return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim",                   opts = {} },
  },
  config = function()
    local lspconfig = require("lspconfig")

    local mason_lspconfig = require("mason-lspconfig")

    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap
    lspconfig.clangd.setup({
      on_attach = lsp_attach,
      capabilities = capabilities,
      cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders=true",
          "--fallback-style=llvm",
          "--header-insertion=never",
      },
      filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
      init_options = {
        fallbackFlags = { '-std=c++20' },
        clangdFileStatus = true,
        clangdSemanticHighlighting = true,
      },
      root_dir = lspconfig.util.root_pattern(
        '.clangd'
        , '.clang-tidy'
        , '.clang-format'
        , 'compile_commands.json'
        , 'compile_flags.txt'
        , 'configure.ac'
        , '.git'
      ),
      single_file_support = false,
    })
    vim.lsp.enable('qmlls')
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        opts.desc = "Show LSP references"
        keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) 

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) 

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) 

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, opts) 

        opts.desc = "Smart rename symbol"
        keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts) 

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>lD", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) 

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>ld", vim.diagnostic.open_float, opts) 

        opts.desc = "Switch .cpp/.h"
        keymap.set("n", "<leader>ls", "<cmd>ClangdSwitchSourceHeader<CR>", opts) 

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) 

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts) 

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts) 

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>lR", ":LspRestart<CR>", opts) 

        opts.desc = "Format Current Buffer"
        keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)
      end,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
  end,
}
