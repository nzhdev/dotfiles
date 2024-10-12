local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	color_scheme = 'Catppuccin Macchiato',
	font = wezterm.font("JetBrains Mono"),
	font_size = 12.5,
}

return config
