local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
    local result = vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    }
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { ("Error cloning lazy.nvim:\n%s\n"):format(result), "ErrorMsg" },
            { "Press any key to exit...", "MoreMsg" },
        }, true, {})
        vim.fn.getchar()
        vim.cmd.quit()
    end
end

vim.opt.rtp:prepend(lazypath)

if not pcall(require, "lazy") then
    vim.api.nvim_echo({
        { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" },
        { "Press any key to exit...", "MoreMsg" },
    }, true, {})
    vim.fn.getchar()
    vim.cmd.quit()
end
vim.lsp.set_log_level "WARN"

require "lazy_setup"
require "mappings"
vim.cmd "colorscheme ashen"
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*.pdf",
    callback = function()
        local file_path = vim.api.nvim_buf_get_name(0)
        require("pdfview").open(file_path)
    end,
})
