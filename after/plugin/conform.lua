require('conform').setup({
  formatters_by_ft = {
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    javascript = { 'prettier' },
    javascriptreact = { 'prettier' },
    css = { 'prettier' },
    json = { 'prettier' },
  },
  format_on_save = { timeout_ms = 1000, lsp_format = 'fallback' },
})
