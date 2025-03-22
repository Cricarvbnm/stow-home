vim.o.jumpoptions = 'stack'

-- Tab
local function mixedTab(width)
    vim.o.tabstop = 8
    vim.o.expandtab = false
    vim.o.shiftwidth = width
    vim.o.softtabstop = -1 -- follw shiftwidth
end

local function expandTab(width)
    vim.o.tabstop = 8
    vim.o.expandtab = true
    vim.o.shiftwidth = width
    vim.o.softtabstop = -1
end

local function changeTab(width)
    vim.o.tabstop = width
    vim.o.expandtab = false
    vim.o.shiftwidth = width
    vim.o.softtabstop = -1
end

vim.api.nvim_create_autocmd('FileType', {
    callback = function() expandTab(4) end,
    pattern = { 'python', 'java', 'lua' },
})

vim.api.nvim_create_autocmd('FileType', {
    callback = function() expandTab(2) end,
    pattern = { 'c', }, -- add new filetypes in this list
})

vim.api.nvim_create_autocmd('FileType', {
    callback = function() changeTab(4) end,
    pattern = { 'go' }
})

-- Editor
vim.o.number = true            -- Show line numbers
vim.o.cursorline = true        -- Highlight cursor underneath
vim.o.cursorlineopt = 'number' -- Highlight line number
vim.o.showmatch = true         -- Show matched pair
vim.o.scrolloff = 3

-- Tab cards
vim.o.splitbelow = true -- Open tabs left
vim.o.splitright = true -- Open tabs right

-- Search
vim.o.ignorecase = true

-- Mouse
vim.o.mouse = a
