return function(capabilities)
	vim.lsp.config("pyright", {
		capabilities = capabilities,
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "strict",
					autoSearchPaths = true,
					diagnosticMode = "workspace",
				},
			},
		},
	})
end
