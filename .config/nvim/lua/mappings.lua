require "nvchad.mappings"

local map = vim.keymap.set
local M = {}

map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", ";", ":", { noremap = true, desc = "Enter command mode without shift" })
map("n", "<leader><Tab>", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<leader><S-Tab>", ":bprevious<CR>", { desc = "Previous bufffer" })
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
