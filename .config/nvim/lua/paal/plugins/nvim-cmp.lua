return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		{ "L3MON4D3/LuaSnip" },
	},
	config = function()
		-- Here is where you configure the autocompletion settings.
		local lsp_zero = require("lsp-zero")
		lsp_zero.extend_cmp()

		local cmp = require("cmp")

		cmp.setup({
			sources = {
				{ name = "nvim_lsp" },
			},
			mapping = {
				["<C-y>"] = cmp.mapping.confirm({ select = false }),
				["<C-e>"] = cmp.mapping.abort(),
				["<Up>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
				["<Down>"] = cmp.mapping.select_next_item({ behavior = "select" }),
				["<C-p>"] = cmp.mapping(function()
					if cmp.visible() then
						cmp.select_prev_item({ behavior = "insert" })
					else
						cmp.complete()
					end
				end),
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
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						local entries = cmp.get_entries()
						cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })

						if #entries == 1 then
							cmp.confirm()
						end
					else
						fallback()
					end
				end, { "i", "s" }),
			},
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
		})
	end,
}
