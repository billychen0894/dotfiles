local _, ui = pcall(require, "harpoon.ui")
local ok, mark = pcall(require, "harpoon.mark")
local nnoremap = require("billychen.utils").nnoremap

if not ok then
  return
end

local silent = { silent = true }

local function harpoon_nav_file(file_index)
  return function() ui.nav_file(file_index) end
end

nnoremap("<leader>a", mark.add_file, silent)
nnoremap("<leader>e", ui.toggle_quick_menu, silent)

nnoremap("<leader>1", harpoon_nav_file(1), silent)
nnoremap("<leader>2", harpoon_nav_file(2), silent)
nnoremap("<leader>3", harpoon_nav_file(3), silent)
nnoremap("<leader>4", harpoon_nav_file(4), silent)
nnoremap("<leader>5", harpoon_nav_file(5), silent)
nnoremap("<leader>6", harpoon_nav_file(6), silent)
nnoremap("<leader>7", harpoon_nav_file(7), silent)
nnoremap("<leader>8", harpoon_nav_file(8), silent)
nnoremap("<leader>9", harpoon_nav_file(9), silent)
nnoremap("<leader>0", harpoon_nav_file(10), silent)
