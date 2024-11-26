return {
  "mg979/vim-visual-multi",
  init = function()
    vim.keymap.set("n", "¬", "<Plug>(VM-Add-Cursor-Down)", { noremap = false })
    vim.keymap.set("n", "º", "<Plug>(VM-Add-Cursor-Up)", { noremap = false })
    -- vim.api.nvim_set_hl(0, "VM_Extend", { fg = "#FFFFFF", bg = "#FF0000" }) -- Red background
    -- vim.api.nvim_set_hl(0, "VM_Cursor", { fg = "#FFFFFF", bg = "#00FF00" }) -- Green background
    -- vim.api.nvim_set_hl(0, "VM_CursorCross", { fg = "#FFFFFF", bg = "#0000FF" }) -- Blue background
  end,
}
