require "nvchad.options"

local o = vim.o

local function indent_by_num(count)
  count = count or 1 
  for i = 1, count do
    vim.cmd('normal! >>')  
  end
end

local function unindent_by_num(count)
  count = count or 1 
  for i = 1, count do
    vim.cmd('normal! <<')  
  end
end

--Tab + 1-9 to indent by 1-9
vim.api.nvim_set_keymap({"n", "v"}, '<Tab>', ':lua indent_by_num(v:count)<CR>', { noremap = true, silent = true })


--Shift-Tab + 1-9 to unindent by 1-9
vim.api.nvim_set_keymap({"n", "v"}, '<S-Tab>', ':lua unindent_by_num(v:count)<CR>', { noremap = true, silent = true })

-- load snippets in json format
require("luasnip.loaders.from_vscode").lazy_load {
  paths = vim.g.vscode_snippets_path or vim.fn.stdpath "config" .. "/snippets",
}

-- load snippets in lua format
require("luasnip.loaders.from_lua").load {
  paths = vim.g.lua_snippets_path or vim.fn.stdpath "config" .. "/lua/snippets",
}

o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

o.cursorlineopt = "both"
