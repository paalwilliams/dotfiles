vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>")
vim.keymap.set("n", "<leader>fs", ":lua vim.lsp.buf.formatting_sync()<CR>:w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "d", '"_d')
vim.keymap.set("n", "dd", '"_dd')

vim.keymap.set("v", "d", '"_d')
vim.keymap.set("v", "dd", '"_dd')

vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>")
