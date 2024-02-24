local config = require('aetherwind.config')

local M = {}

---Load the Flexoki colorscheme
---@param opts FlexokiOptions
M.colorscheme = function(opts)
	config.extend(opts)

	vim.o.termguicolors = true

	if vim.g.colors_name then
		vim.cmd('hi clear')
		vim.cmd('syntax reset')
	end

	vim.g.colors_name = 'aetherwind'

	require('aetherwind.theme').set_highlights(opts)
end

---Set up the Flexoki colorscheme
---@param opts FlexokiOptions
M.setup = function (opts)
	config.extend(opts)
end

return M
