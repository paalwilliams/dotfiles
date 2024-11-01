-- vim.wo.relativenumber = true
vim.wo.number = true
vim.diagnostic.config({
	signs = false,
})
vim.cmd([[colorscheme tokyonight]])

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
