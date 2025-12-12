local map = vim.keymap.set

vim.keymap.set("n", "<Leader>e", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })
map("n", "<Leader>ff", '<cmd>lua require("fzf-lua").files()<CR>', { desc = "fzf through files" })

map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", ";", ":", { noremap = true, desc = "Enter command mode without shift" })
map("i", "jk", "<ESC>")
map("n", "<Leader>dn", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagostics in float" })
