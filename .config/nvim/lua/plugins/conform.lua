require("conform").setup({
	-- format_on_save = {
	-- 	lsp_fallback = true,
	-- },
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
		-- c = { "clang_format" }, --uses spaces instead of tabs
		-- cpp = { "clang_format" }, --uses spaces instead of tabs
		go = { "gofumpt" },
		json = { "jq" },
		yaml = { "prettier" },
		toml = { "taplo" },
		sh = { "shfmt" },
	},
})
