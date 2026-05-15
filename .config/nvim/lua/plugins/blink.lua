require("blink.cmp").setup({
	keymap = {
		["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
		["<CR>"] = { "accept", "fallback" },
		["<C-space>"] = { "show" },
	},

	signature = { enabled = true },

	appearance = {
		nerd_font_variant = "mono",
	},

	completion = {
		documentation = { auto_show = false },
		ghost_text = { enabled = true },
		list = {
			selection = {
				preselect = false,
				auto_insert = false,
			},
		},
		-- menu = {
		-- 	auto_show_delay_ms = 500, -- delay em ms após digitar
		-- },
	},

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},

	fuzzy = {
		implementation = "prefer_rust_with_warning",
	},
})
