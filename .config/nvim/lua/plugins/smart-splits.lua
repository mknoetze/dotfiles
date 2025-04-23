
return {
    "mrjones2014/smart-splits.nvim",
    config = function()
        require('smart-splits').setup({
            -- Ignored filetypes (only while resizing)
            ignored_filetypes = {
                'nofile',
                'quickfix',
                'prompt'
            },
            -- Ignored buffer types (only while resizing)
            ignored_buftypes = { 'NvimTree' }
        })

        -- Keybindings for smart-splits
        vim.api.nvim_set_keymap('n', '<C-h>', ":lua require('smart-splits').move_cursor_left()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-j>', ":lua require('smart-splits').move_cursor_down()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-k>', ":lua require('smart-splits').move_cursor_up()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-l>', ":lua require('smart-splits').move_cursor_right()<CR>", { noremap = true, silent = true })

        vim.api.nvim_set_keymap('n', '<C-Left>', ":lua require('smart-splits').resize_left()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-Down>', ":lua require('smart-splits').resize_down()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-Up>', ":lua require('smart-splits').resize_up()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-Right>', ":lua require('smart-splits').resize_right()<CR>", { noremap = true, silent = true })

        -- Keybindings for smart-splits in terminal mode
        vim.api.nvim_set_keymap('t', '<C-h>', "<C-\\><C-N><C-w>h", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<C-j>', "<C-\\><C-N><C-w>j", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<C-k>', "<C-\\><C-N><C-w>k", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<C-l>', "<C-\\><C-N><C-w>l", { noremap = true, silent = true })

        vim.api.nvim_set_keymap('t', '<C-Left>', "<C-\\><C-N>:lua require('smart-splits').resize_left()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<C-Down>', "<C-\\><C-N>:lua require('smart-splits').resize_down()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<C-Up>', "<C-\\><C-N>:lua require('smart-splits').resize_up()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<C-Right>', "<C-\\><C-N>:lua require('smart-splits').resize_right()<CR>", { noremap = true, silent = true })
    end
}

