return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",
  init = function()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end,
}
