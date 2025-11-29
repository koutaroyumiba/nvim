return {
    "ibhagwan/fzf-lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        {
            "<leader>ff",
            function()
                require("fzf-lua").files()
            end,
            desc = "fzf files in cwd",
        },
        {
            "<leader>fs",
            function()
                require("fzf-lua").live_grep()
            end,
            desc = "fzf live grep in cwd",
        },
        {
            "<leader>fb",
            function()
                require("fzf-lua").buffers()
            end,
            desc = "fzf buffers",
        },
        {
            "<leader>fh",
            function()
                require("fzf-lua").help_tags()
            end,
            desc = "fzf help tags",
        },
        {
            "<leader>fx",
            function()
                require("fzf-lua").diagnostics_document()
            end,
            desc = "fzf diagnostics document",
        },
        {
            "<leader>fX",
            function()
                require("fzf-lua").diagnostics_workspace()
            end,
            desc = "fzf diagnostics workspace",
        },
        {
            "<leader>gc",
            function()
                require("fzf-lua").git_commits()
            end,
            desc = "fzf git commits",
        },
        {
            "<leader>gb",
            function()
                require("fzf-lua").git_branches()
            end,
            desc = "fzf git branches",
        },
    },
    opts = {},
}
