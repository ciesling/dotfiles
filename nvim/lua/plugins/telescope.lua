return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        require("telescope").setup({
            pickers = {
                colorscheme = {
                    enable_preview = true,
                },
            },

            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = require("telescope.actions").move_selection_next,  -- Move down
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,  -- Move up
                    },
                    n = {
                        ["<C-j>"] = require("telescope.actions").move_selection_next,  -- Move down in normal mode
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,  -- Move up in normal mode
                    },
                },
                layout_config = {
                    horizontal = {
                        preview_cutoff = 0,
                    },
                },
            },
        })
    end,
}

