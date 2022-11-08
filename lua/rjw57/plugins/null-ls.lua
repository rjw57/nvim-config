-- import nullls plugin safely
local nullls_status, nullls = pcall(require, "null-ls")
if not nullls_status then
	return
end

-- import nullls plugin safely
local mason_nullls_status, mason_nullls = pcall(require, "mason-null-ls")
if not mason_nullls_status then
	return
end

mason_nullls.setup({
	ensure_installed = {
		"autopep8",
		"flake8",
		"mypy",
		"prettier",
	},
	automatic_installation = true,
	automatic_setup = false,
})
