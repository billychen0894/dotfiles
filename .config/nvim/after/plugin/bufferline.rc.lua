local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

vim.opt.termguicolors = true
bufferline.setup {
}

vim.keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', {})
