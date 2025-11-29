return function(capabilities)
	vim.lsp.config("tailwindcss", {
		capabilities = capabilities,
		filetypes = {
			"javscript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"svelte",
		},
	})
end
