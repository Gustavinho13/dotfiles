-- comma as leader
vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

keymap("i", "jk", "<ESC>", default_opts)

keymap("n", "<leader>+", "<C-a>", default_opts)
keymap("n", "<leader>-", "<C-x>", default_opts)

keymap("n", "<leader>sv", "<C-w>v", default_opts) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", default_opts) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", default_opts) -- make split windows equal width
keymap("n", "<leader>sx", ":close<CR>", default_opts) -- close split window

keymap("n", "<leader>to", ":tabnew<CR>", default_opts) -- open new tab
keymap("n", "<leader>tx", ":tabclose<CR>", default_opts) -- close current tab
keymap("n", "<leader>tk", ":tabn<CR>", default_opts) -- go to next tab 
keymap("n", "<leader>tj", ":tabp<CR>", default_opts) -- go to previous tab

-- plugin keymaps
--
-- vim maximizer
keymap("n", "<leader>sm", ":MaximizerToggle<CR>", default_opts)

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", default_opts)

-- telescope
local builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>ff", builtin.find_files, default_opts)
vim.keymap.set("n", "<leader>fs", builtin.live_grep, default_opts)
vim.keymap.set("n", "<leader>fc", builtin.grep_string, default_opts)
vim.keymap.set("n", "<leader>fb", builtin.buffers, default_opts)
vim.keymap.set("n", "<leader>fh", builtin.help_tags, default_opts)
