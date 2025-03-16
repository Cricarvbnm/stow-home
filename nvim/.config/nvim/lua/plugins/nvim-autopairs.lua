return {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = require('utils').is_nvim_editor()
        and {}
        or nil,
}
