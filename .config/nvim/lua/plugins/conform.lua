require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		go = { "gofumpt" },
		json = { "jq" },
		yaml = { "prettier" },
		toml = { "taplo" },
		sh = { "shfmt" },
	},
})
