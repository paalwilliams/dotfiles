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

local jqx = vim.api.nvim_create_augroup("Jqx", {})
vim.api.nvim_clear_autocmds({ group = jqx })
vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = { "*.json", "*.yaml" },
	desc = "preview json and yaml files on open",
	group = jqx,
	callback = function()
		vim.cmd.JqxList()
	end,
})
