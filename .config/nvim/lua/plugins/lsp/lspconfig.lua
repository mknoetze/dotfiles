return {
  {
    "neovim/nvim-lspconfig",
    opts = {},
    config = function()
      local keymap = vim.keymap
      local lspconfig = require("lspconfig")
      local uv = vim.loop

      local root_dir = lspconfig.util.root_pattern(
        '.clangd',
        '.clang-tidy',
        '.clang-format',
        '.git'
      )

      local function path(p)
        local root = root_dir(vim.fn.getcwd()) or vim.fn.getcwd()
        return root .. "/" .. p
      end

      local fallbackFlags = {
        "-std=c++17",
        "-I" .. path(""),
        "-I" .. path("src"),
        "-I" .. path("tests/mocks"),
      }

      local root = root_dir(vim.fn.getcwd()) or vim.fn.getcwd()
      local clangd_config_path = root .. "/.clangd"

      local clangd_exists = uv.fs_stat(clangd_config_path) ~= nil

      local clangd_setup_opts = {
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
        root_dir = function(fname)
          return lspconfig.util.root_pattern(
            '.clangd',
            '.clang-tidy',
            '.clang-format',
            '.git'
          )(fname) or vim.fn.getcwd()
        end,
        single_file_support = false,
      }

      if not clangd_exists then
        -- Only add init_options if no .clangd file exists
        clangd_setup_opts.init_options = {
          fallbackFlags = fallbackFlags,
          clangdFileStatus = true,
          clangdSemanticHighlighting = true,
        }
      end

      lspconfig.clangd.setup(clangd_setup_opts)

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
    end,
  },

  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mason-org/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "basedpyright",
        "ruff",
        "clangd",
        "bashls",
        "cmake",
        "dockerls",
        "gitlab_ci_ls",
        "julials",
        "lua_ls",
        "systemd_ls",
        "yamlls",
        "jsonls",
      },
      -- This disables Mason's automatic enabling of clangd so your custom config is used
      automatic_installation = true,
      automatic_setup = true,
      automatic_enable = { exclude = { "clangd" } },
    },
  },
}
