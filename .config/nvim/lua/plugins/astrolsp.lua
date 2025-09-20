---@type LazySpec
return {
    "AstroNvim/astrolsp",
    --@type ASTROLSPOpts
    opts = {
        config = {
            clangd = {
                cmd = { "clangd" },
                filetypes = { "c", "cpp" },
            },
        },
    },
}
