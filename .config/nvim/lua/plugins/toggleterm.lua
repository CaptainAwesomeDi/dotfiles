return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		float_opts = {
			border = "rounded",
		},
	},
	config = function(_, opts)
		require("toggleterm").setup(opts)

		vim.keymap.set({ "n", "t" }, "<leader>tt", function()
			vim.cmd("ToggleTerm")
		end, { desc = "Toggle terminal" })

		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal normal mode" })
	end,
}
