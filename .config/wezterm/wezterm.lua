local wezterm = require 'wezterm'
return {
  -- font = wezterm.font({family= 'RobotoMono Nerd Font'}),
  default_prog = { '/bin/zsh' },
  font = wezterm.font({ family = 'Hack Nerd Font' }),
  color_scheme_dirs = { '~/.config/wezterm/colors/' },
  color_scheme = "Forestbones_dark",
  line_height = 1.1,
  font_size = 9,
  use_dead_keys = false,
  scrollback_lines = 5000,
  window_decorations = "RESIZE",
  hide_tab_bar_if_only_one_tab = true,
  tiling_desktop_environments = { 'X11 i3' },
  adjust_window_size_when_changing_font_size = false,
  window_close_confirmation = 'NeverPrompt',
  term = "wezterm",
  harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
  max_fps = 120,
  webgpu_power_preference = "HighPerformance",
  mouse_bindings = {
    {
      event = { Up = { streak = 1, button = "Left" } },
      mods = "NONE",
      action = wezterm.action.Nop,
    },
  },
  window_padding = {
    left = 4,
    right = 4,
    top = 2,
    bottom = 2,
  },
  font_rules = {
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font({ family = "Hack Nerd Font", weight = "Regular" }),
    },
    {
      intensity = "Half",
      italic = false,
      font = wezterm.font({ family = "Hack Nerd Font", weight = "Regular" }),
    },
    {
      italic = true,
      font = wezterm.font({ family = "Hack Nerd Font", italic = false }),
    },
  },
}
