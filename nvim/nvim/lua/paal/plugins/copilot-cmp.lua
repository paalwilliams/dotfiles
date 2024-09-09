return {
	"zbirenbaum/copilot-cmp",
	dependencies = { "copilot.lua", "hrsh7th/nvim-cmp" },
	opts = {},
	config = function(_, opts)
		local copilot_cmp = require("copilot_cmp")
		copilot_cmp.setup(opts)
	end,
}
