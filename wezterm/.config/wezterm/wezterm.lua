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
  colors = {
    cursor_bg = "#7aa2f7",
    cursor_border = "#7aa2f7",
  },
	font_size = 15,
	font = wezterm.font("FiraCode Nerd Font", { weight = "Regular", italic = false }),
	line_height = 1.0,
	window_background_opacity = 0.9,
	scrollback_lines = 3500,
	keys = {
    {
      key = "w",
      mods = "CTRL",
      action = wezterm.action.CloseCurrentPane {confirm = false},
    },
		{
			key = "v",
			mods = "CTRL",
			action = wezterm.action.SplitHorizontal {domain = 'CurrentPaneDomain'},
		},
		{
			key = "h",
			mods = "CTRL",
			action = wezterm.action.SplitVertical {domain = 'CurrentPaneDomain'},
		},
	},
}
return config
