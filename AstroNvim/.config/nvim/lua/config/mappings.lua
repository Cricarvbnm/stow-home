vim.keymap.set({'n'}, '<Leader>\\', '<cmd>nohlsearch<CR>')
vim.keymap.del({'n', 'i', 'v'}, '<c-s>')

-- Buffer Navigation
vim.keymap.set({'n', 'i'}, '<c-h>', '<cmd>BufferLineCyclePrev<CR>')
vim.keymap.set({'n', 'i'}, '<c-l>', '<cmd>BufferLineCycleNext<CR>')

