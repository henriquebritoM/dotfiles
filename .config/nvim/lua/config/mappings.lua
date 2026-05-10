-- mappings, including plugins

local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- file explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>") --open file explorer

-- fzf and grep
map("n", "<leader>ff", ":lua require('fzf-lua').files()<CR>") --search cwd
map("n", "<leader>fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>") --search home
map("n", "<leader>fr", ":lua require('fzf-lua').resume()<CR>") --last search
map("n", "<leader>fg", ":lua require('fzf-lua').grep()<CR>") --grep
map("n", "<leader>fgg", ":lua require('fzf-lua').grep_cword()<CR>") --grep word under cursor

-- FTerm
map('n', '<leader>t', ":lua require('FTerm').open()<CR>") --open term
map('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>') -- exit & preserves session
--[[
This is BAD ideia: using the <leader> (" ") as keybing makes every " "
have a long delay defore being send to terminal
map('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>') -- exit & preserves session
]]--

-- quality of life
map("n", "<leader>s", ":%s//g<Left><Left>") --replace all --todo: make it more intuituve
map("n", "<leader>w", ":w<CR>") --write but one less key
map("n", "<leader>q", ":q<CR>") --quit but one less key
map("n", "<leader>u", ':silent !xdg-open "<cWORD>" &<CR>') --open a url under cursor



map("n", "<leader>nn", function() --toggle relative vs absolute line numbers
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.relativenumber = true
	end
end)
