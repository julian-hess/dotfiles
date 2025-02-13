return {
	{
		"akinsho/toggleterm.nvim",

		version = "*",
		opts = {},
		config = function()
			require("toggleterm").setup({
				size = 15,
				open_mapping = [[<c-t>]],
				direction = "horizontal",
			})
		end,
	},
}
