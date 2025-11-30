return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()

			vim.keymap.set("n", "<leader>ha", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<leader>h1", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<leader>h2", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<C-3>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<C-4>", function()
				harpoon:list():select(4)
			end)
			vim.keymap.set("n", "<C-w>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<C-s>", function()
				harpoon:list():next()
			end)
		end,
	},
}
