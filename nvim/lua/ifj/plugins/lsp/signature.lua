return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {
    bind = true,
    always_trigger = false,
    floating_window = false,
    toggle_key = 'ß',
    handler_opts = {
      border = "rounded",
    },
  },
  config = function(_, opts)
    local lsp_signature = require("lsp_signature")
    lsp_signature.setup(opts)

    -- vim.keymap.set({ "n" }, "<leader>k>", function()
    --   lsp_signature.toggle_float_win()
    -- end, { silent = true, noremap = true, desc = "toggle signature" })
  end,
}
