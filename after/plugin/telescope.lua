local builtin = require('telescope.builtin')
-- project level
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fr', builtin.resume)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>gl', builtin.git_commits)
vim.keymap.set('n', '<leader>gg', builtin.git_status)
-- buffer level
vim.keymap.set('n', '<leader>bgl', builtin.git_bcommits)
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find)
vim.keymap.set('n', '<leader>q', builtin.quickfix)
vim.keymap.set('n', '<leader>gr', builtin.lsp_implementations)
vim.keymap.set('n', '<leader>gR', builtin.lsp_references)
vim.keymap.set('n', '<leader>d', builtin.diagnostics)
