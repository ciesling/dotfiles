return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					hide_hidden = false, -- show hidden files
					hide_dotfiles = false, -- show dotfiles
				},
			},
			window = {
				width = 25, -- set the width of the Neo-tree window
			},
		})
	end,
}

