return function(capabilities)
	-- lua
	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	-- python
	local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")
	-- js/ts
	local eslint_d = require("efmls-configs.linters.eslint_d")
	local prettier_d = require("efmls-configs.formatters.prettier_d")
	-- go
	local go_revive = require("efmls-configs.linters.go_revive")
	local gofumpt = require("efmls-configs.formatters.gofumpt")
	-- json
	local fixjson = require("efmls-configs.formatters.fixjson")
	-- shell
	local shellcheck = require("efmls-configs.linters.shellcheck")
	local shfmt = require("efmls-configs.formatters.shfmt")
	-- docker
	local hadolint = require("efmls-configs.linters.hadolint")
	-- cpp
	local cpplint = require("efmls-configs.linters.cpplint")
	local clangformat = require("efmls-configs.formatters.clang_format")

	vim.lsp.config("efm", {
		capabilities = capabilities,
		filetypes = {
			"c",
			"cpp",
			"css",
			"docker",
			"go",
			"html",
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"lua",
			"markdown",
			"python",
			"sh",
			"svelte",
			"typescript",
			"typescriptreact",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				c = { clangformat, cpplint },
				cpp = { clangformat, cpplint },
				css = { prettier_d },
				docker = { hadolint, prettier_d },
				go = { gofumpt, go_revive },
				html = { prettier_d },
				javascript = { eslint_d, prettier_d },
				javascriptreact = { eslint_d, prettier_d },
				json = { eslint_d, fixjson },
				jsonc = { eslint_d, fixjson },
				lua = { luacheck, stylua },
				markdown = { prettier_d },
				python = { flake8, black },
				sh = { shellcheck, shfmt },
				svelte = { eslint_d, prettier_d },
				typescript = { eslint_d, prettier_d },
				typescriptreact = { eslint_d, prettier_d },
			},
		},
	})
end
