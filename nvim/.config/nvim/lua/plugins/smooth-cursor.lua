return {
    'gen740/SmoothCursor.nvim',

    event = 'BufEnter',

    opts = require('utils').is_nvim_editor()
        and {
            fancy = {
                enable = true,
            },
        }
        or nil,
}
