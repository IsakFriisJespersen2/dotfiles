local state = {
  floating = {
    buf = -1,
    win = -1,
  },
}

local function create_floating_window(opts)
  opts = opts or {}

  local total_width = vim.o.columns
  local total_height = vim.o.lines

  local width = opts.width or math.floor(total_width * 0.8)
  local height = opts.height or math.floor(total_height * 0.8)

  local col = math.floor((total_width - width) / 2)
  local row = math.floor((total_height - height) / 2)

  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true)
  end

  local win_opts = {
    relative = "editor",
    width = width,
    height = height,
    col = col,
    row = row,
    style = "minimal",
    border = "rounded",
  }

  local win = vim.api.nvim_open_win(buf, true, win_opts) -- Open the floating window
  return { buf = buf, win = win }
end

-- Example usage:
--

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window({ buf = state.floating.buf })
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.terminal()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set({ "n", "t" }, "<C-t><C-t>", toggle_terminal)
