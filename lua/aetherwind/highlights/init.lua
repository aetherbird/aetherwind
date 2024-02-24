local M = {}

M.groups = function ()

	-- This could be done dynamically by looking for all files, but this approach is fine and is safer
	local modules = {
		require('aetherwind.highlights.base').groups(),
		require('aetherwind.highlights.mini-nvim').groups(),
		require('aetherwind.highlights.flash-nvim').groups(),
		require('aetherwind.highlights.neotree').groups(),
		-- require('aetherwind.highlights.buffer').groups(),
		-- require('aetherwind.highlights.cmp').groups(),
		-- require('aetherwind.highlights.dashboard').groups(),
		-- require('aetherwind.highlights.git').groups(),
		-- require('aetherwind.highlights.indent-blank-line').groups(),
		-- require('aetherwind.highlights.lsp').groups(),
		-- require('aetherwind.highlights.markdown').groups(),
		-- require('aetherwind.highlights.nvimtree').groups(),
		-- require('aetherwind.highlights.telescope').groups(),
		-- require('aetherwind.highlights.treesitter').groups(),
		-- require('aetherwind.highlights.whichkey').groups(),
	}

	--- @type table<string, vim.api.keyset.highlight>
	local result = {}

	-- Just takes the list of "modules" from above and combines them all into a single table/array
	for _, groups in pairs(modules) do
		for highlightGroup, group in pairs(groups) do
			result[highlightGroup] = group
		end
	end

	return result
end

return M
