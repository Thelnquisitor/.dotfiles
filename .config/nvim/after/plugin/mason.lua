local ensure_installed = function()
    local packages = {
        "jq",
        "gofumpt",
        "stylua",
        "clangd",
        "golangci-lint-langserver",
        "lua-language-server",
        "goimports-reviser",
    }

    local registry = require("mason-registry")

    local filteredPackages = {}
    for _, v in pairs(packages) do
        if not registry.is_installed(v) then
            table.insert(filteredPackages, v)
        end
    end

    if #filteredPackages > 0 then
        require("mason.api.command").MasonInstall(filteredPackages)
    end
end

ensure_installed()

require('mason').setup()
