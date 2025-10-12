---@type LazySpec
return {
    "AstroNvim/astrolsp",
    --@type ASTROLSPOpts
    opts = {
        config = {
            clangd = {
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--log=error",
                },

                filetypes = { "cpp" },
            },
        },
    },
}
