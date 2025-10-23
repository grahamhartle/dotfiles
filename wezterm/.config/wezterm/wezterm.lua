local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
	term = "wezterm",
	native_macos_fullscreen_mode = true,
	automatically_reload_config = true,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	enable_tab_bar = true,
  use_fancy_tab_bar = true,
	color_scheme = "Catppuccin Mocha",
  font_size = 18,
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular", italic = false }),
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
