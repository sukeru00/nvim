local gitsigns = require('gitsigns')

gitsigns.setup({
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '-' },
    topdelete = { text = '-' },
    changedelete = { text = '~' },
  },
})

vim.keymap.set('n', '<leader>gj', function() gitsigns.nav_hunk('next') end, { desc = 'Next git hunk' })
vim.keymap.set('n', '<leader>gk', function() gitsigns.nav_hunk('prev') end, { desc = 'Prev git hunk' })
vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, { desc = 'Preview git hunk' })
vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk, { desc = 'Reset hunk' })
vim.keymap.set('v', '<leader>gr', function()
  gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
end, { desc = 'Reset selected lines' })
vim.keymap.set('n', '<leader>gs', gitsigns.stage_hunk, { desc = 'Stage hunk (toggle)' })
vim.keymap.set('v', '<leader>gs', function()
  gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
end, { desc = 'Stage selected lines' })
vim.keymap.set('n', '<leader>gR', gitsigns.reset_buffer, { desc = 'Reset buffer' })
