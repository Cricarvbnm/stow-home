-- Tab
function mixTab(width)
    vim.o.tabstop = 8
    vim.o.expandtab = false
    vim.o.shiftwidth = width
    vim.o.softtabstop = -1 -- follw shiftwidth
end

function expandTab(width)
    vim.o.tabstop = width
    vim.o.expandtab = true
    vim.o.shiftwidth = width
    vim.o.softtabstop = -1
end

function changeTab(width)
    vim.o.tabstop = width
    vim.o.expandtab = false
    vim.o.shiftwidth = width
    vim.o.softtabstop = -1
end

vim.api.nvim_create_autocmd('FileType', {
    callback = function() expandTab(4) end,
    pattern = {
        'python',
        'java',
        'lua',
        'sql',
        'sh',
        'bash',
        'zsh',
    },
})
vim.api.nvim_create_autocmd('FileType', {
    callback = function() expandTab(2) end,
    pattern = { 'c', }, -- add new filetypes in this list
})
vim.api.nvim_create_autocmd('FileType', {
    callback = function() changeTab(4) end,
    pattern = { 'go' }
})

-- default tab
mixTab(4)


-- File Extension
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = "*.hyprland",
    callback = function() vim.bo.filetype = "hyprlang" end
})
