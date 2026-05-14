local cwords = "if,else,while,do,for,switch"
local rustwords = "enum,match,loop,impl,mod"

local undodir = vim.fn.expand("~/.vim/undodir")
if
	vim.fn.isdirectory(undodir) == 0 -- create undodir if nonexistent
then
	vim.fn.mkdir(undodir, "p")
end

local options = {

	-- ─── UI ────

	title = true, --automatic window titlebar
	laststatus = 3, --keeps a single status bar
	cursorline = true, --highlight cursor line
	termguicolors = true, --enables more colors (24 bits)
	showcmd = false,

	-- ─── Numbers ────
	number = true, --numbering lines
	relativenumber = true, --toggle bound to leader nn
	numberwidth = 4, --minimun width of number column
	signcolumn = "yes", --always show the sign column

	-- ─── Search ────
	ignorecase = true, --ignore case while searching
	smartcase = true, --but do not ignore if caps are used

	-- ─── Navigation ────
	scrolloff = 8, --dont let the cursor hit the top/bottom
	sidescrolloff = 8, --dont let the cursor hit the edges
	virtualedit = "onemore", --let the cursor go one char after the end of line

	-- 	─── Editing ────
	mouse = "a", --enables mouse in all modes
	clipboard = "unnamedplus", --should copy to clipboard
	cinwords = cwords, --default, may change later
	iskeyword = "@,48-57,_,192-255,-", --defaults + "-", treats - as part of words

	-- ─── Tabs ────
	tabstop = 4, --visual width of tab
	shiftwidth = 4, --width of tab when you press
	expandtab = false, --do not convert tabs to spaces
	smarttab = true, --switchs tabs for spaces when in the middle of line
	autoindent = true, --keeps the previous identation level on enter
	cindent = true, --smart identation based on code context

	-- ─── Folding ────
	foldmethod = "expr",
	foldlevel = 99, --disable folding, lower #s enable
	foldexpr = "nvim_treesitter#foldexpr()",

	-- ─── Files & History ────
	swapfile = false, --swap just gets in the way, usually
	backup = false,
	hidden = true,
	undofile = true, --undos are saved to file
	undodir = undodir,
	autowrite = false,

	-- ─── Performance & Behaviour ────
	smoothscroll = true,
	splitkeep = "screen", --stablizie window open/close
	updatetime = 250, --Time to update things
	timeoutlen = 300, --
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- vim.diagnostic.config({
-- 	signs = false,
-- })
