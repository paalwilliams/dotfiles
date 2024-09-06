return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter", -- load cmp on InsertEnter
	dependencies = {
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-buffer",
		"L3MON4D3/LuaSnip",
	},
	opts = function()
		local cmp = require("cmp")
		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		return {
			sources = {
				{ name = "path" },
				{ name = "nvim_lsp" },
				{ name = "nvim_lua" },
				{ name = "luasnip", keyword_length = 2 },
				{ name = "buffer", keyword_length = 3 },
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<Up>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
				["<Down>"] = cmp.mapping.select_next_item({ behavior = "select" }),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-n>"] = cmp.mapping(function()
					if cmp.visible() then
						cmp.select_next_item({ behavior = "insert" })
					else
						cmp.complete()
					end
				end),
				["<Enter>"] = function(fallback)
					-- Don't block <CR> if signature help is active
					-- https://github.com/hrsh7th/cmp-nvim-lsp-signature-help/issues/13
					if
						not cmp.visible()
						or not cmp.get_selected_entry()
						or cmp.get_selected_entry().source.name == "nvim_lsp_signature_help"
					then
						fallback()
					else
						cmp.confirm({
							-- Replace word if completing in the middle of a word
							-- https://github.com/hrsh7th/nvim-cmp/issues/664
							behavior = cmp.ConfirmBehavior.Replace,
							-- Don't select first item on CR if nothing was selected
							select = false,
						})
					end
				end,
			}),
		}
	end,
}



