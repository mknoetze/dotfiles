return {
    "theKnightsOfRohan/csvlens.nvim",
    dependencies = {
        "akinsho/toggleterm.nvim"
    },
    config = true,
    opts = {
        vim.keymap.set("n", "<leader>dc", ":Csvlens<CR>", {desc="CSV Lens", noremap=true, silent=true})
    },
}
