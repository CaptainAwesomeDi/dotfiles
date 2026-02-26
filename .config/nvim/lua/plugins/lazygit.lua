return {
	"kdheepak/lazygit.nvim",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>gg", "<cmd>LazyGit<CR>", desc = "Open LazyGit" },
		{ "<leader>gF", "<cmd>LazyGitCurrentFile<CR>", desc = "LazyGit current file" },
	},
}
