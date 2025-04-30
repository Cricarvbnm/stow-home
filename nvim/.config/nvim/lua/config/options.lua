vim.o.jumpoptions = 'stack'

-- Encoding
vim.o.fileencodings = 'ucs-bom,utf-8,cp936,gb18030,gbk,big5,sjis,euc-jp,latin1'

-- Tab
function mixedTab(width)
    vim.o.tabstop = 8
    vim.o.expandtab = false
    vim.o.shiftwidth = width
    vim.o.softtabstop = -1 -- follw shiftwidth
end

function expandTab(width)
    vim.o.tabstop = 8
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
    pattern = { 'python', 'java', 'lua', 'sql' },
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
