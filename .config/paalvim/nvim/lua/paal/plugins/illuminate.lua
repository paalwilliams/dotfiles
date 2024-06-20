return { 
	"RRethy/vim-illuminate",
	config = function()
	  -- Use highlight set by by LSP instead of the default 'underline'
	  vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "hl-LspReferenceText" })
	  vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "hl-LspReferenceRead" })
	  vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "hl-LspReferenceWrite" })
	end
}
