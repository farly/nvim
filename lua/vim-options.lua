vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.softtabstop = 2

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("i", "jj", "<Esc>", {})
