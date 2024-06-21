-- nvim v0.8.0
return {
	"kdheepak/lazygit.nvim",
	event = "VeryLazy",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local wk = require("which-key")
		wk.register({
			g = {
				name = "LazyGit",
				g = {
					vim.cmd.LazyGit,
					"LazyGit",
				},
			},
		}, { prefix = "<leader>" })
	end,
}
