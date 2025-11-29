return function(capabilities)
	vim.lsp.config("emmet_ls", {
		capabilities = capabilities,
		filetypes = {
			"html",
			"typescript",
			"javascript",
			"typescriptreact",
			"javascriptreact",
			"css",
			"sass",
			"scss",
			"svelte",
		},
	})
end
