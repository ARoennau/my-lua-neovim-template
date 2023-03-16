local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local config_status_ok, lspconfig = pcall(require, "lspconfig")
if not config_status_ok then
  return
end

local handlers = require("user.lsp.handlers")

lsp_installer.setup {}

lspconfig.tsserver.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
  init_options = {
    preferences = {
      importModuleSpecifierPreference = 'relative',
    },
  },
}

lspconfig.bashls.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}

lspconfig.gopls.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}

lspconfig.pyright.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}

lspconfig.jsonls.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}

lspconfig.volar.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}

