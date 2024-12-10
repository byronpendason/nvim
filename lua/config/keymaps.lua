vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set('n', '<leader>e', ':lua MiniFiles.open()<CR>', {desc = 'Open file explorer' })
vim.keymap.set('n', '<C-s', ':write<CR>', { desc = 'Save file'} )

vim.keymap.set('n', '<A-l>', ':bnext<CR>', { desc = 'Navigate to the next buffer' })
vim.keymap.set('n', '<A-h>', ':bprevious<CR>', { desc = 'Navigate to the previous buffer' })
vim.keymap.set('n', '<A-l>s', ':ls<CR>', { desc = 'List buffers' })
vim.keymap.set('n', '<A-x>', ':bdelete<CR>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<A-a>', ':badd ', { desc = 'Add a new buffer' })
