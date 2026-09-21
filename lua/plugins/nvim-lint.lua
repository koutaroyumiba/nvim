return {
	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			local lint = require("lint")

			lint.linters.revive = require("lint.util").wrap(lint.linters.revive, function(diagnostic)
				if diagnostic.end_lnum and diagnostic.end_lnum < 0 then
					diagnostic.end_lnum = nil
				end

				if diagnostic.end_col and diagnostic.end_col < 0 then
					diagnostic.end_col = nil
				end

				return diagnostic
			end)

			lint.linters.luacheck = require("lint.util").wrap(lint.linters.luacheck, function(diagnostic)
				return diagnostic
			end)
			lint.linters.luacheck.args = {
				"--globals",
				"vim",
				"--formatter",
				"plain",
				"--codes",
				"--ranges",
				"-",
			}

			lint.linters_by_ft = {
				lua = { "luacheck" },
				python = { "ruff" },
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				javascriptreact = { "eslint_d" },
				typescriptreact = { "eslint_d" },
				json = { "eslint_d" },
				sh = { "shellcheck" },
				go = { "revive" },
				dockerfile = { "hadolint" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
}
