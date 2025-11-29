return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"creativenull/efmls-configs-nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		require("utils.diagnostics").setup()
		require("servers")
	end,
}
