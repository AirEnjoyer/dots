local map = vim.keymap.set

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle DAP Breakpoint" })

map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue DAP" })

map("n", "<leader>dsov", "<cmd> DapStepOver <CR>", { desc = "Step to next line of code" })

map("n", "<leader>dsou", "<cmd> DapStepOver <CR>", { desc = "Step out of code" })

map("n", "<leader>dsi", "<cmd> DapStepInto <CR>", { desc = "Step into code" })
