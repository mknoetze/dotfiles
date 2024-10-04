return -- LazyGit integration with Telescope
{
	"kdheepak/lazygit.nvim",
	keys = {
		{
			"<leader>gg",
			":LazyGit<Return>",
			silent = true,
			noremap = true,
			desc="LazyGit",
		},
	},
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}
