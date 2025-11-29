local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- LSP
require("servers.bashls")(capabilities)
require("servers.clangd")(capabilities)
require("servers.dockerls")(capabilities)
require("servers.emmet_ls")(capabilities)
require("servers.gopls")(capabilities)
require("servers.jsonls")(capabilities)
require("servers.lua_ls")(capabilities)
require("servers.pyright")(capabilities)
require("servers.tailwindcss")(capabilities)
require("servers.ts_ls")(capabilities)

-- linters and formatters
require("servers.efm-langserver")(capabilities)

vim.lsp.enable({
	"bashls",
	"clangd",
	"dockerls",
	"emmet_ls",
	"gopls",
	"jsonls",
	"lua_ls",
	"pyright",
	"tailwindcss",
	"ts_ls",
	"efm",
})
