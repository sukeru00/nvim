local neotest = require('neotest')

neotest.setup({
  adapters = {
    require('neotest-python')({
      runner = 'pytest',
      -- Prefer the project's .venv (created by `uv sync`/`uv run`).
      python = function()
        local venv = vim.fn.getcwd() .. '/.venv/bin/python'
        return vim.fn.executable(venv) == 1 and venv or 'python3'
      end,
      args = { '-q' },
    }),
  },
  -- Show failure messages on the failing line.
  status = { virtual_text = true },
  output = { open_on_run = false },
  quickfix = { open = false },
})

-- run
vim.keymap.set('n', '<leader>tt', function() neotest.run.run() end, { desc = 'Test nearest' })
vim.keymap.set('n', '<leader>tf', function() neotest.run.run(vim.fn.expand('%')) end, { desc = 'Test file'
})
vim.keymap.set('n', '<leader>ta', function() neotest.run.run(vim.uv.cwd()) end, { desc = 'Test all' })
vim.keymap.set('n', '<leader>tl', function() neotest.run.run_last() end, { desc = 'Test last' })
vim.keymap.set('n', '<leader>tx', function() neotest.run.stop() end, { desc = 'Test stop' })
-- view
vim.keymap.set('n', '<leader>ts', function() neotest.summary.toggle() end, { desc = 'Test summary' })
vim.keymap.set('n', '<leader>to', function() neotest.output.open({ enter = true, auto_close = true }) end,
  { desc = 'Test output' })
vim.keymap.set('n', '<leader>tO', function() neotest.output_panel.toggle() end, { desc = 'Test output panel' })
-- move between failed tests
vim.keymap.set('n', '<leader>tj', function() neotest.jump.next({ status = 'failed' }) end, { desc = 'Next failed test' })
vim.keymap.set('n', '<leader>tk', function() neotest.jump.prev({ status = 'failed' }) end, { desc = 'Prev failed test' })
