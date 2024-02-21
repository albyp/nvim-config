local opts = {noremap = true, silent = true}
local term_opts = {silent = true}
local keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--    normal_mode = "n",
--    insert_mode = "i",
--    visual_mode = "v",
--    visual_block_mode = "x",
--    term_mode = "t",
--    command_mode = "c"

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Center to focus
keymap("n", "{", "{zz", opts)
keymap("n", "}", "}zz", opts)
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "G", "Gzz", opts)
keymap("n", "i", "zzi", opts)
keymap("n", "I", "zzI", opts)
keymap("n", "o", "zzo", opts)
keymap("n", "O", "zzO", opts)
keymap("n", "a", "zza", opts)
keymap("n", "A", "zzA", opts)
keymap("n", "s", "zzs", opts)
keymap("n", "S", "zzS", opts)
keymap("n", "c", "zzc", opts)
keymap("n", "C", "zzC", opts)

-- Lexplore
keyap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Why use shift to enter command mode
keymap({"n", "x"}, ";", ":", opts)

-- Go to start or end of line easier
keymap({"n", "x"}, "H", "^", opts)
keymap({"n", "x"}, "L", "g_", opts)

-- Insert a blank line below or above current line (do not move the cursor)
keymap("n", "<leader>o", "printf('m`%so<Esc>``', v:count1)", {
  expr = true,
  desc = "insert line below",
}, opts)

-- doesn't work
keymap("n", "<leader>O", "printf('m`%so<Esc>``', v:count1)", {
  expr = true,
  desc = "insert line above",
}, opts)

keymap("n", "<CR>", "ciw", opts)

-- Lukesmith placeholder tags
keymap({"n", "i"}, "<Space><Space>", "<Esc>/<++><Enter>\"_c4l", opts)

-- Insert --
-- Turn the word under cursor to upper case
keymap("i", "<C-u>", "<Esc>viwUea", opts)

keymap("i", "<C-BS>", "<Esc>cvb", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text update and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", "\"_dP", opts)

-- Better visual yank
keymap({"v", "x"}, "y", "ygv<Esc>", opts)

-- Do not include white space characters when using $ in visual mode
keymap("x", "$", "g_", opts)

-- Move text up and down
keymap("x", "<S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<S-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
