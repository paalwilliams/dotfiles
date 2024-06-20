return {
	"williamboman/mason.nvim",
dependencies = {
	'williamboman/mason-lspconfig.nvim',
},
config = function()
	local lspconfig = require("lspconfig")
	local mason = require("mason")
	local mason_lspconfig = require("mason-lspconfig")

	local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
	mason.setup()

	mason_lspconfig.setup({
  	  ensure_installed= {
		'tsserver',
		'eslint',
		'html',
		'cssls'
	},
	handlers = {
	  function(server)
	    lspconfig[server].setup({
		capabilities = lsp_capabilities
	})
	end,
	['tsserver'] = function()
	  lspconfig.tsserver.setup({
		capabilities = lsp_capabilities,
		settings = {
		  completions = {
		    completeFunctionCalls = true
	      }
	    }
 	  })
  end
}
})
end,

}

