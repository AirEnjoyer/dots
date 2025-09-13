local Terminal = require('toggleterm.terminal').Terminal

local float_term = Terminal:new({ direction = "float" })
vim.keymap.set("n", "<leader>tf", function()
  float_term:toggle()
end, { desc = "Toggle floating terminal" })

local horiz_term = Terminal:new({ direction = "horizontal" })
vim.keymap.set("n", "<leader>th", function()
  horiz_term:toggle()
end, { desc = "Toggle horizontal terminal" })

local vert_term = Terminal:new({ direction = "vertical" })
vim.keymap.set("n", "<leader>tv", function()
  vert_term:toggle()
end, { desc = "Toggle vertical terminal" })


vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set("n", "<leader>sc", function()
  require("telescope.builtin").colorscheme({
    enable_preview = true,
    on_select = function(selection)
      vim.cmd.colorscheme(selection)
      local theme_file = vim.fn.stdpath("config") .. "/colorscheme.txt"
      vim.fn.writefile({ selection }, theme_file)
    end,
  })
end, { desc = "[S]elect [C]olorscheme" })

