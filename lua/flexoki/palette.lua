local config = require('flexoki.config')

local M = {}

local variants = {
	dark = {
		_name            = 'dark',
		fg               = '#CECDC3',
		bg               = '#100F0F',
		alt_fg           = '#878580',
		alt_bg           = '#1C1B1A',
		dark             = '#100F0F',
		accent           = '#575653',
		popup_back       = '#282726',
		search_orange    = '#BC5215',
		line             = '#282726',
		search_blue      = '#24837B',
		white            = '#CECDC3',
		gray             = '#878580',
		dark_gray        = '#575653',
		context          = '#878580',
		light_gray       = '#878580',
		tree_gray        = '#282726',
		blue             = '#205EA6',
		vivid_blue       = '#4385BE',
		dark_blue        = '#205EA6',
		folder_blue      = '#205EA6',
		light_blue       = '#4385BE',
		green            = '#66800B',
		cyan             = '#24837B',
		light_green      = '#BC5215',
		red              = '#AF3029',
		orange           = '#BC5215',
		light_red        = '#AF3029',
		yellow           = '#AD8301',
		purple           = '#5E409D',
		magenta          = '#A02F6F',
		cursor_fg        = '#575653',
		cursor_bg        = '#878580',
		sign_add         = '#66800B',
		sign_change      = '#205EA6',
		sign_delete      = '#AF3029',
		tree_sign_add    = '#66800B',
		tree_sign_change = '#AD8301',
		error_red        = '#AF3029',
		warning_orange   = '#BC5215',
		info_yellow      = '#AD8301',
		hint_blue        = '#205EA6',
		success_green    = '#66800B',
		purple_test      = '#5E409D',
		cyan_test        = '#24837B',
		ui_blue          = '#205EA6',
		ui2_blue         = '#205EA6',
		ui3_blue         = '#205EA6',
		ui4_blue         = '#205EA6',
		ui_orange        = '#BC5215',
		ui_purple        = '#5E409D',
	},
	light = {
		_name            = 'light',
		fg               = '#100F0F',
		bg               = '#FFFCF0',
		alt_fg           = '#100F0F',
		alt_bg           = '#FFFCF0',
		dark             = '#100F0F',
		accent           = '#575653',
		popup_back       = '#282726',
		search_orange    = '#DA702C',
		line             = '#282726',
		search_blue      = '#3AA99F',
		white            = '#CECDC3',
		gray             = '#E6E4D9',
		dark_gray        = '#B7B5AC',
		context          = '#878580',
		light_gray       = '#878580',
		tree_gray        = '#FFFCF0',
		blue             = '#4385BE',
		vivid_blue       = '#4385BE',
		dark_blue        = '#4385BE',
		folder_blue      = '#4385BE',
		light_blue       = '#4385BE',
		green            = '#879A39',
		cyan             = '#3AA99F',
		light_green      = '#DA702C',
		red              = '#D14D41',
		orange           = '#DA702C',
		light_red        = '#D14D41',
		yellow           = '#D0A215',
		purple           = '#8B7EC8',
		magenta          = '#CE5D97',
		cursor_fg        = '#100F0F',
		cursor_bg        = '#F2F0E5',
		sign_add         = '#879A39',
		sign_change      = '#4385BE',
		sign_delete      = '#D14D41',
		tree_sign_add    = '#879A39',
		tree_sign_change = '#D0A215',
		error_red        = '#D14D41',
		warning_orange   = '#DA702C',
		info_yellow      = '#D0A215',
		hint_blue        = '#4385BE',
		success_green    = '#879A39',
		purple_test      = '#8B7EC8',
		cyan_test        = '#3AA99F',
		ui_blue          = '#4385BE',
		ui2_blue         = '#4385BE',
		ui3_blue         = '#4385BE',
		ui4_blue         = '#4385BE',
		ui_orange        = '#DA702C',
		ui_purple        = '#8B7EC8',
	}
}

M.palette = function ()
	print(config.options.variant)

	if config.options.variant == 'auto' then
		if vim.o.background == 'dark' then
			return variants[config.options.dark_variant]
		else
			return variants[config.options.light_variant]
		end
	else
		return variants[config.options.variant]
	end
end

return M
