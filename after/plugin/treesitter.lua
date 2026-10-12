require('nvim-treesitter').install({ 'python', 'rust', 'toml', 'mermaid', 'typescript', 'tsx', 'javascript', 'html', 'css', 'json' })
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'python', 'rust', 'toml', 'typescript', 'typescriptreact', 'javascript', 'javascriptreact', 'html',
    'css', 'json' },
  callback = function() vim.treesitter.start() end,
})
