return {
	"tpope/vim-fugitive",
	config = function()
		local wk = require("which-key")
		wk.register({
			g = {
				name = "Git",
				s = { vim.cmd.Git, "Fugitive" },
			},
			}, { prefix = "<leader>" })
	end
}
