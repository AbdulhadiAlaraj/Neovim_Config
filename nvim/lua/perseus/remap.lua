vim.cmd("set tabstop=4")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', 'j', 'jzz', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'kzz', { noremap = true }) 
vim.api.nvim_set_keymap('n', '<Down>', 'jzz', { noremap = true })
vim.api.nvim_set_keymap('n', '<Up>', 'kzz', { noremap = true })
vim.opt.relativenumber = true
vim.opt.number = true

