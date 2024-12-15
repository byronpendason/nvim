vim.opt.spell = true
vim.opt.spelllang = 'en_us'

vim.keymap.set('n', '<leader>r', ':w|terminal glow % <CR>', { desc = 'Preview file in Glow' })
