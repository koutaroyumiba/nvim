return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	opts = {
		heading = {
			sign = false,
			position = "inline",
			width = "block",
			left_margin = 0.5,
			left_pad = 0.2,
			right_pad = 0.2,
		},
	},
}
