return {
  cmd = { "npx", "dprint", "lsp" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "jsonc",
    "markdown",
    "python",
    "toml",
    "rust",
    "roslyn",
    "graphql",
    "css",
    "scss",
    "html",
    "astro",
    "svelte",
  },
  workspace_required = true,
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
