require('diffview').setup({ use_icons = false }) -- no nvim-web-devicons installed

-- toggle: close the diffview tab if one is open, otherwise open one
vim.keymap.set('n', '<leader>gd', function()
  if require('diffview.lib').get_current_view() then
    vim.cmd('DiffviewClose')
  else
    vim.cmd('DiffviewOpen')
  end
end, { desc = 'Diffview (toggle)' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', { desc = 'File history (diffview)' })
vim.keymap.set('n', '<leader>gH', '<cmd>DiffviewFileHistory<cr>', { desc = 'Branch history (diffview)' })
vim.keymap.set('v', '<leader>gh', ":DiffviewFileHistory<cr>", { desc = 'Selection history (diffview)' })
