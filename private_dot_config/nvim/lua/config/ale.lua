local M = {}

function M.setup()
  local g = vim.g

  g.ale_fix_on_save = 1
  g.ale_disable_lsp = 1
  g.ale_linters_explicit = 1
  g.ale_use_neovim_diagnostics_api = 1

  g.ale_linters = {
    typescript = { "eslint" },
    typescriptreact = { "eslint" },
    javascript = { "eslint" },
    javascriptreact = { "eslint" },
    astro = { "eslint" },
    svelte = { "eslint" },
    scss = { "stylelint" },
    css = { "stylelint" },
  }

  g.ale_fixers = {
    lua = { "stylua" },
    typescript = { "prettier", "eslint" },
    typescriptreact = { "prettier", "eslint" },
    javascript = { "prettier", "eslint" },
    javascriptreact = { "prettier", "eslint" },
    svelte = { "prettier", "eslint" },
    scss = { "prettier", "stylelint" },
    css = { "prettier", "stylelint" },
    html = { "prettier" },
    liquid = { "prettier" },
    ejs = { "prettier" },
    json = { "prettier" },
    astro = { "prettier", "eslint" },
    prisma = { "prettier" },
    markdown = { "prettier" },
  }
end

return M
