return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		config = function()
			require("CopilotChat").setup()
			local wk = require("which-key")
			wk.register({
				a = {
					name = "Copilot Chat",
					c = { "<cmd>CopilotChatToggle<CR>", "Copilot Chat Toggle" },
					s = { "<cmd>CopilotChatSave<CR>", "Copilot Chat Save" },
					l = { "<cmd>CopilotChatLoad<CR>", "Copilot Chat Load" },
					mode = { 'n' },
				},
			}, { prefix = "<leader>" })
			wk.register({
				a = {
					name = "Copilot Chat",
					e = { "<cmd>CopilotChatExplain<CR>", "Copilot Chat Explain" },
					r = { "<cmd>CopilotChatReview<CR>", "Copilot Chat Review" },
					f = { "<cmd>CopilotChatFix<CR>", "Copilot Chat Fix" },
					o = { "<cmd>CopilotChatOptimize<CR>", "Copilot Chat Optimize" },
					w = { "<cmd>CopilotChatDocs<CR>", "Copilot Chat Docs" },
					t = { "<cmd>CopilotChatTests<CR>", "Copilot Chat Tests" },
					d = { "<cmd>CopilotChatFixDiagnostic<CR>", "Copilot Chat Diagnostic" },
					mode = { 'v' },
				},
			}, { prefix = "<leader>" })
		end,
		opts = {
			debug = true, -- Enable debugging
		},
	},
}
