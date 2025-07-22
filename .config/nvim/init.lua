require("config.keymaps")
require("config.options")
require("config.lazy")
vim.cmd([[autocmd FileType yaml setlocal indentexpr=]])
vim.cmd([[autocmd FileType yml setlocal indentexpr=]])
vim.opt.guicursor = {
  'n-v-c:block-Cursor',
  'i:ver25-Cursor',
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "qml",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

-- Define the AdjustCursor function
_G.AdjustCursor = function()
  local col = vim.fn.col('.')
  if col > 1 then
    vim.cmd('normal! l')
  end
end

-- Set up autocommand to adjust cursor position on InsertLeave
vim.cmd([[
augroup cursor_fix
  autocmd!
  autocmd InsertLeave * lua AdjustCursor()
augroup END
]])

-- Register extensions to filetypes for specific lsp's
local function set_filetype(pattern, filetype)
  vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = pattern,
    command = "set filetype=" .. filetype,
  })
end

set_filetype({ "docker-compose.yaml" }, "yaml.docker-compose")
set_filetype({ "*.make" }, "makefile")


-- Command to toggle inline diagnostics
vim.api.nvim_create_user_command(
  'DiagnosticsToggleVirtualText',
  function()
    local current_value = vim.diagnostic.config().virtual_text
    if current_value then
      vim.diagnostic.config({ virtual_text = false })
    else
      vim.diagnostic.config({ virtual_text = true })
    end
  end,
  {}
)
-- Command to toggle diagnostics
vim.api.nvim_create_user_command(
  'DiagnosticsToggle',
  function()
    local current_value = vim.diagnostic.is_disabled()
    if current_value then
      vim.diagnostic.enable()
    else
      vim.diagnostic.disable()
    end
  end,
  {}
)

function SetRandomTheme()
  local themes = vim.fn.getcompletion('', 'color')
  math.randomseed(os.time())
  local random_theme = themes[math.random(etthemes)]
  vim.cmd("colorscheme " .. random_theme)
  print("Theme set to: " .. random_theme)
end

-- Assign the function to <space>pr
vim.api.nvim_set_keymap('n', '<space>pr', ':lua SetRandomTheme()<CR>',
  { noremap = true, silent = true, desc = "Set Random Theme" })

vim.api.nvim_set_keymap('n', '<Leader>li', ':lua vim.cmd("DiagnosticsToggleVirtualText")<CR>',
  { noremap = true, silent = true, desc = "Toggle Inline Comments" })

vim.api.nvim_set_keymap('n', '<Leader>lI', ':lua vim.cmd("DiagnosticsToggle")<CR>',
  { noremap = true, silent = true, desc = "Toggle Diagnostics" })
