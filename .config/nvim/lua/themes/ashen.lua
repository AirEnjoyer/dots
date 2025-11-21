local M = {}

M.base_30 = {
    white = "#d3d3d3",
    darker_black = "#161616",
    black = "#121212",
    black2 = "#1D1D1D",
    one_bg = "#2c2c2c",
    one_bg2 = "#333333",
    one_bg3 = "#3a3a3a",
    grey = "#121212",
    grey_fg = "#484848",
    grey_fg2 = "#4f4f4f",
    light_grey = "#565656",
    red = "#ff6464",
    baby_pink = "#de878f",
    pink = "#d57780",
    line = "#dddddd",
    green = "#C4693D",
    vibrant_green = "#76c793",
    blue = "#737373",
    nord_blue = "#DF6464",
    yellow = "#ffcc00",
    sun = "#e0c247",
    purple = "#555555",
    dark_purple = "#B14242",
    teal = "#729cff",
    orange = "#cd6316",
    cyan = "#121212",
    statusline_bg = "#222222",
    lightbg = "#303030",
    pmenu_bg = "#DF6464",
    folder_bg = "#cd6316",
}

M.base_16 = {
    base00 = "#151515",
    base01 = "#ffffff",
    base02 = "#323232",
    base03 = "#ffffff",
    base04 = "#d3d3d3",
    base05 = "#ffffff",
    base06 = "#ECEFF4",
    base07 = "#8FBCBB",
    base08 = "#B14242",
    base09 = "#A7A7A7",
    base0A = "#B14242",
    base0B = "#848484",
    base0C = "#DF6464",
    base0D = "#B14242",
    base0E = "#DF6464",
    base0F = "#B14242",
}

M.polish_hl = {

    cmp = {
        CmpItemAbbrMatch = {
            fg = M.base_16.base08,
        },
        CmpItemAbbrMatchDefault = {
            bold = true,
            fg = M.base_16.base08,
        },
    },

    defaults = {
        SpellBad = {
            sp = M.base_30.red,
        },
        Cursor = {
            bg = M.base_16.base08,
        },
        CursorColumn = {
            bg = M.base_16.base08,
        },
        LineNr = {
            fg = M.base_16.base09,
        },
        Visual = {
            bg = M.base_16.base0E,
            fg = M.base_30.black2,
        },
    },
}

M.type = "dark"

M = require("base46").override_theme(M, "ashen")

return M
