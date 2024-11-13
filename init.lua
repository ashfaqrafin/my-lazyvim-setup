-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("set shiftwidth=4")
require("lazyvim").setup({
  picker = "fzf",
})
