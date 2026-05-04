	
local options = {	

	smarttab = true, --indentation stuff
	cindent = true,
	-- autoindent = false,
	tabstop = 2, --visual width of tab
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})
