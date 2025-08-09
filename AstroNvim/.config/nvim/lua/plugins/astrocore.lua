-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

-- Config {{{
---@type AstroCoreOpts
local opts = {}
-- }}}

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },

    -- vim options can be configured here
    options = {

      opt = { -- vim.opt.<key>
        jumpoptions = "stack",
        fileencodings = "ucs-bom,utf-8,cp936,gb18030,gbk,big5,sjis,euc-jp,latin1",
        scrolloff = 3,
        mouse = "a",

        -- UI
        number = true,
        relativenumber = false,
        cursorline = true,
        cursorlineopt = "number",
        colorcolumn = "80",
        signcolumn = "yes",
        wrap = true,

        -- Search
        showmatch = true,
      },

      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },

    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      n = {
        ["<Leader>\\"] = { "<cmd>nohlsearch<CR>", desc = "Clear highlighting search" },

        -- Buffer Navigation
        ["L"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["H"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
      },

      [{ "n", "i" }] = {
        -- Compeltion
        ["<c-.>"] = { "<c-space>" },
      },

      [{ "n", "i", "v" }] = {
        ["<C-S>"] = false,
      },
    },
  },
}
