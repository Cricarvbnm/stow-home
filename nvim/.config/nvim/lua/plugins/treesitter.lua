return {
    'nvim-treesitter/nvim-treesitter',

    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {
                'c', 'lua', 'bash', 'python', 'awk', 'cpp', 'html', 'xml', 'go',
                'json', 'toml', 'yaml', 'javascript',
                'markdown', 'markdown_inline', 'vim', 'vimdoc',
            },
            hightlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end,
}
