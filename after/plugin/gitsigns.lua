local gitsigns = require('gitsigns')

vim.keymap.set('n', '<leader>gj', function() gitsigns.nav_hunk('next') end, { desc = 'Next git hunk' })
vim.keymap.set('n', '<leader>gk', function() gitsigns.nav_hunk('prev') end, { desc = 'Prev git hunk' })
vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, { desc = 'Preview git hunk' })
