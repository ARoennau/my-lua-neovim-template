--[[ local status_ok, nightfox = pcall(require, "nightfox") ]]
--[[ if not status_ok then ]]
--[[   return ]]
--[[ end ]]

local status_ok, gruvbox = pcall(require, "gruvbox")
if not status_ok then
  return
end

-- nightfox.setup {
--   transparent = true
-- }

vim.cmd [[
try
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
