vim.lsp.config["*"] = {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
}
if true then
	local arros = true
end

-- vim.lsp.config('lua_ls', {
--   settings = {
--     Lua = {
--       diagnostics = { globals = { 'vim' } },
--       telemetry = { enable = false },
--     },
--   },
-- })
vim.lsp.config("gopls", {})
vim.lsp.config("clangd", {})
vim.lsp.config("rust_analyzer", {
	cmd = { vim.fn.trim(vim.fn.system("rustup which rust-analyzer")) },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml" },
})

vim.lsp.enable({--[[  'lua_ls' ,]]
	"gopls",
	"clangd",
	"rust_analyzer",
})

require("luasnip.loaders.from_vscode").lazy_load()
