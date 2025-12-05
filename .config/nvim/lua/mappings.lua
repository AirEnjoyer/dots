require "nvchad.mappings"

local map = vim.keymap.set
local M = {}

map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map('n', ';', ':', { noremap = true, silent = true, desc = "Enter command mode without shift})

--map("n", "<Tab>1", ">>", { desc = "Shift to the right" })
--map("n", "<Tab>2", ">>>>", { desc = "Shift to the right by 2" })
--map("n", "<Tab>3", ">>>>>>", { desc = "Shift to the right by 3" })
--map("n", "<Tab>4", ">>>>>>>>", { desc = "Shift to the right by 4" })
--map("n", "<Tab>5", ">>>>>>>>>>", { desc = "Shift to the right by 5" })
--map("n", "<Tab>6", ">>>>>>>>>>>>", { desc = "Shift to the right by 6" })
--map("n", "<Tab>7", ">>>>>>>>>>>>>>", { desc = "Shift to the right by 7" })
--map("n", "<Tab>8", ">>>>>>>>>>>>>>>>", { desc = "Shift to the right by 8" })
--map("n", "<Tab>9", ">>>>>>>>>>>>>>>>>>", { desc = "Shift to the right by 9" })
--map("n", "<S-Tab>1", "<<", { desc = "Shift to the left" })
--map("n", "<S-Tab>2", "<<<<", { desc = "Shift to the left 2" })
--map("n", "<S-Tab>3", "<<<<<<", { desc = "Shift to the left 3" })
--map("n", "<S-Tab>4", "<<<<<<<<", { desc = "Shift to the left 4" })
--map("n", "<S-Tab>5", "<<<<<<<<<<", { desc = "Shift to the left 5" })
--map("n", "<S-Tab>6", "<<<<<<<<<<<<", { desc = "Shift to the left 6" })
--map("n", "<S-Tab>7", "<<<<<<<<<<<<<<", { desc = "Shift to the left by 7" })
--map("n", "<S-Tab>8", "<<<<<<<<<<<<<<<<", { desc = "Shift to the left by 8" })
--map("n", "<S-Tab>9", "<<<<<<<<<<<<<<<<<<", { desc = "Shift to the left by 9" })
--map("v", "<Tab>1", ">>", { desc = "Shift to the right" })
--map("v", "<Tab>2", ">>>>", { desc = "Shift to the right by 2" })
--map("v", "<Tab>3", ">>>>>>", { desc = "Shift to the right by 3" })
--map("v", "<Tab>4", ">>>>>>>>", { desc = "Shift to the right by 4" })
--map("v", "<Tab>5", ">>>>>>>>>>", { desc = "Shift to the right by 5" })
--map("v", "<Tab>6", ">>>>>>>>>>>>", { desc = "Shift to the right by 6" })
--map("v", "<Tab>7", ">>>>>>>>>>>>>>", { desc = "Shift to the right by 7" })
--map("v", "<Tab>8", ">>>>>>>>>>>>>>>>", { desc = "Shift to the right by 8" })
--map("v", "<Tab>9", ">>>>>>>>>>>>>>>>>>", { desc = "Shift to the right by 9" })
--map("v", "<S-Tab>1", "<<", { desc = "Shift to the left" })
--map("v", "<S-Tab>2", "<<<<", { desc = "Shift to the left 2" })
--map("v", "<S-Tab>3", "<<<<<<", { desc = "Shift to the left 3" })
--map("v", "<S-Tab>4", "<<<<<<<<", { desc = "Shift to the left 4" })
--map("v", "<S-Tab>5", "<<<<<<<<<<", { desc = "Shift to the left 5" })
--map("v", "<S-Tab>6", "<<<<<<<<<<<<", { desc = "Shift to the left 6" })
--map("v", "<S-Tab>7", "<<<<<<<<<<<<<<", { desc = "Shift to the left by 7" })
--map("v", "<S-Tab>8", "<<<<<<<<<<<<<<<<", { desc = "Shift to the left by 8" })
--map("v", "<S-Tab>9", "<<<<<<<<<<<<<<<<<<", { desc = "Shift to the left by 9" })
map("i", "jk", "<ESC>")

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  },
}

return M
