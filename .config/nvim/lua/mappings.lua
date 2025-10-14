vim.cmd "set expandtab"
vim.cmd "set tabstop=4"
vim.cmd "set softtabstop=4"
vim.cmd "set shiftwidth=4"

vim.keymap.set("n", "<leader><S-n>", "<cmd>Neogit<CR>")
vim.api.nvim_set_keymap("n", "<F2>", "<cmd>LazyGit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-P>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
