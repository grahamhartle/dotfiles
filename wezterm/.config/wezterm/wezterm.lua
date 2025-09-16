local wezterm = require("wezterm")
local config = wezterm.config_builder()

local colors = {
  fg="#cdd6f4", bg="#1e1e2e", comment="#8b949e", red="#f38ba8",
  green="#a6e3a1", yellow="#f9e2af", blue="#89b4fa", magenta="#cba6f7",
  cyan="#74c7ec", selection="#415555", caret="#89b4fa", invisibles="#2f363d",
  cursor_bg = "#89b4fa", cursor_border = "#89b4fa",
}

config = {
	term = "wezterm",
	native_macos_fullscreen_mode = true,
	automatically_reload_config = true,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	enable_tab_bar = true,
  use_fancy_tab_bar = true,
	color_scheme = "Catppuccin Mocha",
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
  -- Color scheme
colors = {
  foreground=colors.fg, background=colors.bg,
  cursor_bg=colors.caret, cursor_fg=colors.bg, cursor_border=colors.caret,
  selection_fg=colors.fg, selection_bg=colors.selection,
  scrollbar_thumb=colors.invisibles, split=colors.invisibles,
  ansi = {colors.invisibles, colors.red, colors.green, colors.yellow,
          colors.blue, colors.magenta, colors.cyan, colors.fg},
  brights = {colors.comment, "#ff9790", "#6af28c", "#e3b341",
             "#79c0ff", "#d2a8ff", "#56d4dd", "#ffffff"},
  tab_bar = {
    background=colors.bg, inactive_tab_edge=colors.invisibles,
    active_tab={bg_color=colors.blue, fg_color=colors.bg, intensity="Bold"},
    inactive_tab={bg_color=colors.bg, fg_color=colors.comment},
    inactive_tab_hover={bg_color="#21262d", fg_color=colors.caret},
    new_tab={bg_color=colors.bg, fg_color=colors.caret, intensity="Bold"},
    new_tab_hover={bg_color="#21262d", fg_color=colors.red}
  },
},
}
return config
