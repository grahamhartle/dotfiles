local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	window_decorations = "RESIZE",
  window_close_confirmation = "NeverPrompt",
  enable_tab_bar = false,
	color_scheme = "Catppuccin Mocha",
	font_size = 14,
	font = wezterm.font("JetBrains Mono", { weight = "Regular", italic = false }),
	line_height = 1,
	window_background_opacity = 0.9,
	scrollback_lines = 3500,
}
return config
