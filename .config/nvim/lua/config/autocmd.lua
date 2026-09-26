-- close nvim-tree if it's last buffer open
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*",
	callback = function()
		if #vim.api.nvim_list_bufs() == 1 and vim.bo.filetype == "NvimTree" then
			vim.cmd("quit")
		end
	end,
})

-- Linting when saving, entering buffer or exiting insert mode
vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
	-- try_lint without arguments runs the linters defined in `linters_by_ft`
	-- for the current filetype, on write
	callback = function()
		pcall(require("lint").try_lint)
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		require("conform").format({ async = false, lsp_fallback = false })
	end,
})

-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end,
})
