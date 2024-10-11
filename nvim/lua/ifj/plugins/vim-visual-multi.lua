return {
  "mg979/vim-visual-multi",
  config = function()
    vim.g.VM_maps = {
      ["Select Cursor Down"] = "<C-¬>", -- Change to Ctrl + j for selecting down
      ["Select Cursor Up"] = "<C-º>", -- Change to Ctrl + k for selecting up
    }
  end,
}
