return {
	-- Adds git releated signs to the gutter, as well as utilities for managing changes
	"lewis6991/gitsigns.nvim",
	opts = {
		-- See `:help gitsigns.txt`
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		on_attach = function(bufnr)
			local gs = require("gitsigns")
			vim.keymap.set("n", "<leader>gp", gs.preview_hunk, { buffer = bufnr, desc = "[P]review Hunk" })
			vim.keymap.set("n", "<leader>gpn", gs.next_hunk, { buffer = bufnr, desc = "Next Hunk" })
			vim.keymap.set("n", "<leader>gpp", gs.prev_hunk, { buffer = bufnr, desc = "Previous Hunk" })
			vim.keymap.set("n", "<leader>gb", gs.toggle_current_line_blame)
		end,
	},
}
