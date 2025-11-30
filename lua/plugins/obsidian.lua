return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/my_obsidian/kot-pkm",
			},
		},
		ui = { enable = false },
		disable_frontmatter = true,
		open_app_foreground = true,

		note_path_func = function(spec)
			local path = spec.dir / spec.title
			return path:with_suffix(".md")
		end,
	},
}
