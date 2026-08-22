return {
	"selimacerbas/markdown-preview.nvim",
	dependencies = { "selimacerbas/live-server.nvim" },
	config = function()
		require("markdown_preview").setup({})
	end
}
