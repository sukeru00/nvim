require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        width = 0.95,
        height = 0.95,
        preview_height = 0.6,
      },
    },
  },
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown(),
    },
  },
})

require('telescope').load_extension('ui-select')
local builtin = require('telescope.builtin')

-- project level
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = 'Resume last search' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Grep in project' })
vim.keymap.set('n', '<leader>gl', builtin.git_commits, { desc = 'Git log' })
vim.keymap.set('n', '<leader>gg', builtin.git_status, { desc = 'Git status' })
-- buffer level
vim.keymap.set('n', '<leader>bgl', builtin.git_bcommits, { desc = 'Git log of this file' })
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = 'Search in this file' })
vim.keymap.set('n', '<leader>q', builtin.quickfix, { desc = 'Quickfix list' })
vim.keymap.set('n', '<leader>d', builtin.diagnostics, { desc = 'Diagnostics' })
