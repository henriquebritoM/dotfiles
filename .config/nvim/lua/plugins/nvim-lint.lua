-- make ansible and yaml be interpreted differently
vim.filetype.add({
	pattern = {
		[".*/playbooks/.*%.yml"] = "yaml.ansible",
		[".*/roles/.*%.yml"] = "yaml.ansible",
	},
})

require("lint").linters_by_ft = { --some of these need to be installed from package manager
	c = { "cppcheck" },
	cpp = { "cppcheck" },
	rust = { "clippy" },
	go = { "golangci-lint" },
	lua = { "luacheck" },
	sh = { "shellcheck" },
	json = { "biome" },
	yaml = { "yamllint" },
	toml = { "taplo" },
	["yaml.ansible"] = { "ansible-lint" },
}

-- lints on close, see autocmd
