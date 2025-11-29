local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- LSP
require("servers.lua_ls")(capabilities)
require("servers.pyright")(capabilities)

-- linters and formatters
require("servers.efm-langserver")(capabilities)

vim.lsp.enable({
	"lua_ls",
	"efm",
	"pyright",
})
