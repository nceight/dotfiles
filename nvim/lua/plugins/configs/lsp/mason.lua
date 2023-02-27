local present_mason, mason = pcall(require, "mason")

if not present_mason then
    return
end

local present_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")

if not present_mason_lspconfig then
    return
end

local present_lspconfig, lspconfig = pcall(require, "lspconfig")

if not present_lspconfig then
    return
end

local servers = {
    "lua_ls",
    "rust_analyzer",
    "tsserver",
}

local settings = {
    ui = {
        border = "none",
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        },
    },
    log_level = vim.log.levels.INFO,
    max_concurrent_installers = 4,
}

mason.setup(settings)
mason_lspconfig.setup {
    ensure_installed = servers,
    automatic_installation = true,
}

local opts = {}

for _, server in pairs(servers) do
    opts = {
        on_attach = require("plugins.configs.lsp.handlers").on_attach,
        capabilities = require("plugins.configs.lsp.handlers").capabilities,
    }

    server = vim.split(server, "@")[1]

    local require_ok, conf_opts = pcall(require, "plugins.configs.lsp.settings." .. server)
    if require_ok then
        opts = vim.tbl_deep_extend("force", conf_opts, opts)
    end

    lspconfig[server].setup(opts)
end
