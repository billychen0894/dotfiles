-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Select all
vim.keymap.set("n", "<C-a>", "ggvG")

-- Split window horizontally and vertically
vim.keymap.set("n", "ss", ":split<CR><C-w>w")
vim.keymap.set("n", "sv", ":vsplit<CR><C-w>w")

-- Better window navigation using Ctrl+h/j/k/l
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Navigate by page up and down and then center the view
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Highlighted next keywords to be shown in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Search & replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<Cmd>!chmod +x %<CR>", { silent = true })

-- Insert mode: Press "jk" quickly to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- Visual mode
vim.keymap.set("x", "<", "<gv")
vim.keymap.set("x", ">", ">gv")

-- Paste without overwriting the system clipboard
vim.keymap.set("x", "p", '"_dP')

-- Visual Block
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("n", "J", "mzJ`z")

-- Disable the "Q" key
vim.keymap.set("n", "Q", "<Nop>")

-- Run a custom terminal command
vim.keymap.set("n", "<C-f>", "<Cmd>silent !tmux new tmux-sessionizer<CR>")

-- Format code using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
