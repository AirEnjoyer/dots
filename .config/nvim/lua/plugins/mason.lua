---@type LazySpec
return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = function(_, opts)
            opts.ensure_installed = vim.tbl_filter(
                function(tool) return tool ~= "codelldb" end,
                opts.ensure_installed or {}
            )

            vim.list_extend(opts.ensure_installed, {
                "clangd",
                "clang-format",
                "tree-sitter-cli",
            })
        end,
    },
}
