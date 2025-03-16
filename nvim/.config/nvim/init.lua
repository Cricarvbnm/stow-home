local utils = require('utils')

utils.try_require('config.options')
utils.try_require('config.keymap')

utils.try_require('config.lazy') -- plugin manager

if utils.is_nvim_editor then
    vim.notify('Neovim Editor')
else
    vim.notify('Not Neovim Editor')
end
