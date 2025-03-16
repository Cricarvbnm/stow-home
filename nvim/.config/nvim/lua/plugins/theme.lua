return {
    'catppuccin/nvim',
    name = 'catppuccin',

    priority = 1000,
    lazy = false,

    init = require('utils').is_nvim_editor()
        and function()
            local status, msg = pcall(vim.cmd.colorscheme, "catppuccin-macchiato")
            if not status then
                vim.notify(msg .. "Failed to set colorscheme")
            end
        end
        or nil,
}
