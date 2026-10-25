require('diffview').setup()

-- in the diffview tab: close it
-- elsewhere: jump to an already-open diff tab, or open a new one
vim.keymap.set('n', '<leader>gd', function()
  local lib = require('diffview.lib')
  if lib.get_current_view() then
    vim.cmd('DiffviewClose')
    return
  end
  local DiffView = require('diffview.scene.views.diff.diff_view').DiffView
  for _, view in ipairs(lib.views) do
    if view:instanceof(DiffView) and vim.api.nvim_tabpage_is_valid(view.tabpage) then
      vim.api.nvim_set_current_tabpage(view.tabpage)
      return
    end
  end
  vim.cmd('DiffviewOpen')
end, { desc = 'Diffview (toggle / jump)' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', { desc = 'File history (diffview)' })
vim.keymap.set('n', '<leader>gH', '<cmd>DiffviewFileHistory<cr>', { desc = 'Branch history (diffview)' })
vim.keymap.set('v', '<leader>gh', ":DiffviewFileHistory<cr>", { desc = 'Selection history (diffview)' })
