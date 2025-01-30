return {
	"alexghergh/nvim-tmux-navigation",
	config = function ()
		local nvim_tmux_nav = require('nvim-tmux-navigation')
		nvim_tmux_nav.setup {
			disable_when_zoomed = true -- defaults to false
		}
		local wk = require("which-key")
		wk.register({
			["<C-h>"] = {"<cmd>NvimTmuxNavigateLeft <CR>" , "nav left"},
			["<C-j>"] = {"<cmd>NvimTmuxNavigateDown <CR>" , "nav down"},
			["<C-k>"] = {"<cmd>NvimTmuxNavigateUp <CR>" , "nav up"},
			["<C-l>"] = {"<cmd>NvimTmuxNavigateRight <CR>" , "nav right"},
			["<C-\\>"] = {"<cmd>NvimTmuxNavigateLastActive <CR>" , "nav last"},
			["<C-Space>"] = {"<cmd>NvimTmuxNavigateNext <CR>" , "nav next"},
		})
	end
}
