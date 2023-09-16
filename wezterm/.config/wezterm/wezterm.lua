local wezterm = require("wezterm")
local config = {
	color_scheme = "MaterialDesignColors",
	font_size = 13,
	font = wezterm.font("Hack", { weight = "Regular", italic = false }),
	line_height = 1,
	window_background_opacity = 0.80,
}
return config
