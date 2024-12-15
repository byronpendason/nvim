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
				buffers = {
					theme = "dropdown"
				},
				find_files = {
					theme = "dropdown"
				},
				oldfiles = {
					theme = "dropdown"
				},
				live_grep = {
					theme = "dropdown"
				},
				current_buffer_fuzzy_find = {
					theme = "dropdown"
				},
			},
			extensions = {
				fzf = {}
			}
		}

		require("telescope").load_extension('fzf')

		vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = "Find files" })
		vim.keymap.set('n', '<leader>fd', require('telescope.builtin').live_grep, { desc = "Find in curent directory" })
		vim.keymap.set('n', '<leader>fc', require('telescope.builtin').current_buffer_fuzzy_find, { desc = "Find in curent file" })
		vim.keymap.set('n', '<leader>fr', require('telescope.builtin').oldfiles, { desc = "Find recent files" })
		vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = "Find Help files" })
		vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = "Find Buffers" })
		vim.keymap.set('n', '<leader>fn', function()
			require('telescope.builtin').find_files {
				cwd = vim.fn.stdpath('config'),
			}
		end, { desc = "Find Neovim config files"})
	end,
}
