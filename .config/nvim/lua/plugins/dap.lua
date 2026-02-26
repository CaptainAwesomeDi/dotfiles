return {
	"mfussenegger/nvim-dap",
	keys = {
		{ "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle breakpoint" },
		{ "<leader>dc", function() require("dap").continue() end, desc = "Debug: Continue" },
		{ "<leader>di", function() require("dap").step_into() end, desc = "Debug: Step into" },
		{ "<leader>do", function() require("dap").step_over() end, desc = "Debug: Step over" },
		{ "<leader>dO", function() require("dap").step_out() end, desc = "Debug: Step out" },
		{ "<leader>dr", function() require("dap").repl.toggle() end, desc = "Debug: Toggle REPL" },
		{ "<leader>dl", function() require("dap").run_last() end, desc = "Debug: Run last" },
		{ "<leader>du", function() require("dapui").toggle() end, desc = "Debug: Toggle UI" },
	},
}
