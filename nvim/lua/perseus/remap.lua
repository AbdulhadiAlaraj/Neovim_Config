vim.cmd("set tabstop=4")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', 'j', 'jzz', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'kzz', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>', 'jzz', { noremap = true })
vim.api.nvim_set_keymap('n', '<Up>', 'kzz', { noremap = true })

vim.api.nvim_set_keymap('n', '0', '$', { noremap = true })
vim.api.nvim_set_keymap('n', '9', '0', { noremap = true })
vim.api.nvim_set_keymap('v', '0', '$', { noremap = true })
vim.api.nvim_set_keymap('v', '9', '0', { noremap = true })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { silent = true })

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.colorcolumn = "90"
vim.cmd("highlight ColorColumn guibg=#887CAA")

vim.keymap.set('n', '<C-d>', "<C-d>zz", { silent = true })
vim.keymap.set('n', '<C-u>', "<C-u>zz", { silent = true })
vim.keymap.set('n', 'n', "nzzzv", { silent = true })
vim.keymap.set('n', 'N', "Nzzzv", { silent = true })

vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+y")

vim.keymap.set('n', '<leader>f', function()
	vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
