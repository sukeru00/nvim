print('hello nvim')
vim.o.nu = true
vim.o.rnu = true
vim.o.clipboard = 'unnamedplus'
vim.o.termguicolors = true
vim.o.winborder = 'rounded'
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'File explorer (netrw)' })
vim.o.timeout = false

vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name == 'nvim-treesitter' and ev.data.kind == 'update' then
      vim.cmd('TSUpdate')
    end
  end,
})
vim.pack.add({ 'https://github.com/christoomey/vim-tmux-navigator' })
vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim', -- dependency
  'https://github.com/nvim-telescope/telescope.nvim'
})
vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })
vim.pack.add({ 'https://github.com/folke/which-key.nvim' })
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })
vim.pack.add({ 'https://github.com/folke/tokyonight.nvim' })
vim.pack.add({ 'https://github.com/lewis6991/gitsigns.nvim' })
vim.cmd.colorscheme('tokyonight-night')
