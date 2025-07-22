local global = vim.g
global.mapleader = ' '
global.maplocalleader = ' '
local keymap = vim.keymap

keymap.set('n', '<Leader>w', '<Cmd>w<CR>', { silent = true, desc = "Save" })
keymap.set('n', '<Leader>q', '<Cmd>confirm q<CR>', { silent = true, desc = "Quit Window" })
keymap.set('n', '<Leader>Q', '<Cmd>confirm qall<CR>', { silent = true, desc = "Exit Neovim" })
keymap.set('n', '<C-Q>', '<Cmd>q!<CR>', { silent = true, desc = "Force quit" })
keymap.set('n', '<Leader>dw', '<Cmd>set wrap!<CR>', { desc = "Toggle Line Wrap", silent = true, noremap = true })
vim.keymap.set('n', "<leader>pt", ":Huez<CR>", { desc = "Change Theme", silent = true, noremap = true })
vim.keymap.set('n', "<leader>C", ":noh<CR>", { desc = "Clear Search Highlights", silent = true, noremap = true })
vim.keymap.set('n', "<leader>fa", "ggVG", { desc = "Select All Text", silent = true, noremap = true })
vim.keymap.set("v", "<", "<gv", { desc = "(V) Indent to left" })
vim.keymap.set("v", ">", ">gv", { desc = "(V) Indent to right" })
vim.keymap.set("v", "<leader>r", '"hy:%s/<C-r>h//g<left><left>') -- Replace all instances of highlighted words
vim.keymap.set("v", "<J>", ":move '>+1<CR>gv=gv")
vim.keymap.set("v", "<K>", ":move '<-2<CR>gv=gv")

-- Jump Navigation under <leader>j
vim.keymap.set('n', '<leader>ji', '<C-i>', { desc = 'Jump Forward', silent = true, noremap = true })
vim.keymap.set('n', '<leader>jo', '<C-o>', { desc = 'Jump Backward', silent = true, noremap = true })
vim.keymap.set('n', '<leader>jt', '<C-t>', { desc = 'Jump to Older Tag', silent = true, noremap = true })
vim.keymap.set('n', '<leader>jb', '<C-^>', { desc = 'Go to Last Buffer', silent = true, noremap = true })

