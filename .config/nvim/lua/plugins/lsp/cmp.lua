return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  build = "cargo build --release",
  dependencies = {
    -- pictograms
    "onsails/lspkind.nvim",
    -- snippets
    "L3MON4D3/LuaSnip",
  },
  opts = {
    -- use luasnip for the snippet
    snippets = { preset = "luasnip" },
    keymap = {
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      -- ["<C-e>"] = { "hide", "fallback" },
      ["<CR>"] = { "accept", "fallback" },

      ["<Tab>"] = {
        function(cmp)
          return cmp.select_next()
        end,
        "snippet_forward",
        "fallback",
      },
      ["<S-Tab>"] = {
        function(cmp)
          return cmp.select_prev()
        end,
        "snippet_backward",
        "fallback",
      },
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-up>"] = { "scroll_documentation_up", "fallback" },
      ["<C-down>"] = { "scroll_documentation_down", "fallback" },
    },
    matching = {
      disallow_fuzzy_matching = false,
      disallow_fullfuzzy_matching = true,
      disallow_partial_fuzzy_matching = true,
      disallow_partial_matching = false,
      disallow_prefix_unmatching = false,
      disallow_symbol_nonprefix_matching = false,
    },
    sources = {
      default = {
        "lsp",
        "snippets",
        "buffer",
        "path",
      },
      providers = {
      },
    },
    signature = {
      enabled = true,
      window = {
        show_documentation = true,
      },
    },
    cmdline = {
      -- disable completion on cmdline `:`
      enabled = false,
    },
    completion = {
      accept = { auto_brackets = { enabled = true } },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 250,
        treesitter_highlighting = true,
        window = { border = "rounded" },
      },
      list = {
        selection = {
          -- dont auto select completion
          preselect = false,
          -- dont insert completion before accept
          -- instead use "ghost text", see below
          auto_insert = false,
        },
      },
      ghost_text = {
        enabled = true,
      },

      menu = {
        -- use lspkind
        -- see https://cmp.saghen.dev/recipes.html#nvim-web-devicons-lspkind
        draw = {
          components = {
            kind_icon = {
              text = function(ctx)
                local icon = ctx.kind_icon
                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                  local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
                  if dev_icon then
                    icon = dev_icon
                  end
                else
                  icon = require("lspkind").symbolic(ctx.kind, {
                    mode = "symbol",
                  })
                end
                return icon .. ctx.icon_gap
              end,
              highlight = function(ctx)
                local hl = ctx.kind_hl
                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                  local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
                  if dev_icon then
                    hl = dev_hl
                  end
                end
                return hl
              end,
            },
          },
          label = {
            text = function(item)
              return item.label
            end,
            highlight = "CmpItemAbbr",
          },
          kind = {
            text = function(item)
              return item.kind
            end,
            highlight = "CmpItemKind",
          },
        },
      },
    },
  },
}
