return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")

		wk.register({
			b = {
				name = "Bufferline",
				p = {
					vim.cmd.BufferLineTogglePin,
					"Toggle Pin",
				},

				o = {
					vim.cmd.BufferLineCloseOthers,
					"Delete Other Buffers",
				},
				r = {
					vim.cmd.BufferLineCloseRight,
					"Delete Other Buffers to the Right",
				},

				l = {
					vim.cmd.BufferLineCloseLeft,
					"Delete Other Buffers to the Left",
				},
			},
		}, { prefix = "<leader>" })

		wk.register({
			["<S-h>"] = {
				vim.cmd.BufferLineCyclePrev,
				"Cycle to Next Buffer",
			},

			["<S-l>"] = {
				vim.cmd.BufferLineCycleNext,
				"Cycle to Prev Buffer",
			},
		})
		require("bufferline").setup({})
	end,
}
