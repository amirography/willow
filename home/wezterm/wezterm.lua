local wezterm = require("wezterm")

return {
	-- color_scheme = "Rosé Pine Moon (base16)",
	color_scheme = "Catppuccin Macchiato",
	hide_tab_bar_if_only_one_tab = true,
	default_prog = { "fish" },
	font_size = 15.0,
	font = wezterm.font_with_fallback({
		{
		family = 'Pragmata Pro Mono',
		 weight = "Regular"
		},

		{ family = "ComicCodeLigatures Nerd Font" },

		{ family = "Comic Code Ligatures" }, -- {
		-- family = 'JetbrainsMono Nerd Font',
		-- },
		{ family = "Gintronic Nerd Font" },
		{ family = "Gintronic" },
	}),
	font_rules = {

		------------------------
		-- non-italics
		------------------------
		{
			italic = false,
			intensity = "Bold",
			font = wezterm.font_with_fallback({
				{ family = "Pragmata Pro Mono", weight = "Bold" },
				{ family = "Operator Mono", weight = "Bold" },
				{ family = "ComicCodeLigatures Nerd Font", weight = "Bold" },
				{ family = "Comic Code Ligatures", weight = "Bold" },
				{ family = "Gintronic Nerd Font", weight = "Black" },
			}),
		},
		{
			italic = false,
			intensity = "Normal",
			font = wezterm.font_with_fallback({
				{ family = "Pragmata Pro Mono", weight = "Regular" },
				{ family = "Operator Mono", weight = "Book" },
				{ family = "ComicCodeLigatures Nerd Font" },
				{ family = "Comic Code Ligatures" },
				{ family = "Gintronic Nerd Font" },
			}),
		},
		{
			italic = false,
			intensity = "Half",
			font = wezterm.font_with_fallback({
				{ family = "Pragmata Pro Mono", weight = "Regular" },
				{ family = "Operator Mono", weight = "Light" },
				{ family = "ComicCodeLigatures Nerd Font" },
				{ family = "ComicCodeLigatures Nerd Font", weight = "Light" },
				{ family = "Comic Code Ligatures", weight = "Light" },
				{ family = "Gintronic Nerd Font", weight = "Light" },
			}),
		}, ------------------------
		-- italics
		------------------------
		{
			italic = true,
			intensity = "Bold",
			font = wezterm.font_with_fallback({
				{
					family = "Pragmata Mono",
					weight = "Bold",
					style = "Italic",
				},
				{
					family = "Operator Mono",
					weight = "Bold",
					style = "Italic",
				},
				{
					family = "ComicCodeLigatures Nerd Font",
					weight = "Bold",
					style = "Italic",
				},
				{
					family = "Comic Code Ligatures",
					style = "Italic",
					weight = "Bold",
				},
				{
					family = "Gintronic Nerd Font",
					weight = "Black",
					style = "Italic",
				},
			}),
		},
		{
			italic = true,
			intensity = "Normal",
			font = wezterm.font_with_fallback({
				{ family = "Pragmata Pro Mono", style = "Italic", weight = "Regular" },
				{ family = "Operator Mono", style = "Italic", weight = "Book" },
				{ family = "ComicCodeLigatures Nerd Font", style = "Italic" },
				{ family = "Comic Code Ligatures", style = "Italic" },
				{ family = "Gintronic Nerd Font", style = "Italic" },
			}),
		},
		{
			italic = true,
			intensity = "Half",
			font = wezterm.font_with_fallback({
				{ family = "Pragmata Pro Mono", style = "Italic", weight = "Regular" },
				{ family = "Operator Mono", style = "Italic", weight = "Light" },
				{
					family = "ComicCodeLigatures Nerd Font",
					weight = "Light",
					style = "Italic",
				},
				{
					family = "Comic Code Ligatures",
					style = "Italic",
					weight = "Light",
				},
				{
					family = "Gintronic Nerd Font",
					weight = "Light",
					style = "Italic",
				},
			}),
		},

		-- {
		-- 	italic = false,
		-- 	intensity = 'Bold',
		-- 	font = wezterm.font_with_fallback {
		-- 		{
		-- 			family = 'Operator Mono Nerd Lig',
		-- 			weight = "Bold",
		-- 		},
		-- 		{
		-- 			family = 'ComicCodeLigatures Nerd Font',
		-- 			weight = "Bold",
		-- 		},
		-- 	},
		-- },
	},
	default_cursor_style = "BlinkingBlock",
	cursor_blink_rate = 800,
	cursor_blink_ease_in = "Ease",
	animation_fps = 60,
	force_reverse_video_cursor = true,
	exit_behavior = "CloseOnCleanExit",
	-- set_environment_variables = {
	-- TERMINFO_DIRS = '~/terminfo',
	-- WSLENV = 'TERMINFO_DIRS',
	-- },
	term = "wezterm",
	window_frame = {
		inactive_titlebar_bg = "#353535",
		active_titlebar_bg = "#2b2042",
		inactive_titlebar_fg = "#cccccc",
		active_titlebar_fg = "#ffffff",
		inactive_titlebar_border_bottom = "#2b2042",
		active_titlebar_border_bottom = "#2b2042",
		button_fg = "#cccccc",
		button_bg = "#2b2042",
		button_hover_fg = "#ffffff",
		button_hover_bg = "#3b3052",
	},
}
