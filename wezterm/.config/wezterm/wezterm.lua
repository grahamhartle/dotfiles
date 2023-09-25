local wezterm = require("wezterm")
local config = {
	color_scheme = "MaterialDesignColors",
	font_size = 13,
	font = wezterm.font("Hack Nerd Font", { weight = "Regular", italic = false }),
	line_height = 1,
	window_background_opacity = 0.80,
	initial_rows = 30,
	initial_cols = 90,
}
return config
