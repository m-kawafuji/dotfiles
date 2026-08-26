-- appropriately highlight codefences
vim.g.markdown_fenced_languages = { "ts=typescript" }

return {
  root_markers = { "deno.json", "deno.jsonc" },
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
