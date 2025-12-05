require "nvchad.options"

local o = vim.o

local function indent_by_num(count)
  count = count or 1 
  for i = 1, count do
    vim.cmd('normal! >>')  
  end
end

vim.api.nvim_set_keymap('n', '<Tab>', ':lua indent_by_num(v:count)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Tab>', ':lua indent_buy_num(v:count)<CR>', { noremap = true, silent = true })

o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

o.cursorlineopt = "both"
