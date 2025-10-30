-- ~/.config/nvim/lua/lsp/handlers/clangd.lua

-- C/C++ 语言服务器的自定义处理函数
-- 这里配置 Neovim 特有的 C/C++ 开发环境设置

return function()
  -- 获取 nvim-cmp 的 LSP 能力集 支持补全 悬停 签名帮助等
  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  -- 配置 C/C++ 语言服务器
  require('lspconfig').clangd.setup({
    -- 启用 LSP 补全能力，与 nvim-cmp 集成
    capabilities = capabilities,

    -- clangd 启动命令和参数
    cmd = {
      "clangd-19", -- clangd

      -- 性能
      "--j=4",              -- 使用 4 个线程
      "--background-index", -- 后台索引，提升性能

      -- 预编译头文件存储方式
      -- disk 磁盘存储
      -- "--pch-storage=memory",

      -- 代码分析
      "--clang-tidy",            -- 启用静态代码分析
      "--all-scopes-completion", -- 全局补全
      -- "--clang-tidy-checks=*", -- 启用所有 clang-tidy 检查
      -- "--fallback-style=LLVM", -- 代码格式化风格设置为 LLVM

      -- 补全增强
      "--header-insertion=never",    -- 禁止自动插入头文件
      "--completion-style=detailed", -- 详细的补全信息
      "--function-arg-placeholders", -- 函数参数占位符
      -- "--completion-parse=auto",     -- 自动解析补全
      -- "--completion-bundled-types",  -- 包含内置类型补全
      -- "--limit-results=50",          -- 补全结果数量

      -- 项目配置
      -- "--query-driver=/usr/bin/gcc,/usr/bin/g++",   -- 指定编译器路径
      -- "--limit-results=50",
    },
  })
end
