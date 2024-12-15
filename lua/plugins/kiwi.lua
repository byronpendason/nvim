return {
	'serenevoid/kiwi.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		-- Use default path (i.e. ~/wiki/)
		local kiwi = require('kiwi')

		-- Necessary keybindings
		vim.keymap.set('n', '<leader>ww', kiwi.open_wiki_index, {})
		vim.keymap.set('n', 'T', kiwi.todo.toggle, {})
	end
}
