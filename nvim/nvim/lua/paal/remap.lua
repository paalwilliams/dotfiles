vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>")
vim.keymap.set("n", "<leader>fs", ":lua vim.lsp.buf.formatting_sync()<CR>:w<CR>", { noremap = true, silent = true })
--
-- vim.keymap.set("n", "d", '"_d')
-- vim.keymap.set("n", "dd", '"_dd')
--
-- vim.keymap.set("v", "d", '"_d')
-- vim.keymap.set("v", "dd", '"_dd')

-- note: diagnostics are not exclusive to lsp servers
-- so these can be global keybindings
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end)
vim.keymap.set("n", "[d", function()
	vim.diagnostic.goto_prev()
end)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.goto_next()
end)

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf }

		-- This should really be removed in favor of a function quick fix list.
		vim.api.nvim_command(":cclose")

		-- these will be buffer-local keybindings
		-- because they only work if you have an active language server

		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, opts)
		vim.keymap.set("n", "gD", function()
			vim.lsp.buf.declaration()
		end, opts)
		vim.keymap.set("n", "gi", function()
			vim.lsp.buf.implementation()
		end, opts)
		vim.keymap.set("n", "go", function()
			vim.lsp.buf.type_definition()
		end, opts)
		vim.keymap.set("n", "gr", function()
			vim.lsp.buf.references()
		end, opts)
		vim.keymap.set("n", "gs", function()
			vim.lsp.buf.signature_help()
		end, opts)
		vim.keymap.set("n", "<leader>rn", function()
			vim.lsp.buf.rename()
		end, opts)
		vim.keymap.set("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end, opts)
	end,
})
