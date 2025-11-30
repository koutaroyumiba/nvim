local M = {}

M.on_attach = function(event)
	local client = vim.lsp.get_client_by_id(event.data.client_id)
	if not client then
		return
	end
	local bufnr = event.buf
	local keymap = vim.keymap.set
	local opts = {
		noremap = true, -- prevent recursive mapping
		silent = true, -- don't print the cmd to cli
		buffer = bufnr,
	}

	-- native neovim keymaps
	keymap("n", "gd", vim.lsp.buf.definition, opts) -- go to definition
	keymap("n", "gD", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", opts) -- go to definition in split
	keymap("n", "<leader>vca", vim.lsp.buf.code_action, opts) -- selects an available code action
	keymap("n", "<leader>vrn", vim.lsp.buf.rename, opts) -- rename symbol
	keymap("n", "<leader>vd", vim.diagnostic.open_float, opts) -- cursor diagnostics
	keymap("n", "<leader>vD", "<cmd>lua vim.diagnostic.open_float({ scope = 'line' })<CR>", opts) -- line diagnostics
	keymap("n", "<leader>pd", vim.diagnostic.goto_prev, opts) -- previous diagnostic
	keymap("n", "<leader>nd", vim.diagnostic.goto_next, opts) -- next diagnostic
	keymap("n", "K", vim.lsp.buf.hover, opts) -- displays hover information about symbol under cursor

	-- fzf-lua keymaps
	keymap("n", "<leader>fd", "<cmd>FzfLua lsp_finder<CR>", opts) -- lsp finder (definitions + references)
	keymap("n", "<leader>fr", "<cmd>FzfLua lsp_references<CR>", opts) -- show all references to symbol under cursor
	keymap("n", "<leader>ft", "<cmd>FzfLua lsp_typedefs<CR>", opts) -- jump to the typedefs of symbol under cursor
	keymap("n", "<leader>ds", "<cmd>FzfLua lsp_document_symbols<CR>", opts) -- list all symbols in file
	keymap("n", "<leader>ws", "<cmd>FzfLua lsp_workspace_symbols<CR>", opts) -- search for symbol across entire project
	keymap("n", "<leader>fi", "<cmd>FzfLua lsp_implementations<CR>", opts) -- go to implementation

	-- order imports (if supported by the client LSP)
	if client:supports_method("textDocument/codeAction", bufnr) then
		keymap("n", "<leader>oi", function()
			vim.lsp.buf.code_action({
				context = {
					only = { "source.organizeImports" },
					diagnostics = {},
				},
				apply = true,
				bufnr = bufnr,
			})
			-- format after changing import order
			vim.defer_fn(function()
				vim.lsp.buf.format({ bufnr = bufnr })
			end, 50)
		end, opts)
	end
end

return M
