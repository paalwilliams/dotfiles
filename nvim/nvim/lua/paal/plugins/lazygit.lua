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
	keys = {
		{"<leader>gg", vim.cmd.LazyGit, desc="Lazy[g]it"}
	},
}
