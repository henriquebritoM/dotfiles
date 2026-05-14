
vim.lsp.config('*', {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' } },
      workspace = { library = vim.api.nvim_get_runtime_file("", true) },
      telemetry = { enable = false },
    },
  },
})

vim.lsp.enable({
	--[[  'lua_ls' ,]]
	"gopls",
	"clangd",
	"rust_analyzer",
})

require("luasnip.loaders.from_vscode").lazy_load()
