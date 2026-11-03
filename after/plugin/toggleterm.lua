require('toggleterm').setup({
  open_mapping = [[<C-\>]],
  direction = 'float',
})

-- leave terminal mode with <Esc> (instead of <C-\><C-n>)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
