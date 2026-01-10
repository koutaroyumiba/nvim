return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		config = function()
			require("conform").setup({
				format_on_save = { timeout_ms = 500, lsp_fallback = true },

				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					javascript = { "prettierd" },
					typescript = { "prettierd" },
					javascriptreact = { "prettierd" },
					typescriptreact = { "prettierd" },
					json = { "fixjson" },
					sh = { "shfmt" },
					go = { "gofumpt" },
					c = { "clang-format" },
					cpp = { "clang-format" },
				},
			})
		end,
	},
}
