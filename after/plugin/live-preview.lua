require('livepreview.config').set({
  browser = 'explorer.exe', -- wsl
  picker = 'telescope',
})
vim.keymap.set('n', '<leader>lps', '<cmd>LivePreview start<cr>')
vim.keymap.set('n', '<leader>lpc', '<cmd>LivePreview close<cr>')
vim.keymap.set('n', '<leader>lpp', '<cmd>LivePreview pick<cr>')
