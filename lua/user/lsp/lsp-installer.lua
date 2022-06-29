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

lspconfig.sumneko_lua.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
}


-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
-- lsp_installer.on_server_ready(function(server)
-- 	local opts = {
-- 		on_attach = require("user.lsp.handlers").on_attach,
-- 		capabilities = require("user.lsp.handlers").capabilities,
-- 	}

-- 	--  if server.name == "jsonls" then
-- 	--  	local jsonls_opts = require("user.lsp.settings.jsonls")
-- 	--  	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
-- 	--  end

-- 	 if server.name == "sumneko_lua" then
-- 	 	local sumneko_opts = require("user.lsp.settings.sumneko_lua")
-- 	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
-- 	 end

-- 	-- This setup() function is exactly the same as lspconfig's setup function.
-- 	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- 	server:setup(opts)
-- end)
