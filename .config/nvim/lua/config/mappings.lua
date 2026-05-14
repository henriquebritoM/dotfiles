--mappings, including plugins

local function map(m, k, v, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(m, k, v, options)
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- buffers
map("n", "<S-l>", ":bnext<CR>", { desc = "next buffer" }) --goto next buffer
map("n", "<S-h>", ":bprevious<CR>", { desc = "previous buffer" }) --goto previous buffer
map("n", "<leader>q", ":BufferClose<CR>", { desc = "close buffer" }) --close current buffer (better than :q)
map("n", "<leader>Q", ":BufferClose!<CR>", { desc = "force close buffer" }) --force close buffer
map("n", "<leader>U", "::bufdo bd<CR>", { desc = "close all buffers" }) --close all
map("n", "<leader>vs", ":vsplit<CR>:bnext<CR>", { desc = "vertical split & open next buffer" }) --ver split + open next buffer

-- buffer position nav + reorder
map("n", "<AS-h>", "<Cmd>BufferMovePrevious<CR>", { desc = "Move buffer to left" })
map("n", "<AS-l>", "<Cmd>BufferMoveNext<CR>", { desc = "Move buffer to right" })
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", { desc = "goto buffer 1" })
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", { desc = "goto buffer 2" })
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", { desc = "goto buffer 3" })
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", { desc = "goto buffer 4" })
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", { desc = "goto buffer 5" })
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", { desc = "goto buffer 6" })
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", { desc = "goto buffer 7" })
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", { desc = "goto buffer 8" })
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", { desc = "goto buffer 9" })
map("n", "<A-0>", "<Cmd>BufferLast<CR>", { desc = "goto last buffer" })
-- map('n', '<A-=>', '<Cmd>BufferPin<CR>') --For some reason, <A-p> is not recorded by my note, but <M-p> is the same thing

-- windows - ctrl nav, fn resize
map("n", "<C-h>", "<C-w>h", { desc = "left window" })
map("n", "<C-j>", "<C-w>j", { desc = "bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "right window" })
map("n", "<F5>", ":resize +2<CR>", { desc = "window h resize +" })
map("n", "<F6>", ":resize -2<CR>", { desc = "window h resize -" })
map("n", "<F7>", ":vertical resize +2<CR>", { desc = "window v resize +" })
map("n", "<F8>", ":vertical resize -2<CR>", { desc = "window v resize -" })

-- better movement in wrapped text, dont need description
map("n", "j", function()
	return vim.v.count == 0 and "gj" or "j"
end, { expr = true, desc = "down" })
map("n", "k", function()
	return vim.v.count == 0 and "gk" or "k"
end, { expr = true, desc = "up" })

-- file explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Open file explorer" }) --open file explorer

-- fzf and grep
map("n", "<leader>ff", ":lua require('fzf-lua').files()<CR>", { desc = "search in pwd" }) --search cwd
map("n", "<leader>fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>", { desc = "search in home" }) --search home
map("n", "<leader>fr", ":lua require('fzf-lua').resume()<CR>", { desc = "open last search" }) --last search
map("n", "<leader>fg", ":lua require('fzf-lua').grep()<CR>", { desc = "open grep" }) --grep
map("n", "<leader>fgg", ":lua require('fzf-lua').grep_cword()<CR>", { desc = "grep word under cursor" }) --grep word under cursor

-- FTerm
map("n", "<leader>t", ":lua require('FTerm').open()<CR>", { desc = "Open terminal" }) --open term
map("t", "<Esc>", '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>', { desc = "exit terminal" }) -- exit & preserves session

--trouble
-- map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "workspace diganostics" }) -- , "Trouble: workspace diagnostics")
map("n", "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer diagnostics" }) -- , "Trouble: buffer diagnostics")
map("n", "<leader>xq", "<cmd>Trouble qflist toggle<CR>", { desc = "Quick fix list" }) -- , "Trouble: quickfix list")

--lsp
map("n", "K", vim.lsp.buf.hover, { desc = "hover docs" })
map("n", "<leader>gd", function()
	require("fzf-lua").lsp_definitions({ jump_to_single_result = true })
end, { desc = "goto definition" })

map({ "n", "x" }, "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { desc = "Code action" })
map("n", "<leader>rn", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, silent = false, desc = "Rename symbol" })
map("n", "<leader>gr", function()
	require("fzf-lua").lsp_references()
end, { desc = "goto references" })
map("n", "<leader>d", function()
	vim.diagnostic.open_float({ scope = "line" })
end, { desc = "Open diagnostic window" })

-- quality of life
map("n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlight" })
map("n", "<leader>s", ":%s//g<Left><Left>", { desc = "search & replace" }) --replace all --todo: make it more intuituve
map("n", "<leader>w", ":w<CR>", { desc = "Save file" }) --write but one less key
map("n", "<leader>u", ':silent !xdg-open "<cWORD>" &<CR>', { desc = "Open URL" }) --open a url under cursor

map("n", "n", "nzzzv", { desc = "Next match (centered)" })
map("n", "N", "Nzzzv", { desc = "Previous match (centered)" })

map({ "n", "v" }, "<leader>x", '"_d', { desc = "Delete without yanking" })

map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map({ "v", "n" }, "<S-Tab>", "<gv", { desc = "unident selection" })
map({ "v", "n" }, "<Tab>", ">gv", { desc = "indent selection" })

map("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })
map("n", "<leader>nn", function() --toggle relative vs absolute line numbers
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.relativenumber = true
	end
end)
