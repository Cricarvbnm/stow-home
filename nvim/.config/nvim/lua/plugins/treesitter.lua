return {
    'nvim-treesitter/nvim-treesitter',

    build = ":TSUpdate",

    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {
                'lua', 'bash', 'python', 'awk', 'cpp', 'java', 'html', 'xml', 'go',
                'json', 'printf', 'toml', 'yaml', 'javascript',
                'markdown', 'markdown_inline', 'vim', 'vimdoc',
            },
        }
    end,
}
