local M = {}

local languages = {
  "lua",
  "tsx",
  "css",
  "scss",
  "json",
  "jsonc",
  "jsdoc",
  "svelte",
  "prisma",
  "liquid",
  "markdown",
  "typescript",
  "javascript",
}

local filetypes = {
  "lua",
  "css",
  "scss",
  "json",
  "jsonc",
  "svelte",
  "prisma",
  "liquid",
  "markdown",
  "typescript",
  "typescriptreact",
  "javascript",
  "javascriptreact",
}

function M.setup()
  local treesitter = require("nvim-treesitter")

  treesitter.install(languages)

  for _, filetype in ipairs(filetypes) do
    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetype,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end
end

return M
