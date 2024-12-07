return {
	'echasnovski/mini.nvim',
	config = function()
		require('mini.statusline').setup({ use_icons = true })
		require('mini.basics').setup()
		require('mini.operators').setup()
		require('mini.pairs').setup()
		require('mini.surround').setup()
		require('mini.files').setup()
		require('mini.tabline').setup()
		require('mini.starter').setup({header = [[************************************************************
*.__   __.  _______   ______   ____    ____  __  .___  ___.*
*|  \ |  | |   ____| /  __  \  \   \  /   / |  | |   \/   |*
*|   \|  | |  |__   |  |  |  |  \   \/   /  |  | |  \  /  |*
*|  . `  | |   __|  |  |  |  |   \      /   |  | |  |\/|  |*
*|  |\   | |  |____ |  `--'  |    \    /    |  | |  |  |  |*
*|__| \__| |_______| \______/      \__/     |__| |__|  |__|*
************************************************************]]})
		require('mini.completion').setup()
		require('mini.icons').setup()
		require('mini.notify').setup()
	end,
}