return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup{
      size = 20,                  -- height of terminal
      open_mapping = [[<c-\>]],   -- keybinding to toggle terminal
      hide_numbers = true,         -- hide line numbers in terminal
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,      -- whether to map in insert mode
      persist_size = true,
      direction = "float",         -- float, horizontal, vertical
      close_on_exit = true,
      shell = vim.o.shell,
    }
  end
}

