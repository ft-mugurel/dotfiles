return{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {"python","go", "java", "c", "cpp", "lua", "rust", "markdown", "markdown_inline", "latex", "html" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },  
		})
	end
}
