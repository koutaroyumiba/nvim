return function(capabilities)
  vim.lsp.config("zls", {
    capabilities = capabilities,
  })
end
