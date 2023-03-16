local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
  return
end

--[[ local status_ok, gruvbox = pcall(require, "gruvbox") ]]
--[[ if not status_ok then ]]
--[[   return ]]
--[[ end ]]

--[[ gruvbox.setup { ]]
--[[   overrides = { ]]
--[[     normal = {}, ]]
--[[   } ]]
--[[ } ]]

--[[ vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE }) ]]

nightfox.setup {
  options = {
    transparent = true,
  },
}

vim.cmd [[
try
  colorscheme nightfox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
