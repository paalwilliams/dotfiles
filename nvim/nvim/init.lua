require("paal")
require("paal.lazy_config")
require("paal.remap")
require("paal.vim_config")

-- load vimrc
local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

require('oil').setup({
	default_file_explorer = true
})
