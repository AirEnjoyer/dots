vim.cmd "set expandtab"
vim.cmd "set tabstop=4"
vim.cmd "set softtabstop=4"
vim.cmd "set shiftwidth=4"

vim.keymap.set("n", "<leader><S-n>", "<cmd>Neogit<CR>")
vim.api.nvim_set_keymap("n", "<F2>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
