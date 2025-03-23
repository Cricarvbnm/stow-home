return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        sections = {
            lualine_b = { 'filetype' },
            lualine_x = { 'searchcount', 'encoding', 'fileformat', },
            lualine_z = { 'location', '%b', },
        },
    }
}
