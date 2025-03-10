return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "tsakirist/telescope-lazy.nvim", "nvim-telescope/telescope-file-browser.nvim" },
	keys = {
		{ "<leader><leader>", require("telescope.builtin").find_files, desc = "[F]ind [F]iles" },
		{ "<leader>/", require("telescope.builtin").live_grep, desc = "Live Grep" },
		{ "<leader>fb", require("telescope.builtin").buffers, desc = "[F]ind [B]uffers" },
		{ "<leader>fh", require("telescope.builtin").find_files, desc = "[F]ind [H]elp tags" },
		{
			"<leader>fdf",
			function()
				require("telescope.builtin").find_files({
					cwd = "~/src/dotfiles",
				})
			end,
		},

		{
			"<leader>gdf",
			function()
				require("telescope.builtin").live_grep({
					cwd = "~/src/dotfiles",
				})
			end,
		},
		{
			"<leader>fpac",
			function()
				require("telescope.builtin").find_files({
					cwd = "~/src/doctolib/phone-assistant-core/",
				})
			end,
		},
		{
			"<leader>gpac",
			function()
				require("telescope.builtin").live_grep({
					cwd = "~/src/doctolib/phone-assistant-core/",
				})
			end,
		},
		{
			"<leader>fpav",
			function()
				require("telescope.builtin").find_files({
					cwd = "~/src/doctolib/phone-assistant-voip/",
				})
			end,
		},
		{
			"<leader>gpav",
			function()
				require("telescope.builtin").live_grep({
					cwd = "~/src/doctolib/phone-assistant-voip/",
				})
			end,
		},

		{
			"<leader>fpaf",
			function()
				require("telescope.builtin").find_files({
					cwd = "~/src/doctolib/phone-assistant-flow-engine/",
				})
			end,
		},
		{
			"<leader>gpaf",
			function()
				require("telescope.builtin").live_grep({
					cwd = "~/src/doctolib/phone-assistant-flow-engine/",
				})
			end,
		},
	},
}
