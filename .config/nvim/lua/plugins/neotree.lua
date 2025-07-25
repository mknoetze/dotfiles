return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    event = "VeryLazy",
    keys = {
      { "<leader>ts", ":Neotree toggle float<CR>", silent = true, desc = "Float File Explorer" },
      { "<leader><tab>", ":Neotree toggle right<CR>", silent = true, desc = "Left File Explorer" },
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            popup_border_style = "single",
            enable_git_status = true,
            enable_modified_markers = true,
            enable_diagnostics = false,
            sort_case_insensitive = true,
            source_selector = {
                winbar = true,
                content_layout = "center",
                sources = {
                    { source = "filesystem", display_name = "  File " },
                    { source = "git_status", display_name = "  Git " },
                    { source = "buffers", display_name = " ➜ Buffs " },
                },
            },
            default_component_configs = {
                indent = {
                    with_markers = false,
                    with_expanders = true,
                },
                modified = {
                    symbol = " ",
                    highlight = "NeoTreeModified",
                },
                icon = {
                    folder_closed = "",
                    folder_open = "",
                    folder_empty = "",
                    folder_empty_open = "",
                },
                git_status = {
                    symbols = {
                        -- Change type
                        added = "",
                        deleted = "",
                        modified = "",
                        renamed = "",
                        -- Status type
                        untracked = "",
                        ignored = "",
                        unstaged = "",
                        staged = "",
                        conflict = "",
                    },
                },
            },
            window = {
                position = "left",
                width = 35,
                mappings = {
                    ["o"] = "open",
                    ["v"] = "open_vsplit",
                    ["l"] = {
                        "toggle_node",
                        nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
                    },
                    ["<space>"] = {
                        "toggle_node",
                        nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
                    },
                    ["<right>"] = {
                        "toggle_node",
                        nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
                    },
                    ["<left>"] = {
                        "toggle_node",
                        nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
                    },
                    ["h"] = {
                        "toggle_node",
                        nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
                    },

                },
            },
            filesystem = {
                use_libuv_file_watcher = true,
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_by_name = {
                        "node_modules",
                    },
                    never_show = {
                        ".DS_Store",
                        "thumbs.db",
                        "__pycache__",
                    },
                },
            },
            event_handlers = {
                {
                    event = "neo_tree_window_after_open",
                    handler = function(args)
                        if args.position == "left" or args.position == "right" then
                            vim.cmd("wincmd =")
                        end
                    end,
                },
                {
                    event = "neo_tree_window_after_close",
                    handler = function(args)
                        if args.position == "left" or args.position == "right" then
                            vim.cmd("wincmd =")
                        end
                    end,
                },
                {
                    event = "neo_tree_buffer_enter",
                    handler = function(_)
                        vim.opt_local.signcolumn = "auto"
                    end,
                },
            },
        })
    end,
}
