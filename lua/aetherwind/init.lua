local config = require('aetherwind.config')

local M = {}

---Load the Aetherwind colorscheme
---@param opts AetherwindOptions
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

---Set up the Aetherwind colorscheme
---@param opts AetherwindOptions
M.setup = function (opts)
	config.extend(opts)
end

return M
