return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    event = {"BufReadPost", "BufNewFile"},
    branch = "master",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "json",
                "javascript",
                "typescript",
                "tsx",
                "yaml",
                "html",
                "css",
                "markdown",
                "markdown_inline",
                "svelte",
                "graphql",
                "go",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "cpp",
                "c",
            },
            auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        })
    end,
}
