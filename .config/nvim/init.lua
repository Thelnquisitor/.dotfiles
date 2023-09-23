require("plugins")

vim.cmd("colorscheme nightfox")

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>h", function()
	local ok, plenary_reload = pcall(require, "plenary.reload")
	if not ok then
		return
	end

	plenary_reload.reload_module("JiraVim")
	plenary_reload.reload_module("backend")
	plenary_reload.reload_module("types")
	plenary_reload.reload_module("helpers")

	vim.api.nvim_command(":source ~/.config/nvim/init.lua")
end)
