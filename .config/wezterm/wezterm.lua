local wezterm = require 'wezterm'
return {
  font = wezterm.font({family= 'RobotoMono Nerd Font'}),
  font_size = 9,
  color_scheme = "nord",
  window_decorations = "NONE",
  hide_tab_bar_if_only_one_tab = true,
  tiling_desktop_environments = {  'X11 i3'}
}
