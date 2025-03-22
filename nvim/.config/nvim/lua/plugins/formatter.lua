return {
    'mhartington/formatter.nvim',

    keys = {
        { '<a-s-f>', '<cmd>Format<CR>', mode = { 'n', 'i' } },
    },

    config = require('utils').is_nvim_editor()
        and function()
            local formatter_filetypes = require("formatter.filetypes")
            require("formatter").setup({
                filetype = {
                    lua = { function() vim.lsp.buf.format() end },
                    sh = { formatter_filetypes.zsh.beautysh },
                    c = { formatter_filetypes.c.clangformat },
                    cpp = { formatter_filetypes.cpp.clangformat },
                    go = { formatter_filetypes.go.gofmt },
                }
            })
        end
        or nil,
}
