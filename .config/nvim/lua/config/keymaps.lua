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

local dap = require("dap")
map("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "Toggle Break" })
map("n", "<Leader>dc", dap.continue, { desc = "Continue" })
map("n", "<Leader>dr", dap.repl.open, { desc = "Inspect" })
map("n", "<Leader>dk", dap.terminate, { desc = "Kill" })

map("n", "<Leader>dso", dap.step_over, { desc = "Step Over" })
map("n", "<Leader>dsi", dap.step_into, { desc = "Step Into" })
map("n", "<Leader>dsu", dap.step_out, { desc = "Step Out" })
map("n", "<Leader>dl", dap.run_last, { desc = "Run Last" })

local dapui = require("dapui")
map("n", "<Leader>duu", dapui.open, { desc = "Open UI" })
map("n", "<Leader>duc", dapui.close, { desc = "Close UI" })
