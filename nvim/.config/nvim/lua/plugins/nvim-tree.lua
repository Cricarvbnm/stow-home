return {
    'kyazdani42/nvim-tree.lua',

    keys = {
        { '<a-s-m>', '<cmd>NvimTreeToggle<CR>' },
    },

    opts = require('utils').is_nvim_editor()
        and {
            sort_by = "case_sensitive",
            git = { enable = true },
            filters = { dotfiles = true },
            view = {
                side = "left", number = false, relativenumber = false, signcolumn = "yes"
            },
            renderer = { group_empty = true }
        }
        or nil,
}
