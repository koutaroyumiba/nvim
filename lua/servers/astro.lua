return function(capabilities)
  vim.lsp.config("astro", {
    capabilities = capabilities,
    init_options = {
      typescript = {
        -- Astro's language server requires the pre-TypeScript 7 JavaScript SDK.
        tsdk = vim.fs.joinpath(
          vim.fn.stdpath("data"),
          "mason/packages/astro-language-server/node_modules/typescript/lib"
        ),
      },
    },
  })
end
