return {
  cmd = { "npx", "@biomejs/biome", "lsp-proxy" },
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
