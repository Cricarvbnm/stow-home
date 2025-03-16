return {
    'akinsho/bufferline.nvim',

    event = 'BufEnter',

    opts = require('utils').is_nvim_editor()
        and {
            options = {
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true
                    }
                }
            }
        }
        or nil,
}
