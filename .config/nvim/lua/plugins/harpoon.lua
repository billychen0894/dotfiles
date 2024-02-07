return {
  "ThePrimeagen/harpoon",
  dependencies = "nvim-lua/plenary.nvim",
  opts = {
    global_settings = { mark_branch = true },
    width = vim.api.nvim_win_get_width(0) - 4,
  },
  config = function()
    vim.api.nvim_set_keymap("n", "<leader>a", '<Cmd>lua require("harpoon.mark").add_file()<CR>', { silent = true })
    vim.api.nvim_set_keymap(
      "n",
      "<leader>h",
      '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',
      { silent = true }
    )

    vim.api.nvim_set_keymap("n", "<leader>1", '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>2", '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>3", '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>4", '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>5", '<Cmd>lua require("harpoon.ui").nav_file(5)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>6", '<Cmd>lua require("harpoon.ui").nav_file(6)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>7", '<Cmd>lua require("harpoon.ui").nav_file(7)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>8", '<Cmd>lua require("harpoon.ui").nav_file(8)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>9", '<Cmd>lua require("harpoon.ui").nav_file(9)<CR>', { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>0", '<Cmd>lua require("harpoon.ui").nav_file(10)<CR>', { silent = true })
  end,
}
