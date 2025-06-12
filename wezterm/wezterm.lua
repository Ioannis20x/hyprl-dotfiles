local wezterm = require("wezterm")
local constants = require("constants")
local commands = require("commands")
local config = wezterm.config_builder()

--font settings
config.font_size = 15
config.line_height = 1.2
config.font = wezterm.font("JetBrainsMono Nerd Font")

--colors
config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
}

--Appereance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.window_background_image = constants.bg_image

--miscellanous settings
config.max_fps = 120
config.prefer_egl = true

--custom commands
wezterm.on("augment-command-palette", function()
	return commands
end)
return config
