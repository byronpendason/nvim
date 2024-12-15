vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set('n', '<leader>e', ':lua MiniFiles.open()<CR>', {desc = 'Open file explorer' })
vim.keymap.set('n', '<C-s', ':write<CR>', { desc = 'Save file'} )

vim.keymap.set('n', '<M-j>', ':cnext<CR>', { desc = 'Goto next quickfix item' })
vim.keymap.set('n', '<M-k>', ':cprev<CR>', { desc = 'Goto previous quickfix item' })

vim.keymap.set("n", "<leader>vi", function()
    local filename = vim.fn.expand("<cfile>")
    vim.cmd(':terminal timg ' .. filename)
end, { desc = "View image, uses filename under cursor" })

-- vim.keymap.set('i', '<space><space><space>', '<Esc>', {} )
