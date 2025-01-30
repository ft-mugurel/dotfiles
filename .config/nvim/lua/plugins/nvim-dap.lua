return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio"
		},
		config = function ()
			local dap, dapui = require("dap"), require("dapui")
			require("dapui").setup()
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
			end
			local wk = require("which-key")
			dap.adapters.gdb = {
				type = "executable",
				command = "gdb",
				args = { "-i", "dap" }
			}
			dap.configurations.c = {
				{
					name = "Launch",
					type = "gdb",
					request = "launch",
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = "${workspaceFolder}",
					stopAtBeginningOfMainSubprogram = false,
				},
			}
			wk.register({
				d = {
					name = "dbug",
					c = { function() dap.continue() end, "Continue" },
					p = { function() dap.step_over() end,"Step Over" },
					i = { function() dap.step_into() end, "Step Into" },
					o = { function() dap.step_out() end, "Step Out" },
					b = { function() dap.toggle_breakpoint() end, "Toggle Breakpoint" },
					mode = { 'n' },
				},
				}, { prefix = "<leader>" })
		end,
	},
}
