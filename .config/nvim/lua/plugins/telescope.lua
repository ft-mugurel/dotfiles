return {
	"nvim-telescope/telescope.nvim", tag = "0.1.6",
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		local builtin = require('telescope.builtin')
		local wk = require("which-key")
		vim.keymap.set('n', '<C-i>', builtin.find_files, {})
		wk.register({
			b = {
				name = "Telescope",
				f = { builtin.find_files, "Telescope File" },
				g = { builtin.git_files, "Telescope Git" },
				b = { builtin.buffers, "Telescope Buffers" },
				o = { builtin.oldfiles, "Telescope Old Files" },
				s = { builtin.lsp_document_symbols, "Telescope Old Files" },
				mode = { 'n' },
			},
			}, { prefix = "<leader>" })
	end
}
