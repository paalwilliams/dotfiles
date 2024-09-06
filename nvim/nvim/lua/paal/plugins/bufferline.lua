return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	keys = {
		{"bp", vim.cmd.BufferLineTogglePin, desc="[B]ufferline toggle [p]in"},
		{"bo", vim.cmd.BufferLineCloseOthers, desc="[B]ufferline close [o]ther buffers"},
		{"br", vim.cmd.BufferLineCloseRight, desc="[B]ufferline close buffers to the [r]ight"},
		{"bl", vim.cmd.BufferLineCloseLeft, desc="[B]ufferline close buffers to the [l]eft"},
		{"<S-h>", vim.cmd.BufferLineCyclePrev, desc="Cycle to prev buffer"},
		{"<S-l>", vim.cmd.BufferLineCycleNext, desc="Cycle to next buffer"},

	},
}
