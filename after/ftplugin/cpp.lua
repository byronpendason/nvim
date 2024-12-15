vim.keymap.set('n', '<leader>r', ':w|split|terminal clang++ % -o output && ./output<CR>', { desc = "Run code"})
