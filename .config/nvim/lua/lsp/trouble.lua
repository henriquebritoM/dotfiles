require("trouble").setup({
	modes = {
		-- Modo padrão: diagnósticos do workspace agrupados por arquivo
		diagnostics = {
			auto_close = true, -- fecha se ficar vazio
			auto_preview = true, -- preview do item sob o cursor
			focus = true,
		},
	},
})
