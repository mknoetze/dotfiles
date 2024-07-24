-- https://www.reddit.com/r/neovim/comments/195tpx5/is_there_a_way_to_put_descriptions_on_keymap/
return {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local status_ok, telescope = pcall(require, 'telescope')

        if not status_ok then
            return
        end

        telescope.setup()
        local builtin = require('telescope.builtin')

        local file_ignore_patterns = {
            ".git/", "venv", "__pycache__", "%.xlsx", "%.jpg", "%.jpeg", "%.png", "%.webp",
            "%.pdf", "%.odt", "%.ico", "%.pptx", "%.doc", "%.docx", "%.exe", "%.dll", "%.so",
            "%.dylib", "%.class", "%.pyc", "%.o", "%.a", "%.out", "%.bin", "%.jar", "%.dat",
            "%.mp3", "%.ogg", "%.flac", "%.mp4", "%.avi", "%.mkv", "%.mov", "%.zip", "%.tar",
            "%.gz", "%.bz2", "%.7z", "%.iso", "%.img", "%.dmg", "%.svg",
            "%.eot", "%.ttf", "%.otf", "%.bak", "%.tmp", "%.xd"
        }
        vim.keymap.set("n", "<leader>fw", function()
            builtin.live_grep({
                file_ignore_patterns = file_ignore_patterns,
            })
        end, { desc = "Find a word" })

        vim.keymap.set("n", "<leader>ff", function()
            builtin.find_files({
                file_ignore_patterns = file_ignore_patterns,
                hidden = true,
            })
        end, { desc = "Find Files" })
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Find Old Files" })
        vim.keymap.set('n', '<leader>fj', builtin.help_tags, { desc = "Help Tags" })
    end
}
