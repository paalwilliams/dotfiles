return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	opts = {
		options = {
			always_show_bufferline = true,
			diagnostics = "nvim_lsp",
		},
	},
	keys = {
		{ "<leader>bp", vim.cmd.BufferLineTogglePin, desc = "[B]ufferline toggle [p]in" },
		{ "<leader>bo", vim.cmd.BufferLineCloseOthers, desc = "[B]ufferline close [o]ther buffers" },
		{ "<leader>br", vim.cmd.BufferLineCloseRight, desc = "[B]ufferline close buffers to the [r]ight" },
		{ "<leader>bl", vim.cmd.BufferLineCloseLeft, desc = "[B]ufferline close buffers to the [l]eft" },
		{ "<S-h>", vim.cmd.BufferLineCyclePrev, desc = "Cycle to prev buffer" },
		{ "<S-l>", vim.cmd.BufferLineCycleNext, desc = "Cycle to next buffer" },
	},
}
