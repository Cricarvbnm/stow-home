return {
    'neovim/nvim-lspconfig',

    config = require('utils').is_nvim_editor()
        and function()
            local lsp_config = require('lspconfig')
            lsp_config.lua_ls.setup({})
            lsp_config.nil_ls.setup({})
            lsp_config.bashls.setup({})
            lsp_config.clangd.setup({})
        end
        or nil,
}
