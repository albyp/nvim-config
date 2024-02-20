local opts = {noremap = true, silent = true}
local term_opts = {silent = true}
local keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Why use shift to enter command mode
keymap({"n", "x"}, ";", ":")

-- Go to start or end of line easier
keymap({"n", "x"}, "H", "^")
keymap({"n", "x"}, "L", "g_")

-- Insert a blank line below or above current line (do not move the cursor)
keymap("n", "<leader>o", "printf('m`%so<Esc>``', v:count1)", {
  expr = true,
  desc = "insert line below",
})

-- doesn't work
keymap("n", "<leader>O", "printf('m`%so<Esc>``', v:count1)", {
  expr = true,
  desc = "insert line above",
})

-- Do not include white space characters when using $ in visual mode
keymap("x", "$", "g_")

-- Lukesmith quicktags
keymap({"n", "i"}, "<Space><Space>", "<Esc>/<++><Enter>\"_c4l")

-- Insert --
-- Turn the word under cursor to upper case
keymap("i", "<C-u>", "<Esc>viwUea")

