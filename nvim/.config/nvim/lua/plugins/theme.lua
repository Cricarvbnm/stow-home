return {
    'catppuccin/nvim',
    name = 'catppuccin',

    priority = 1000,
    lazy = false,

    init = function()
        local status, msg = pcall(vim.cmd.colorscheme, "catppuccin-macchiato")
        if not status then
            vim.notify(msg .. "Failed to set colorscheme")
        end
    end
}
