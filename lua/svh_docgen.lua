local M = {}

M.create_helpfile = function()
	local project_dir = vim.fn.expand("%:p:h")
	project_dir = vim.fn.fnamemodify(project_dir, ":t")

	local project = vim.fn.input("project name", project_dir)
	if project == "" then
		vim.print("No project provided - exit.")
		return
	end

	vim.fn.mkdir("doc", "p")
	require("ts-vimdoc").docgen({
		input_file = "README.md",
		output_file = "doc/" .. project .. ".txt",
		project_name = project,
	})
end

return M
