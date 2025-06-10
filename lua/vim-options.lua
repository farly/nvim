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

-- copilot 
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept()', { expr = true, noremap = true })


-- LSP related keybindings for definition
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition (current window)' }) -- Keep the default gd
vim.keymap.set('n', 'gds', ':split | lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition (horizontal split)' })
vim.keymap.set('n', 'gdv', ':vsplit | lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition (vertical split)' })
vim.keymap.set('n', 'gdt', ':tab split | lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition (new tab)' })

-- You might also want to add these for type definition and references
vim.keymap.set('n', 'gtd', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { desc = 'Go to type definition' })
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { desc = 'Go to references' })
