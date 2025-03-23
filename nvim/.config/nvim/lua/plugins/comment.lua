return {
    'numToStr/Comment.nvim',

    init = function()
        local api = require('Comment.api')
        vim.keymap.set('n', '<C-_>', api.toggle.linewise.current) -- Ctrl + /
        vim.keymap.set('n', '<C-\\>', api.toggle.blockwise.current)
    end,

    opts = true,
}
