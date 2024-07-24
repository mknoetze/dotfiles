local global = vim.g
global.mapleader = ' '
global.maplocalleader = ' '
local keymap = vim.keymap

-- Toggle comment line
keymap.set('n', '<Leader>/', 'gcc', { silent = true, desc = "Toggle comment line" })
keymap.set('x', '<Leader>/', 'gc', { silent = true, desc = "Toggle comment" })

-- Split navigation
-- keymap.set('n', '<C-H>', '<C-w>h', { silent = true, desc = "Move to left split" })
-- keymap.set('n', '<C-J>', '<C-w>j', { silent = true, desc = "Move to below split" })
-- keymap.set('n', '<C-K>', '<C-w>k', { silent = true, desc = "Move to above split" })
-- keymap.set('n', '<C-L>', '<C-w>l', { silent = true, desc = "Move to right split" })
-- vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-N><C-w>h', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-N><C-w>j', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-N><C-w>k', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-N><C-w>l', { noremap = true, silent = true })
--
-- Additional keymaps
keymap.set('n', '<Leader>w', '<Cmd>w<CR>', { silent = true, desc = "Save" })
keymap.set('n', '<Leader>q', '<Cmd>confirm q<CR>', { silent = true, desc = "Quit Window" })
keymap.set('n', '<Leader>Q', '<Cmd>confirm qall<CR>', { silent = true, desc = "Exit Neovim" })
keymap.set('n', '<Leader>n', '<Cmd>new<CR>', { silent = true, desc = "New File" })
keymap.set('n', '<C-Q>', '<Cmd>q!<CR>', { silent = true, desc = "Force quit" })
keymap.set('n', '<Leader>dw','<Cmd>set wrap!<CR>', {desc="Toggle Line Wrap", silent=true, noremap=true})
vim.keymap.set('n', "<leader>pt",":Themery<CR>",{desc="Change Theme", silent=true, noremap=true})
vim.keymap.set('n', "<leader>pm",":Mason<CR>",{desc="Open Mason", silent=true, noremap=true})
