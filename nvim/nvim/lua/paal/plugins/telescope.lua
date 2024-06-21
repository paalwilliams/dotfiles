return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "tsakirist/telescope-lazy.nvim", "nvim-telescope/telescope-file-browser.nvim" },

	config = function()
		local builtin = require("telescope.builtin")

		local wk = require("which-key")
		wk.register({
			f = {
				name = "Telescope",
				f = {
					builtin.find_files,
					"Find Files",
				},
				h = {
					builtin.help_tags,
					"Help Tags",
				},
				b = {
					builtin.buffers,
					"Show Buffers",
				},
			},
			["/"] = { builtin.live_grep, "Live Grep" },
			["<leader>"] = { builtin.find_files, "Find Files" },
		}, { prefix = "<leader>" })

		-- vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		-- vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
		-- vim.keymap.set("n", "<leader>/", builtin.live_grep, {})
		-- vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		-- vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
	end,
}
