local set = vim.opt

set.number = true
set.backspace = '2'
set.showcmd = true
set.laststatus = 2
set.autowrite = true
set.autoread = true
set.cursorline = true
set.cursorlineopt = 'number'
set.relativenumber = true
set.wrap = false
set.ignorecase = true
set.smartcase = true
set.termguicolors = true
set.autoindent = true
set.smartindent = true
set.softtabstop = 2
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.shiftround = true
set.mousemoveevent = true
set.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard

