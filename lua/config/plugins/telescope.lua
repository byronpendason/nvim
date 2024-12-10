return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		'nvim-lua/plenary.nvim',
	},
	config = function()
		require("telescope").setup {
			pickers = {
				find_files = {
					theme = "dropdown"
				},
			}
		}
		vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = "Find files (using Telescope)" })
		vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = "Find files (using Telescope)" })
		vim.keymap.set('n', '<leader>fn', function()
			require('telescope.builtin').find_files {
				cwd = vim.fn.stdpath('config')
			}
		end, { desc = "Find files (using Telescope)" })
	end,
}
