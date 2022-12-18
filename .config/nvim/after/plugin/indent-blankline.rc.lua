local status, indent_blankline = pcall(require, "indent_blankline")
if (not status) then return end

vim.opt.list = true
vim.cmd [[highlight IndentBlanklineContextStart gui=nocombine]]

indent_blankline.setup({
  show_end_of_line = true,
  show_current_context_start = true,
  show_current_context = true,
})
