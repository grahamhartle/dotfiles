local wezterm = require("wezterm")
local config = {
	initial_cols = 220,
	initial_rows = 60,
	-- window_decorations = "NONE",
	color_scheme = "Catppuccin Mocha",
	font_size = 14,
	font = wezterm.font("JetBrains Mono", { weight = "Regular", italic = false }),
	line_height = 1,
	window_background_opacity = 0.9,
	scrollback_lines = 3500,
}
return config
