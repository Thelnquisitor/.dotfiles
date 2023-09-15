local null_ls = require("null-ls")

local format_on_save = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr,
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                print("Woooo")
                vim.lsp.buf.format({ bufnr = bufnr })
            end,
        })
    end
end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.jq,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.shfmt,
    },
    on_attach = format_on_save,
})
