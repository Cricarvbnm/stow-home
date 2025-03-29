vim.g.mapleader = " "

vim.keymap.set({ 'n' }, '<Leader>h', '<cmd>nohlsearch<CR>') -- No highlighting now

vim.keymap.set({ 'n', 'i' }, '<c-h>', '<cmd>BufferLineCyclePrev<CR>')
vim.keymap.set({ 'n', 'i' }, '<c-l>', '<cmd>BufferLineCycleNext<CR>')
vim.keymap.set({ 'n', 'i' }, '<c-w>p', '<cmd>bd<CR>')
