return {
    'HiPhish/rainbow-delimiters.nvim',
    dependencies = { "nvim-treesitter/nvim-treesitter" },

    lazy = false,
    config = function()
        local mod = require "rainbow-delimiters"
        vim.g.rainbow_delimiters = {
            strategy = {
                c = mod.strategy['global'],
            },
            query = {
                c = 'rainbow-delimiters',
            },
            priority = {
                c = 200,
            }
        }
    end
}
