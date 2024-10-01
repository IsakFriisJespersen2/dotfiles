return {
  "sindrets/diffview.nvim",
  config = function()
    local _ = require("diffview")

    local keymap = vim.keymap

    keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<CR>", { desc = "Open diffview" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Close diffview" }) -- restore last workspace session for current directory
  end,
}
