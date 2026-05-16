require("mason-tool-installer").setup({
	ensure_installed = {
		-- LSPs
		"clangd",
		"gopls",
		"lua-language-server",
		"bash-language-server",
		"yaml-language-server",
		"ansible-language-server",
		"json-lsp",
		"taplo",
		-- Linters/formatters
		-- "cppcheck", --needs to be installed manually
		"golangci-lint",
		"luacheck",
		"shellcheck",
		"biome",
		"yamllint",
		"ansible-lint",
	},
	run_on_start = true,
	auto_update = false,
})
