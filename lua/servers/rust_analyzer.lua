return function(capabilities)
  vim.lsp.config("rust_analyzer", {
    capabilities = capabilities,
    settings = {
      ["rust-analyzer"] = {
        check = {
          command = "clippy",
        },
      },
    },
  })
end
