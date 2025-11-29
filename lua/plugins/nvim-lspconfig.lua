return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "creativenull/efmls-configs-nvim",
    },
    config = function()
        require("utils.diagnostics").setup()
        require("servers")
    end
}
