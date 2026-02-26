return {
	"crnvl96/lazydocker.nvim",
	cmd = { "LazyDocker", "LazyDockerPodman" },
	dependencies = { "akinsho/toggleterm.nvim" },
	opts = {
		window = {
			settings = {
				border = "rounded",
			},
		},
	},
	config = function(_, opts)
		local lazydocker = require("lazydocker")
		lazydocker.setup(opts)

		vim.api.nvim_create_user_command("LazyDocker", function()
			lazydocker.toggle({ engine = "docker" })
		end, { desc = "Toggle LazyDocker (docker)" })

		vim.api.nvim_create_user_command("LazyDockerPodman", function()
			lazydocker.toggle({ engine = "podman" })
		end, { desc = "Toggle LazyDocker (podman)" })
	end,
	keys = {
		{
			"<leader>gd",
			function()
				require("lazydocker").toggle({ engine = "docker" })
			end,
			mode = { "n", "t" },
			desc = "Toggle LazyDocker (docker)",
		},
	},
}
