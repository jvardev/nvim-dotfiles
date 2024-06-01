return {
		"echasnovski/mini.files",
		config = function()
			require('mini.files').setup({
				windows = {
					preview = true,
					width_focus = 30,
					width_preview = 30,
				},
			})
			
			-- Keybinding to toggle file explorer
			vim.keymap.set('n', '<leader>e', function()
				require('mini.files').open()
			end, { desc = 'Open file explorer' })
		end,
}
