require('nvim-treesitter').install({ 'python', 'rust', 'toml', 'mermaid' })
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'python', 'rust', 'toml' },
  callback = function() vim.treesitter.start() end,
})
