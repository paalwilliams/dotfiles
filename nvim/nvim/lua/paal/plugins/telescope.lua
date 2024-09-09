return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "tsakirist/telescope-lazy.nvim", "nvim-telescope/telescope-file-browser.nvim" },
	keys = {
		{ "<leader>ff", require("telescope.builtin").find_files, desc = "[F]ind [F]iles" },
		{ "<leader><leader>", require("telescope.builtin").find_files, desc = "[F]ind [F]iles" },
		{ "<leader>/", require("telescope.builtin").live_grep, desc = "Live Grep" },
		{ "<leader>fb", require("telescope.builtin").buffers, desc = "[F]ind [B]uffers" },
		{ "<leader>fh", require("telescope.builtin").find_files, desc = "[F]ind [H]elp tags" },
	},
}
