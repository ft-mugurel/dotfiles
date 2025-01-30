return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = { 
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", 
	},
	config = function ()
		local wk = require("which-key")
		wk.register({
			n = { "<cmd>Neotree filesystem toggle <CR>", "Neotree" },
			mode = { 'n' },
			}, { prefix = "<leader>" })
	end
}
