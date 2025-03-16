return {
    'HiPhish/rainbow-delimiters.nvim',

    config = require('utils').is_nvim_editor()
        and function()
            require("rainbow-delimiters")
        end
        or nil,
}
