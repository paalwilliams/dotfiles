return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>ee",
			function()
				require("oil").open()
			end,
			desc = "[F]ormat buffer",
		},

		{
			"<leader>eh",
			function()
				require("oil.actions").toggle_hidden.callback()
			end,
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		default_file_explorer = true,
		view_options = {
			show_hidden = true,
		},
	},
}
