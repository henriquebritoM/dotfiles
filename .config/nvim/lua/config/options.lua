local cwords = "if,else,while,do,for,switch"
local rustwords = "enum,match,loop,impl,mod"

local options = {
	--nvim base configs
	title = true, --automatic window titlebar
	laststatus = 3, --keeps a single status bar
	wrap = true, --break long lines visual effect
	mouse = "a", --enables mouse in all modes
	history = 100, --saves commands from the command mode (:)
	swapfile = false, --swap just gets in the way, usually
	backup = false,

	--quality of life
	undofile = true, --undos are saved to file
	cursorline = true, --highlight cursor line
	autowriteall = true,
	cinwords = cwords, --default, may change later
	clipboard = "unnamedplus", --should copy to clipboard
	virtualedit = 'onemore', --let the cursor go one char after the end of line

	--performance thingys
	ttyfast = true, --faster scrolling
	smoothscroll = true,
	termguicolors = true, --enables more colors (24 bits)
	splitkeep = 'screen', --stablizie window open/close
	updatetime = 250, --Time to update things
	timeoutlen = 300, --

	--navigation
	number = true, --numbering lines
	relativenumber = true, --toggle bound to leader nn
	numberwidth = 4,
	ignorecase = true, --ignore case while searching
	smartcase = true, --but do not ignore if caps are used
	scrolloff = 8, --dont let the cursor hit the top/bottom
	sidescrolloff = 8, --dont let the cursor hit the edges

	--folding things
	foldmethod = "expr",
	foldlevel = 99, --disable folding, lower #s enable
	foldexpr = "nvim_treesitter#foldexpr()",

	--tabs configuration
	smarttab = true, --switchs tabs for spaces when in the middle of line
	cindent = true,	--smart identation based on code context
	autoindent = false, --keeps the previous identation level on enter
	tabstop = 4, --visual width of tab
	shiftwidth = 4, --width of tab when you press
	expandtab = false, --do not convert tabs to spaces
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})
