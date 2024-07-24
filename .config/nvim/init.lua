require('config.options')
require('config.keymaps')
require('config.lazy')
require('config.colorscheme')
-- vim.opt.guicursor = ''
-- vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20,o:hor50"
vim.cmd([[autocmd FileType yaml setlocal indentexpr=]])
vim.cmd([[autocmd FileType yml setlocal indentexpr=]])
vim.opt.guicursor = {
    'n-v-c:block-Cursor',
    'i:ver25-Cursor',
}

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
