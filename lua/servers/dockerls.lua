return function(capabilities)
	vim.lsp.config("dockerls", {
		capabilities = capabilities,
		filetypes = { "dockerfile" },
	})
end
