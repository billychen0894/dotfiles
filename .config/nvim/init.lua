require('billychen.base')
require('billychen.highlights')
require('billychen.maps')
require('billychen.plugins')
require('billychen.utils')
require('impatient')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('billychen.macos')
end
if is_win then
  require('billychen.windows')
end
