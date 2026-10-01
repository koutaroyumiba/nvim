local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- LSP
require("servers.astro")(capabilities)
require("servers.bashls")(capabilities)
require("servers.clangd")(capabilities)
require("servers.dockerls")(capabilities)
require("servers.emmet_ls")(capabilities)
require("servers.gopls")(capabilities)
require("servers.jsonls")(capabilities)
require("servers.lua_ls")(capabilities)
require("servers.pyright")(capabilities)
require("servers.rust_analyzer")(capabilities)
require("servers.tailwindcss")(capabilities)
require("servers.ts_ls")(capabilities)
require("servers.zls")(capabilities)

vim.lsp.enable({
  "astro",
  "bashls",
  "clangd",
  "dockerls",
  "emmet_ls",
  "gopls",
  "jsonls",
  "lua_ls",
  "pyright",
  "rust_analyzer",
  "tailwindcss",
  "ts_ls",
  "zls",
})
