
require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	}
})

--[[
lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
	virtual_text = {
		errors = { "italic" },
		hints = { "italic" },
		warnings = { "italic" },
		information = { "italic" },
		ok = { "italic" },
	},
	underlines = {
		errors = { "underline" },
		hints = { "underline" },
		warnings = { "underline" },
		information = { "underline" },
		ok = { "underline" },
	},
	inlay_hints = {
		background = true,
	},
},
]]--

vim.cmd.colorscheme "catppuccin-nvim"
