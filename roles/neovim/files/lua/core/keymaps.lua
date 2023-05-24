-- Some shortcuts to make the conf file more clean
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map leader key to space
map("n", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Don't jump when using *
map("n", "*", "*<C-o>", opts)

-- Keep search matches in the middle of the window
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Clear matches with Ctrl+m
map("n", "<C-m>", ":noh<Cr>", opts)

-- Navigate vim panes better
map('n', '<c-k>', ':wincmd k<CR>', opts)
map('n', '<c-j>', ':wincmd j<CR>', opts)
map('n', '<c-h>', ':wincmd h<CR>', opts)
map('n', '<c-l>', ':wincmd l<CR>', opts)

map("v", "K", ":m '<-2<CR>gv=gv", opts)
map("v", "J", ":m '>+1<CR>gv=gv", opts)

map("n", "J", "mzJ`z", opts)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- YY/XX Copy/Cut into the system clipboard
vim.cmd([[
noremap YY "+y<CR>
noremap XX "+x<CR>
]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Resize windows with Shift+<arrow>
map("n", "<S-Up>", ":resize +2<CR>", opts)
map("n", "<S-Down>", ":resize -2<CR>", opts)
map("n", "<S-Left>", ":vertical resize -2<CR>", opts)
map("n", "<S-Right>", ":vertical resize +2<CR>", opts)

