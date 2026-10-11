print("hello nvim")
vim.o.nu = true
vim.o.rnu = true
vim.o.clipboard = 'unnamedplus'
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.o.timeout = false

vim.pack.add({'https://github.com/christoomey/vim-tmux-navigator'})
vim.pack.add({
	'https://github.com/nvim-lua/plenary.nvim', -- dependency
	'https://github.com/nvim-telescope/telescope.nvim'
})
vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })
