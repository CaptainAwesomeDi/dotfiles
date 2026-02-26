return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	keys = {
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics (Trouble)" },
		{ "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer diagnostics" },
		{ "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Quickfix list" },
		{ "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Location list" },
		{ "<leader>xs", "<cmd>Trouble symbols toggle focus=false<CR>", desc = "Symbols" },
	},
}
