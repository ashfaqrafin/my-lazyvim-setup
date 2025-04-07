local function center_window()
  local width = vim.api.nvim_get_option("columns")
  local height = vim.api.nvim_get_option("lines")

  local win_width = math.ceil(width * 0.9)
  local win_height = math.ceil(height * 0.8)

  local row = math.floor((height - win_height) / 2) - 2
  local col = math.floor((width - win_width) / 2)

  return {
    layout = "float",
    position = "center",
    relative = "editor",
    width = win_width,
    height = win_height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
    title = "Copilot Chat",
    highlight = "Normal",
    cursorline = true,
    cursorcolumn = true,
    number = true,
    relativenumber = true,
    wrap = true,
    scroll = 12,
  }
end

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      debug = true,
      window = center_window(), -- Call the function to get the centered window options
    },
  },
}

