return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local function system_is_dark()
			if vim.fn.has("mac") == 1 then
				local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
				if handle then
					local output = handle:read("*a") or ""
					handle:close()
					return output:match("Dark") ~= nil
				end
			end

			return vim.o.background == "dark"
		end

		local function apply_theme_from_system()
			local flavour = system_is_dark() and "mocha" or "latte"
			vim.o.background = flavour == "latte" and "light" or "dark"

			require("catppuccin").setup({
				flavour = flavour,
			})

			vim.cmd.colorscheme("catppuccin")
		end

		local theme_group = vim.api.nvim_create_augroup("SystemThemeSync", { clear = true })
		vim.api.nvim_create_autocmd({ "VimEnter", "FocusGained" }, {
			group = theme_group,
			callback = apply_theme_from_system,
		})

		apply_theme_from_system()
	end,
}
