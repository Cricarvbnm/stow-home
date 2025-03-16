return {
    'nvim-treesitter/nvim-treesitter',

    build = ":TSUpdate",

    config =
        require('utils').is_nvim_editor()
        and (
            function()
                require('nvim-treesitter.configs').setup {
                    ensure_installed = {
                        'lua', 'bash', 'python', 'awk', 'cpp', 'java', 'html', 'xml',
                        'json', 'printf', 'toml', 'yaml', 'javascript',
                        'markdown', 'markdown_inline', 'vim', 'vimdoc'
                    },
                }
            end
        )
        or nil
    ,

}
