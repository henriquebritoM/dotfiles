require("fzf-lua").setup({
	file_icon_padding = " ",

	keymap = {
		-- Below are the default binds, setting any value in these tables will override
		-- the defaults, to inherit from the defaults change [1] from `false` to `true`
		builtin = {
			-- neovim `:tm = "preview-page-up",
			["<M-j>"] = "preview-down",
			["<M-k>"] = "preview-up",
		},
		fzf = {
			["tab"] = "down",
			["shift-tab"] = "up",
			-- fzf '--bind=' options
			-- true,        -- uncomment to inherit all the below in your custom config
			["ctrl-z"] = "abort",
			["ctrl-u"] = "unix-line-discard",
			["ctrl-f"] = "half-page-down",
			["ctrl-b"] = "half-page-up",
			["ctrl-a"] = "beginning-of-line",
			["ctrl-e"] = "end-of-line",
			["alt-a"] = "toggle-all",
			["alt-g"] = "first",
			["alt-G"] = "last",
			-- Only valid with fzf previewers (bat/cat/git/etc)
			["f3"] = "toggle-preview-wrap",
			["f4"] = "toggle-preview",
			["shift-down"] = "preview-page-down",
			["shift-up"] = "preview-page-up",
		},
	},
})
