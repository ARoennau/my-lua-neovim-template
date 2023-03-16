local status_ok, mason = pcall(require, "mason")
if not staus_ok then
  return
end

mason.setup({})
