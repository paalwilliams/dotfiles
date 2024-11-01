return {
	"sindrets/diffview.nvim",
	keys = {
		{
			"<leader>dv",

			function()
				local branchname = vim.fn.input("Branch name: ")
				vim.api.nvim_exec("DiffviewOpen " .. branchname, false)
			end,
		},
	},
}
