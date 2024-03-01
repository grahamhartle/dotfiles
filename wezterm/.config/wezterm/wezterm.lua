local wezterm = require("wezterm")
local config = {
	color_scheme = "Catppuccin Frappe",
	font_size = 13,
	font = wezterm.font("Hack Nerd Font", { weight = "Regular", italic = false }),
	line_height = 1,
	window_background_opacity = 0.80,
}
return config
