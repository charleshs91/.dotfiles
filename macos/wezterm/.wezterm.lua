-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Font settings
config.font = wezterm.font("MesloLGM Nerd Font Mono")
config.font_size = 14
config.line_height = 1.2

-- Colors
config.color_scheme = "Kanagawa (Gogh)"

-- Appearance
config.enable_tab_bar = true
config.initial_cols = 144
config.initial_rows = 48
config.macos_window_background_blur = 10
config.window_background_opacity = 0.95
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	top = 0,
	left = 0,
	right = 0,
	bottom = 0,
}

-- Misc. settings
config.max_fps = 120
config.prefer_egl = true

-- Customizing the key mapping
local act = wezterm.action
config.keys = {
	{ mods = "OPT", key = "LeftArrow", action = act.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "OPT", key = "RightArrow", action = act.SendKey({ mods = "ALT", key = "f" }) },
	{ mods = "CMD", key = "LeftArrow", action = act.SendKey({ mods = "CTRL", key = "a" }) },
	{ mods = "CMD", key = "RightArrow", action = act.SendKey({ mods = "CTRL", key = "e" }) },
	{ mods = "CMD", key = "Backspace", action = act.SendKey({ mods = "CTRL", key = "u" }) },
	{ mods = "SUPER|CTRL|SHIFT", key = "[", action = act.MoveTabRelative(-1) },
	{ mods = "SUPER|CTRL|SHIFT", key = "]", action = act.MoveTabRelative(1) },
}

-- and finally, return the configuration to wezterm
return config
