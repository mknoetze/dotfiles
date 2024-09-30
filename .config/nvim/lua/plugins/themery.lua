return {
    'zaldih/themery.nvim',
    cmd = 'Themery',
    config = function()
        local status_ok, themery = pcall(require, 'themery')
        if not status_ok then
            return
        end

        themery.setup({
            themes = {
                {
                    name = 'material',
                    colorscheme = 'material',
                    before = [[vim.g.material_style = 'darker']]
                },
                {
                    name = 'vscode',
                    colorscheme = 'vscode',
                },
                {
                    name = 'gruvbox-baby',
                    colorscheme = 'gruvbox-baby',
                },
                {
                    name = 'gruvbox-material',
                    colorscheme = 'gruvbox-material'
                },
                {
                    name = 'catppuccin',
                    colorscheme = 'catppuccin',
                },
                {
                    name = 'tokyonight',
                    colorscheme = 'tokyonight'
                },
                {
                    name = 'cyberdream',
                    colorscheme = 'cyberdream'
                },
                {
                    name = 'nord',
                    colorscheme = 'nord'
                },
                {
                    name = 'kanagawa-paper',
                    colorscheme = 'kanagawa-paper'
                },
                {
                    name = 'kanagawa-dragon',
                    colorscheme = 'kanagawa-dragon'
                },
                {
                    name = 'kanagawa-lotus',
                    colorscheme = 'kanagawa-lotus'
                },
                {
                    name = 'kanagawa-wave',
                    colorscheme = 'kanagawa-wave'
                },
                {
                    name = 'darcula-solid',
                    colorscheme = 'darcula-solid'
                },
                {
                    name = 'miasma',
                    colorscheme = 'miasma'
                },
                {
                    name = 'sherbet',
                    colorscheme = 'sherbet'
                },
                {
                    name = 'warlock',
                    colorscheme = 'warlock'
                },
                {
                    name = 'cold',
                    colorscheme = 'cold'
                },

            },
            themeConfigFile = '~/.config/nvim/lua/config/colorscheme.lua',
            livePreview = true,
        })

    end
}
