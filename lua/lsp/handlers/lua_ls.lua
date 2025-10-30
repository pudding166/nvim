-- ~/.config/nvim/lua/lsp/handlers/lua_ls.lua

-- Lua 语言服务器的自定义处理函数
-- 这里配置 Neovim 特有的 Lua 开发环境设置

return function()
  -- 获取 nvim-cmp 的 LSP 能力集 支持补全 悬停 签名帮助等
  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  -- 配置 Lua 语言服务器
  require('lspconfig').lua_ls.setup({
    -- 启用 LSP 补全能力，与 nvim-cmp 集成
    capabilities = capabilities,

    -- lua 服务器的配置
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT', -- 使用 LuaJIT
        },

        diagnostics = {
          globals = { 'vim' }, -- 将 'vim' 识别为全局变量
        },

        -- 工作区配置
        workspace = {
          library = {
            -- Neovim 的所有内置 Lua 模块
            vim.env.VIMRUNTIME,
            -- 包含自己的配置和插件的配置
            vim.fn.stdpath("config") .. "/lua"
          },

          -- 不检查第三方库
          checkThirdParty = false,
        },

        -- 遥测配置
        telemetry = {
          -- 禁用遥测数据收集
          enable = false,
        },
      },
    },
  })
end
