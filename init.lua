-- ~/.config/nvim/init.lua

-- 该文件只加载一次
if vim.g.my_init_lua_ then
  return
end
vim.g.my_init_lua_ = 1

-- Lua的模块搜索路径
package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/?.lua"

-- neovim 自身的配置
require("config.options")
require("config.keymap")
require("config.autocmd")

-- 导入插件管理
require("config.lazy")


