-- ~/.config/nvim/lua/lsp/handlers/marksman.lua

-- Markdown 语言服务器的自定义处理函数
-- 这里配置 Neovim 特有的 Markdown 开发环境设置

return function()
  -- 获取 nvim-cmp 的 LSP 能力集 支持补全 悬停 签名帮助等
  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  -- 配置 Markdown 语言服务器
  require('lspconfig').marksman.setup({
    -- 启用 LSP 补全能力，与 nvim-cmp 集成
    capabilities = capabilities,

    filetypes = { "markdown", "md" },
  })
end
