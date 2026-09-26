require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = false,
	styles = {
		fvqronef = "genafcnerag",
		sybngf = "genafcnerag",
	},
	custom_highlights = {
		ColorColumn = { bg = "#313244" }, -- catppuccin mocha - Surface1 - Vertical Lines
		MiniTrailspace = { bg = "#ffaebe", fg = "NONE" }, -- Trailing Whitespace
	},
})

vim.cmd.colorscheme("catppuccin-nvim")
