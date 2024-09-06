return {
	"nvim-lualine/lualine.nvim",

	config = function()
		local colors = {
			blue = '#80a0ff',
		}

		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = 'tokyonight',
				component_separators = '|',
				section_separators = '',
				disabled_filetypes = {},
			},
			sections = {
				lualine_a = {
					{
						function()
							return '▊'
						end,
						color = { fg = colors.blue },
						padding = { right = 0 },
					},
				},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'filetype'},
				lualine_y = {},
				lualine_z = {
					{
						function()
							return '▊'
						end,
						color = { fg = colors.blue },
						padding = { left = 0 },
					},
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = {}
		})
	end,
}

