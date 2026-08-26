local capabilities = vim.lsp.protocol.make_client_capabilities()
local jsx = vim.g.emmet_jsx or "react"

return {
  capabilities = capabilities,
  filetypes = {
    "html",
    "typescriptreact",
    "javascriptreact",
    "javascript",
    "svelte",
    "vue",
    "css",
    "scss",
    "liquid",
    "ejs",
    "astro",
  },
  init_options = {
    jsx = {
      options = {
        ["output.selfClosingStyle"] = "xhtml",
        ["markup.attributes"] = {
          class = jsx == "react" and "className" or "class",
          srcset = jsx == "react" and "srcSet" or "srcset",
          charset = jsx == "react" and "charSet" or "charset",
        },
      },
    },
  },
}
