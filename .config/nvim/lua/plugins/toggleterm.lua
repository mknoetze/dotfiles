return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup {
            size = 20,
            open_mapping = [[<leader>tt]],
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = '1',
            start_in_insert = true,
            insert_mappings = false,
            persist_size = true,
            direction = 'float',
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = 'curved',
                winblend = 3,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                }
            },
        }

        local Terminal = require("toggleterm.terminal").Terminal

        local lazygit = Terminal:new({
            cmd = "lazygit",
            hidden = true,
            direction = "float",
            float_opts = {
                border = "double"
            }
        })

        function _lazygit_toggle()
            lazygit:toggle()
        end
        local mappings = {
            { "n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "ToggleTerm float" } },
            { "n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "ToggleTerm float" } },
            { "n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { desc = "ToggleTerm horizontal split" } },
            { "n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", { desc = "ToggleTerm vertical split" } },
            -- { "n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { desc = "ToggleTerm lazygit" } },
        }

        for _, map in ipairs(mappings) do
            vim.api.nvim_set_keymap(map[1], map[2], map[3], { noremap = true, silent = true, desc = map[4].desc })
        end
    end
}
