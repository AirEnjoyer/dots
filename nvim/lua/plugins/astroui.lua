---@type LazySpec
return {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
        colorscheme = "ashen",
        highlights = {
            init = { -- this table overrides highlights in all themes
                -- Normal = { bg = "#000000" },
            },
            astrodark = { -- a table of overrides/changes when applying the astrotheme theme
                -- Normal = { bg = "#000000" },
            },
        },
        icons = {
            LSPLoading1 = "⠋",
            LSPLoading2 = "⠙",
            LSPLoading3 = "⠹",
            LSPLoading4 = "⠸",
            LSPLoading5 = "⠼",
            LSPLoading6 = "⠴",
            LSPLoading7 = "⠦",
            LSPLoading8 = "⠧",
            LSPLoading9 = "⠇",
            LSPLoading10 = "⠏",
        },
    },
}
