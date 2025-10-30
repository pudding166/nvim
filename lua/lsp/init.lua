-- ~/.config/nvim/lua/lsp/init.lua

-- LSP (Language Server Protocol) 配置主入口文件
-- 这个文件负责组织和管理所有 LSP 服务器的配置

local M = {}

-- 从 lsp.servers 模块导入服务器列表和配置
M.servers = require("lsp.servers")

-- 定义处理器的表 用于配置各个 LSP 服务器
M.handlers = {
  -- 默认处理器函数
  -- 当没有为特定服务器定义自定义处理器时 会使用这个默认处理器
  default = function(server_name)
    -- 获取 nvim-cmp 的 LSP 能力集
    -- 这提供了代码补全 悬停信息 签名帮助等功能的支持
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- 使用 lspconfig 设置指定的 LSP 服务器
    -- 这里只设置了基础的能力配置 没有额外的自定义设置
    require('lspconfig')[server_name].setup({
      capabilities = capabilities, -- 传入 LSP 能力配置
    })
  end
}

-- 使用元表实现处理器的动态加载
-- 当访问 M.handlers[server_name] 时 会自动尝试加载对应的处理器文件
setmetatable(M.handlers, {
  -- __index 元方法会在表中找不到指定键时被调用
  __index = function(t, server_name)
    -- 尝试动态加载对应服务器的处理器文件
    -- 文件路径格式: lsp.handlers.{server_name}
    -- 例如: lua_ls -> lsp/handlers/lua_ls.lua
    local ok, handler = pcall(require, "lsp.handlers." .. server_name)

    -- 检查处理器文件是否成功加载
    if ok then
      -- 成功加载: 将处理器缓存到表中，避免重复加载
      -- rawset 绕过元方法，直接设置表的值
      rawset(t, server_name, handler)

      -- 返回加载的处理器函数
      return handler
    else
      -- 加载失败: 返回默认处理器
      -- 这意味着如果某个服务器没有专门的处理器文件，会自动使用默认配置
      return t.default
    end
  end
})

-- 使用示例说明

-- 当 mason-lspconfig 需要配置 'lua_ls' 服务器时:
-- 1. 首先检查 M.handlers["lua_ls"] 是否存在
-- 2. 由于不存在，触发 __index 元方法
-- 3. 尝试加载 lsp.handlers.lua_ls 模块
-- 4. 如果文件存在且有效，加载并缓存处理器函数
-- 5. 如果文件不存在，返回默认处理器

-- 这种设计的好处:
-- - 懒加载: 只有在需要时才加载处理器文件
-- - 模块化: 每个服务器的配置独立在单独的文件中
-- - 容错性: 缺少特定配置时自动回退到默认配置
-- - 性能优化: 避免一次性加载所有处理器

-- 返回模块
return M
