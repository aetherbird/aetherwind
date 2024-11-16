local config = require('aetherwind.config')

local M = {}

local base_colors = {
	['aetherwind-black']       = '#080110',
	['aetherwind-paper']       = '#FFFCF0',

	['aetherwind-950']         = '#4B4A6A',
	['aetherwind-900']         = '#585776',
	['aetherwind-850']         = '#646381',
	['aetherwind-800']         = '#706E9C',
	['aetherwind-700']         = '#878693',
	['aetherwind-600']         = '#9F9EB9',
	['aetherwind-500']         = '#A7A5B0',
	['aetherwind-300']         = '#D7D5DC',
	['aetherwind-200']         = '#FDFAFD',
	['aetherwind-201']         = '#EFEEEF',
	['aetherwind-150']         = '#F9FAFB',
	['aetherwind-100']         = '#FEFEFE',
	['aetherwind-50']          = '#FFFFFF',

	['aetherwind-red-600']     = '#AF3029',
	['aetherwind-red-400']     = '#D14D41',

	['aetherwind-orange-600']  = '#CC5235',
	['aetherwind-orange-400']  = '#EA604C',

	['aetherwind-yellow-900']  = '#4D3A0B',
	['aetherwind-yellow-600']  = '#AD8301',
	['aetherwind-yellow-400']  = '#D0A215',
	['aetherwind-yellow-100']  = '#FCEEB8',

	['aetherwind-green-600']   = '#66800B',
	['aetherwind-green-400']   = '#879A39',

	['aetherwind-cyan-950']    = '#445655',
	['aetherwind-cyan-600']    = '#54B3AB',
	['aetherwind-cyan-400']    = '#6AD9BF',
	['aetherwind-cyan-50']     = '#FBF6F8',

	['aetherwind-blue-600']    = '#205EA6',
	['aetherwind-blue-400']    = '#4385BE',

	['aetherwind-purple-600']  = '#5E409D',
	['aetherwind-purple-400']  = '#8B7EC8',

	['aetherwind-magenta-600'] = '#A02F6F',
	['aetherwind-magenta-400'] = '#CE5D97',
}

local variants = {
	dark = {
		_name      = 'dark',
		background = 'dark',
		['bg']     = base_colors['aetherwind-black'],
		['bg-2']   = base_colors['aetherwind-950'],
		['ui']     = base_colors['aetherwind-900'],
		['ui-2']   = base_colors['aetherwind-850'],
		['ui-3']   = base_colors['aetherwind-800'],
		['tx-3']   = base_colors['aetherwind-700'],
		['tx-2']   = base_colors['aetherwind-500'],
		['tx']     = base_colors['aetherwind-200'],
		['re']     = base_colors['aetherwind-red-400'],
		['re-2']   = base_colors['aetherwind-red-600'],
		['or']     = base_colors['aetherwind-orange-400'],
		['or-2']   = base_colors['aetherwind-orange-600'],
		['ye']     = base_colors['aetherwind-yellow-400'],
		['ye-2']   = base_colors['aetherwind-yellow-600'],
		['gr']     = base_colors['aetherwind-green-400'],
		['gr-2']   = base_colors['aetherwind-green-600'],
		['cy']     = base_colors['aetherwind-cyan-400'],
		['cy-2']   = base_colors['aetherwind-cyan-600'],
		['bl']     = base_colors['aetherwind-blue-400'],
		['bl-2']   = base_colors['aetherwind-blue-600'],
		['pu']     = base_colors['aetherwind-purple-400'],
		['pu-2']   = base_colors['aetherwind-purple-600'],
		['ma']     = base_colors['aetherwind-magenta-400'],
		['ma-2']   = base_colors['aetherwind-magenta-600'],
	},
	light = {
		_name      = 'light',
		background = 'light',
		['bg']     = base_colors['aetherwind-paper'],
		['bg-2']   = base_colors['aetherwind-50'],
		['ui']     = base_colors['aetherwind-100'],
		['ui-2']   = base_colors['aetherwind-150'],
		['ui-3']   = base_colors['aetherwind-200'],
		['tx-3']   = base_colors['aetherwind-300'],
		['tx-2']   = base_colors['aetherwind-600'],
		['tx']     = base_colors['aetherwind-black'],
		['re']     = base_colors['aetherwind-red-600'],
		['re-2']   = base_colors['aetherwind-red-400'],
		['or']     = base_colors['aetherwind-orange-600'],
		['or-2']   = base_colors['aetherwind-orange-400'],
		['ye']     = base_colors['aetherwind-yellow-600'],
		['ye-2']   = base_colors['aetherwind-yellow-400'],
		['gr']     = base_colors['aetherwind-green-600'],
		['gr-2']   = base_colors['aetherwind-green-400'],
		['cy']     = base_colors['aetherwind-cyan-600'],
		['cy-2']   = base_colors['aetherwind-cyan-400'],
		['bl']     = base_colors['aetherwind-blue-600'],
		['bl-2']   = base_colors['aetherwind-blue-400'],
		['pu']     = base_colors['aetherwind-purple-600'],
		['pu-2']   = base_colors['aetherwind-purple-400'],
		['ma']     = base_colors['aetherwind-magenta-600'],
		['ma-2']   = base_colors['aetherwind-magenta-400'],
	}
}

M.palette = function ()
	local variant = {}

	if config.options.variant == 'auto' then
		if vim.o.background == 'dark' then
			variant = variants[config.options.dark_variant]
		else
			variant = variants[config.options.light_variant]
		end
	else
		variant = variants[config.options.variant]
		vim.o.background = variant.background
	end

	return variant
end

return M
