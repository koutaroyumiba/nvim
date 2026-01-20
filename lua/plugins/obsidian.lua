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
		daily_notes = {
			folder = "Daily Notes",
			-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
			template = "Daily Note Template.md",
		},
		-- Optional, for templates (see below).
		templates = {
			folder = "Templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
			-- A map for custom variables, the key should be the variable and the value a function
			substitutions = {},
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
