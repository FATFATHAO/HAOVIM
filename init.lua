-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  -- 设置字体和字号（注意空格需转义）
  vim.o.guifont = "JetBrainsMono Nerd Font Propo:h14"
  -- 启用连字功能（如需）
  vim.g.neovide_ligatures = true
end
