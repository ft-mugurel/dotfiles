return {
	"mbbill/undotree",
	config = function()
		local wk = require("which-key")
		wk.register({
			u = { vim.cmd.UndotreeToggle, "Undotree Toggle" },
			mode = { 'n' },
			}, { prefix = "<leader>" })
	end
}
