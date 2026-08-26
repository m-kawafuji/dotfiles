local M = {}

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function M.setup()
  require("toggleterm").setup({
    open_mapping = "<leader>t",
    direction = "float",
  })

  vim.keymap.set("n", "<leader>g", function()
    lazygit:toggle()
  end)
end

return M
