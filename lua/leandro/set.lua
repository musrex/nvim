-- Setting line numbers and relative line numbers
-- The F3 shortcut to switch isn't working...
-- Will look into it
vim.opt.number = true --enable line numbers
vim.opt.relativenumber = true --enable relative line numbers
vim.api.nvim_set_keymap(
  'n', '<F3>', ':set invrelativenumber<CR>',
  { noremap = true, silent = true }
  )

vim.opt.clipboard = "unnamedplus"
  
-- Setting tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- No text wrap, yuck
vim.opt.wrap = false

-- No backups or annoying swapfile messages, just a really
-- long undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.opt.timeoutlen = 300  -- Lower the timeout for mapped sequences (default is 1000)
vim.opt.ttimeoutlen = 0   -- Make key sequences (like <C-e>) instant


-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

-- Undo Tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)


--vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = true })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = true })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = true })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = true })
