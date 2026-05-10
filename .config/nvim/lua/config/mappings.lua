-- mappings, including plugins

local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>t", ":NvimTreeToggle<CR>") --open file explorer

-- fzf and grep
map("n", "<leader>ff", ":lua require('fzf-lua').files()<CR>") --search cwd
map("n", "<leader>fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>") --search home
map("n", "<leader>fr", ":lua require('fzf-lua').resume()<CR>") --last search
map("n", "<leader>fg", ":lua require('fzf-lua').grep()<CR>") --grep
map("n", "<leader>fgg", ":lua require('fzf-lua').grep_cword()<CR>") --grep word under cursor
