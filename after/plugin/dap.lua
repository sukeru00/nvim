local dap = require('dap')

-- Use the project's .venv (debugpy is in the dev group).
require('dap-python').setup(vim.fn.getcwd() .. '/.venv/bin/python')
require('dap-python').test_runner = 'pytest'

vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Toggle breakpoint' })
vim.keymap.set('n', '<leader>dc', dap.continue, { desc = 'Continue' })
vim.keymap.set('n', '<leader>dn', dap.step_over, { desc = 'Step over' })
vim.keymap.set('n', '<leader>di', dap.step_into, { desc = 'Step into' })
vim.keymap.set('n', '<leader>do', dap.step_out, { desc = 'Step out' })
vim.keymap.set('n', '<leader>dq', dap.terminate, { desc = 'Terminate' })
vim.keymap.set('n', '<leader>dv', '<cmd>DapViewToggle<cr>', { desc = 'Debug view' })
