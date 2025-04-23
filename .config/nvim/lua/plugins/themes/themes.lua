-- https://www.trackawesomelist.com/rockerBOO/awesome-neovim/readme/#colorscheme
return {
  { 'briones-gabriel/darcula-solid.nvim' },
  { 'rktjmp/lush.nvim' },
  { 'kvrohit/substrata.nvim' },
  { 'lewpoly/sherbet.nvim' },
  { 'hardselius/warlock' },
  { 'ribru17/bamboo.nvim' },
  { 'eldritch-theme/eldritch.nvim' },
  {
    'sainnhe/edge',
  },
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      if vim.fn.has('termguicolors') == 1 then
        vim.o.termguicolors = true
      end
      vim.o.background = 'dark' -- You can change this to 'dark' if needed

      -- Configuration options with their default values:
      vim.g.everforest_background = 'medium'            -- 'soft', 'medium', 'hard'
      vim.g.everforest_enable_italic = 0                -- 0 = disable, 1 = enable
      vim.g.everforest_disable_italic_comment = 0       -- 0 = allow italic comments, 1 = disable
      vim.g.everforest_cursor =
      'orange'                                          -- 'auto', 'red', 'orange', 'yellow', 'green', 'aqua', 'blue', 'purple'
      vim.g.everforest_transparent_background = 0       -- 0 = disable, 1 = transparent, 2 = more transparency
      vim.g.everforest_dim_inactive_windows = 0         -- 0 = no dim, 1 = dim
      vim.g.everforest_sign_column_background = 'none'  -- 'none', 'grey'
      vim.g.everforest_spell_foreground = 'none'        -- 'none', 'colored'
      vim.g.everforest_ui_contrast = 'low'              -- 'low', 'high'
      vim.g.everforest_show_eob = 1                     -- 0 = hide, 1 = show end of buffer
      vim.g.everforest_float_style = 'bright'           -- 'bright', 'dim'
      vim.g.everforest_diagnostic_text_highlight = 0    -- 0 = disable, 1 = enable
      vim.g.everforest_diagnostic_line_highlight = 0    -- 0 = disable, 1 = enable
      vim.g.everforest_diagnostic_virtual_text = 'grey' -- 'grey', 'colored', 'highlighted'
      vim.g.everforest_current_word =
      'grey background'                                 -- 'grey background', 'high contrast background', 'bold', 'underline', 'italic'
      vim.g.everforest_inlay_hints_background = 'none'  -- 'none', 'dimmed'
      vim.g.everforest_disable_terminal_colors = 0      -- 0 = use terminal colors, 1 = disable terminal colors
      vim.g.everforest_lightline_disable_bold = 0       -- 0 = bold in lightline, 1 = disable bold
      vim.g.everforest_better_performance = 0           -- 0 = normal performance, 1 = faster performance
      -- vim.g.everforest_colors_override = {
      --   bg0 = { '#303030', '235' },                     -- Dark grey for the main background
      --   bg2 = { '#383838', '236' }                      -- Slightly lighter grey for other areas
      -- }
    end
  },
  { 'adisen99/apprentice.nvim',       requires = { "rktjmp/lush.nvim" } },
  { 'ajmwagar/vim-deus' },
  { 'caksoylar/vim-mysticaltutor' },
  { 'joshdick/onedark.vim' },
  { 'srcery-colors/srcery-vim' },
  { 'EdenEast/nightfox.nvim' },
  {'diegoulloao/neofusion.nvim'},
  {'olivercederborg/poimandres.nvim'},
  {'Mofiqul/adwaita.nvim'},
  {'ramojus/mellifluous.nvim'},
  {'phha/zenburn.nvim'},
  {'yonlu/omni.vim'},
  {'alexmozaidze/palenight.nvim'},
  {'dasupradyumna/midnight.nvim'},
  {'gbprod/nord.nvim'},
  {'mellow-theme/mellow.nvim'},
  {'chrsm/paramount-ng.nvim'},
  {'olimorris/onedarkpro.nvim'},
  {'kdheepak/monochrome.nvim'},
  {'nyoom-engineering/oxocarbon.nvim'},
  {'aktersnurra/no-clown-fiesta.nvim'},
  {'morhetz/gruvbox'},
  {'zenbones-theme/zenbones.nvim'},
  {'Domeee/mosel.nvim'},
  {'rjshkhr/shadow.nvim'}
}
