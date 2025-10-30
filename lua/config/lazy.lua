-- config/lazy.lua

-- 检查lazy是否安装
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- 导入插件
require("lazy").setup({

  -- 插件声明
  spec = {
    { import = "plugins.comment" },
    { import = "plugins.treesitter" },
    { import = "plugins.themes" },
    { import = "plugins.lualine" },
    { import = "plugins.mason" },
    { import = "plugins.mason-lspconfig" },
    { import = "plugins.lsp" },
    { import = "plugins.nvim-cmp" },
  },

  -- 控制插件的安装行为
  install = {
    colorscheme = { "habamax" }, -- 设置配色,第一个可用者生效
    missing = true,              -- 安装时是否自动安装缺失的插件
  },

  -- 定期检查插件的更新
  checker = {
    enabled = false,   -- 是否启用检查
    frequency = 86400, -- 86400 为一天
    notify = false,    -- 静默检查
  },

})
