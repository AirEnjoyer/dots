require "nvchad.options"
require("nvconfig").ui.tabufline.enabled = false

local o = vim.o

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
