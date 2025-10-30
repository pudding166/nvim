-- ~/.config/nvim/lua/plugins/mason-lspconfig.lua

-- mason-lspconfig 桥接 mason.nvim 与 lspconfig 插件 使其更容易一起使用两个插件

-- 自从在 Neovim 0.11 中引入 :h vim.lsp.config 以来 该插件的功能集已经减少
-- 如果您想自动启用已安装的服务器 (:h vim.lsp.enable()) 或访问 :LspInstall 命令 请使用此插件

-- 需求
-- neovim >= 0.11.0
-- mason.nvim >= 2.0.0
-- nvim-lspconfig >= 2.0.0

return {
  'williamboman/mason-lspconfig.nvim',

  -- 插件触发时机
  event = {
    "BufReadPre", -- 读取缓冲区之前触发
    "BufNewFile"  -- 创建新文件时触发
  },

  -- 依赖插件
  dependencies = {
    -- Neovim 的 LSP 客户端配置
    'neovim/nvim-lspconfig',
  },

  opts = function()
    -- 加载 LSP 配置模块
    -- 这个模块包含了服务器列表 处理器配置等所有 LSP 相关设置
    local lsp = require("lsp")

    -- 返回 mason-lspconfig 的配置选项
    -- 这些配置会传递给 mason-lspconfig.setup() 函数
    return {
      -- 自动安装配置
      -- 设置为 true 时 mason-lspconfig 会自动安装 ensure_installed 中列出的所有语言服务器
      -- 当打开对应文件类型时 如果服务器未安装，会自动下载并安装
      automatic_installation = true,

      -- 确保安装的语言服务器列表
      -- 从 lsp.servers 模块中获取预定义的服务器列表
      -- 这个列表包含了所有需要自动安装和配置的 LSP 服务器
      ensure_installed = lsp.servers.ensure_installed,

      -- LSP 服务器处理器配置
      -- 这些处理器函数负责为每个语言服务器设置具体的 LSP 配置
      -- 当 mason-lspconfig 安装完服务器后，会调用对应的处理器来进行服务器配置
      handlers = lsp.handlers,
    }
  end,

  config = function(_, opts)
    -- 设置 mason-lspconfig
    require('mason-lspconfig').setup(opts)
  end
}
