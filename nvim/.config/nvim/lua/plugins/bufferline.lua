return {
    'akinsho/bufferline.nvim',

    event = 'BufEnter',

    opts = {
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
}
