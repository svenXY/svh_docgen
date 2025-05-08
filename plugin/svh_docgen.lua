vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "Readme.md", "README.md" },
	callback = function()
		vim.api.nvim_create_user_command("SvhDocgen", function()
			require("svh_docgen").create_helpfile()
		end, { desc = "Create helpfile from README.md" })
	end,
	group = vim.api.nvim_create_augroup("SvhDocGenGroup", {}),
})
