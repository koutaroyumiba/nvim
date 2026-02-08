return function(capabilities)
	vim.lsp.config("ts_ls", {
		capabilities = capabilities,
		filetypes = {
			"typescript",
			"javascript",
			"typescriptreact",
			"javascriptreact",
		},
		settings = {
			typescript = {
				indentStyle = "space",
				indentSize = 2,
			},
		},
		root_dir = vim.fs.root(0, {
			"tsconfig.json",
			"package.json",
			"jsconfig.json",
			".git",
		}),
	})
end
