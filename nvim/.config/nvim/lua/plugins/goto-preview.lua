return {
    'rmagatti/goto-preview',

    keys = {
        { '<F12>',     "<cmd>lua require('goto-preview').goto_preview_definition()<CR>" },
        -- {'gpt', "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>" },
        { '<c-F12>',   "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>" },
        -- {'gpD', "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>" },
        { '<s-F12>',   "<cmd>lua require('goto-preview').goto_preview_references()<CR>" },
        { '<a-s-F12>', "<cmd>lua require('goto-preview').close_all_win()<CR>" },
    },

    opts = require('utils').is_nvim_editor()
        and {}
        or nil,
}
