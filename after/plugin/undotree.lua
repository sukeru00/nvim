-- built-in undotree (nvim 0.12+): opt package shipped with the runtime
vim.cmd.packadd('nvim.undotree')

vim.keymap.set('n', '<leader>u', '<cmd>Undotree<cr>', { desc = 'Undotree (toggle)' })
