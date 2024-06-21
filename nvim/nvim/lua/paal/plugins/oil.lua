return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local wk = require("which-key")
		local actions = require("oil.actions")
		wk.register({
			e = {
				name = "Oil",
				h = {
					actions.toggle_hidden.callback,
					"Toggle Hidden Files",
				},
				e = { actions.parent.callback, "Open parent directory" },
			},
		}, { prefix = "<leader>" })

		require("oil").setup({
			default_file_explorer = true,
		})
	end,
}
