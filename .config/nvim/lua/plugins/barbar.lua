local M = {
	"romgrk/barbar.nvim",
	keys = {
		{ "<C-,>", "<cmd>BufferPrevious<CR>" },
		{ "<C-e>", "<cmd>BufferNext<CR>" },
		{ "<C-q>", "<cmd>BufferClose<CR>" },
		{ "<C-f>", "<cmd>BufferPick<CR>" },
	},
	event = "BufEnter",
}

M.config = function()
	require("barbar").setup({
		icons = {
			button = false,
		},
	})
end

return M
