local status_ok, mason = pcall(require, "mason")
if not status_ok then
  print('cannot get mason')
  return
end

local status_ok_2, mason_lsp = pcall(require, "mason-lspconfig")
if not status_ok_2 then
  print('cannot get mason-lspconfig')
  return
end

mason.setup({})
mason_lsp.setup({})
