return {
	"voldikss/vim-floaterm",
	config = function()
		local wk = require("which-key")
		wk.register({
			f = {

				name = "Floaterm",
				t = {
					vim.cmd.FloatermNew,
					"New Floaterm",
				},
			},
		}, { prefix = "<leader>" })
	end,
}
