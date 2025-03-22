local utils = require('utils')

utils.try_require('config.options')
utils.try_require('config.keymap')

if vim.g.vscode == nil then
    vim.notify('Neovim Editor')
    utils.try_require('config.lazy') -- plugin manager
    InVscode = false
else
    vim.notify('Not Neovim Editor')
    InVscode = false
end
