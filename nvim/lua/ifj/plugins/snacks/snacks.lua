return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = false },
    dashboard = { enabled = false },
    explorer = { enabled = false },
    indent = { enabled = false },
    input = { enabled = false },
    picker = { enabled = false },
    notifier = { enabled = false },
    quickfile = { enabled = false },
    scope = { enabled = false },
    scroll = { enabled = true },
    statuscolumn = { enabled = false },
    words = { enabled = true },
    gitbrowse = {
      enabled = true,
      what = "permalink",
      config = function(opts, defaults)
        table.insert(opts.url_patterns, {
          ["git.booli.se"] = {
            branch = "/-/tree/{branch}",
            file = "/-/blob/{branch}/{file}#L{line_start}-L{line_end}",
            permalink = "/-/blob/{commit}/{file}#L{line_start}-L{line_end}",
            commit = "/-/commit/{commit}",
          },
        })
      end,
    },
  },
  keys = {
    {
      "<leader>gB",
      function()
        Snacks.gitbrowse.open({ what = "permalink"})
      end,
      desc = "Git Browse",
      mode = { "n", "v" },
    },
  },
}
