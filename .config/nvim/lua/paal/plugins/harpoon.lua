return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local wk = require("which-key")
		local harpoon = require("harpoon")
		wk.register({

			h = {
				name = "Harpoon",
				a = {
					function()
						harpoon:list():add()
					end,
					"Add item to harpoon",
				},

				o = {

					function()
						harpoon.ui:toggle_quick_menu(harpoon:list())
					end,
					"Show Harpoon List",
				},
			},
		}, { prefix = "<leader>" })
		harpoon:setup()
	end,
}
