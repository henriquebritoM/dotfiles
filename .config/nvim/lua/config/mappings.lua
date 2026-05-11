-- mappings, including plugins

local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- buffers
map("n", "<S-l>", ":bnext<CR>") --goto next buffer
map("n", "<S-h>", ":bprevious<CR>") --goto previous buffer
map("n", "<leader>q", ":BufferClose<CR>") --close current buffer (better than :q)
map("n", "<leader>Q", ":BufferClose!<CR>") --force close buffer
map("n", "<leader>U", "::bufdo bd<CR>") --close all
map('n', '<leader>vs', ':vsplit<CR>:bnext<CR>') --ver split + open next buffer

-- buffer position nav + reorder
map('n', '<AS-h>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<AS-l>', '<Cmd>BufferMoveNext<CR>')
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<Cmd>BufferLast<CR>')
-- map('n', '<A-=>', '<Cmd>BufferPin<CR>') --For some reason, <A-p> is not recorded by my note, but <M-p> is the same thing

-- windows - ctrl nav, fn resize
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<F5>", ":resize +2<CR>")
map("n", "<F6>", ":resize -2<CR>")
map("n", "<F7>", ":vertical resize +2<CR>")
map("n", "<F8>", ":vertical resize -2<CR>")

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
map("n", "<leader>u", ':silent !xdg-open "<cWORD>" &<CR>') --open a url under cursor


map("n", "<leader>nn", function() --toggle relative vs absolute line numbers
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.relativenumber = true
	end
end)
