-- Pull in the wezterm API
local f = require("utils/font")
-- local b = require("utils/background")

-- Config starts here
local config = {
	-- background = {
	-- 	b.get_background(),
	-- },

	color_scheme = "Catppuccin Mocha",

	font_size = 14,

	line_height = 1.1,

	font = f.get_font({ "JetbrainsMono Nerd Font" }),

	window_padding = {
		left = 30,
		right = 30,
		top = 20,
		bottom = 10,
	},

	-- general options
	adjust_window_size_when_changing_font_size = false,
	debug_key_events = false,
	enable_tab_bar = false,
	native_macos_fullscreen_mode = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
}

return config
