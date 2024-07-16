vim.g.mapleader = " "

-- CD shortcuts 
vim.keymap.set("n", "<leader>cdc", "<cmd>cd ~/.config/nvim/<CR>", { desc = 'Open ~/.config/nvim/' })
vim.keymap.set("n", "<leader>cdp", "<cmd>cd ~/Projects/<CR>", { desc = 'Open ~/Projects/' })

-- Clipboard copy/paste
vim.keymap.set("n", "<leader>y", "\"+y", { desc = 'Yank to clipboard' })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = 'Yank to clipboard' })

vim.keymap.set("n", "<leader>p", "\"+p", { desc = 'Paste from clipboard' })
vim.keymap.set("v", "<leader>p", "\"+p", { desc = 'Paste from clipboard' })

vim.keymap.set("n", "<leader>P", "\"+P", { desc = 'Paste from clipboard before cursor' })
vim.keymap.set("v", "<leader>P", "\"+P", { desc = 'Paste from clipboard before cursor' })

-- Delete to void
vim.keymap.set("n", "<leader>d", "\"_d", { desc = 'Delete to void' })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = 'Delete to void' })

-- Recursor
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'Page down' })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'Page up' })
vim.keymap.set("n", "n", "nzzzv", { desc = 'Next match' })
vim.keymap.set("n", "N", "Nzzzv", { desc = 'Previous match' })

-- Open link
-- vim.keymap.set("n", "gx", [[:execute '!start ' . shellescape(expand('<cfile>'), 1)<CR>]], { noremap = true, desc = 'Open link' })

-- Window navigation
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")
--
-- vim.keymap.set("n", "<C-left>", "<C-w>h")
-- vim.keymap.set("n", "<C-down>", "<C-w>j")
-- vim.keymap.set("n", "<C-up>", "<C-w>k")
-- vim.keymap.set("n", "<C-right>", "<C-w>l")

