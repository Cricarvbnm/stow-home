vim.o.jumpoptions = 'stack'

-- Tab
vim.o.shiftwidth = 4
vim.o.softtabstop = -1 -- follw shiftwidth

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'c', }, -- add new filetypes in this list
    callback = function()
        vim.opt_local.shiftwidth = 2
    end
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

