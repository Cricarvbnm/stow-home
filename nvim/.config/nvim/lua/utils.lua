InVscode = false

return {
    try_require = function(name)
        local status, message = pcall(require, name)
        if not status then
            vim.notify(message .. '\n' .. "Failed to require '" .. name .. "'")
        end
    end,

    is_nvim_editor = function()
        return not InVscode
    end,
}
