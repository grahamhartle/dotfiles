local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
  term = "wezterm",
  native_macos_fullscreen_mode = true,
	automatically_reload_config = true,
	window_decorations = "RESIZE",
  window_close_confirmation = "NeverPrompt",
  enable_tab_bar = false,
	color_scheme = "Catppuccin Mocha",
	font_size = 15,
	font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Regular", italic = false }),
	line_height = 0.9,
	window_background_opacity = 0.9,
	scrollback_lines = 3500,
  keys = {
    {
      key = 'f',
      mods = 'CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
    {
      key = '\'',
      mods = 'CTRL',
      action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
    }
  }
}
return config
