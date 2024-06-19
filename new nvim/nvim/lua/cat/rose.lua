require("rose-pine").setup({
    variant = "auto", -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
        legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
    },

    styles = {
        bold = true,
        italic = true,
        transparency = true,
    },

    groups = {
        border = "muted",
        link = "iris",
        panel = "surface",

        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
    },

    highlight_groups = {
        Comment = { fg = "love"},
        VertSplit = { fg = "rose", bg = "rose" },

        String = { fg = "love", bg = "love", blend = 10},
        Number = { fg = "love"},
        Conditional = { fg = "love"},
        Keyword = { fg = "love"},
        Include = { fg = "love"},
        Statement = { fg = "iris"},

        Key = { fg = "iris"},
        Tag = { fg = "love"},
        Type = { fg = "iris"},
        Structure = { fg = "love"},
        Directory = { fg = "love"},
        Title = { fg = "love"},
        Label = { fg = "love"},
        htmlTagName = { fg = "love"},
        Special = { fg = "love"},
        SpecialKey = { fg = "love"},
        Boolean = { fg = "love"},
        StorageClass = { fg = "love"},
        NvimTreeFolderName = { fg = "rose"},
        NvimTreeRootFolder = { fg = "love"},
        ["@variable.member"] = { fg = "#ebbcba" }, 
        

        StatusLine = { fg = "love", bg = "love", blend = 10 },
        StatusLineNC = { fg = "subtle", bg = "surface" },
        DashboardHeader = {fg = "love"},
    },

    before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --  highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.pine then
        --     highlight.fg = palette.foam
        -- end
    end,
})

vim.opt.fillchars:append { eob = " ", stl =" " }
vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme rose-pine-main")
-- vim.cmd("colorscheme rose-pine-moon")
-- vim.cmd("colorscheme rose-pine-dawn")
