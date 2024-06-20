return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd([[colorscheme tokyonight]])
		require("tokyonight").setup({
			style = "night",
		})
	end,
}
