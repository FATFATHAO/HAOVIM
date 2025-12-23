-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cpp", "c", "ts", "typescript", "javascript", "js", "go" },
  callback = function()
    vim.opt_local.expandtab = true -- 将 Tab 转换为空格
    vim.opt_local.tabstop = 4 -- Tab 显示为 4 空格
    vim.opt_local.shiftwidth = 4 -- 自动缩进宽度为 4 空格
    vim.opt_local.softtabstop = 4 -- 退格键删除 4 空格
  end,
})
