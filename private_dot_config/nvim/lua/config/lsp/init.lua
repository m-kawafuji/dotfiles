local M = {}

local servers = {
  "ts_ls",
  "lua_ls",
  "emmet_ls",
  "denols",
  "dprint",
  "svelte",
  "astro",
  -- "eslint",
  "biome",
  "mdx_analyzer",
  "rust_analyzer",
  "stylelint_lsp",
  "prismals",
  "vimls",
  "taplo",
  "tailwindcss",
  "yamlls",
}

function M.setup()
  require("config.lsp.capabilities")
  require("config.lsp.keymaps")

  for _, server in ipairs(servers) do
    local ok, config = pcall(require, "config.lsp." .. server)

    if ok then
      vim.lsp.config(server, config)
    end
  end

  vim.lsp.enable(servers)
end

return M
