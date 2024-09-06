return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys={
		{"ha", function ()
			local harpoon = require('harpoon')
			harpoon:list():add()
		end, desc= "[H]arpoon [a]dd item"},
		{"ho", function ()
			local harpoon = require("harpoon")
			harpoon.ui:toggle_quick_menu(harpoon:list())
	end, desc= "[H]arpoon [o]pen list"}
	},
}
