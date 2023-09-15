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

    require("JiraVim").get({
        includeFields = true,
        projectID = nil,
        debug = true,
    })
end)
