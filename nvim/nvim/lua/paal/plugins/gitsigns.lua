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
			local wk = require('which-key');
			local gs = require("gitsigns")
			wk.register({
				g = {
					b = {
						gs.toggle_current_line_blame,
						"Toggle Current line Blame"
					},
				}
			}, {prefix = "<leader>"} )
			vim.keymap.set("n", "<leader>gb", gs.toggle_current_line_blame)
		end,
	},
}
