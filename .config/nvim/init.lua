-- nvim config

-- Necessary to use vim-plug with Lua
local vim = vim
local Plug = vim.fn['plug#']

-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

vim.g.start_time = vim.fn.reltime()
vim.loader.enable() --  SPEEEEEEEEEEED 
vim.call('plug#begin')

-- my plugins here
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) --colorscheme
Plug('nvim-lualine/lualine.nvim') --statusline
Plug('nvim-tree/nvim-web-devicons') --pretty icons
Plug('folke/which-key.nvim') --mappings popup
Plug('nvim-treesitter/nvim-treesitter') --improved syntax
Plug('mfussenegger/nvim-lint') --async linter
Plug('nvim-tree/nvim-tree.lua') --file explorer
Plug('windwp/nvim-autopairs') --autopairs
Plug('lewis6991/gitsigns.nvim') --git
Plug('gelguy/wilder.nvim') --commands autocomplete
Plug('numToStr/Comment.nvim') --easier comments
Plug('ibhagwan/fzf-lua') --fuzzy finder and grep
-- Plug('norcalli/nvim-colorizer.lua') --color highlight
Plug('numToStr/FTerm.nvim') --floating terminal
Plug('romgrk/barbar.nvim') --bufferline

vim.call('plug#end')

-- Configs

require("config.options")
require("config.autocmd")
require("config.mappings")

-- Plugins

require("plugins.lualine")
require("plugins.colorscheme")
require("plugins.which-key")
require("plugins.tree-sitter")
require("plugins.nvim-lint")
require("plugins.nvim-tree")
require("plugins.nvim-autopair")
require("plugins.gitsigns")
require("plugins.wilder")
require("plugins.comment")
require("plugins.fzf-lua")
require("plugins.fterm")
