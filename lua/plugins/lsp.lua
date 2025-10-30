-- ~/.config/nvim/lua/plugins/lsp.lua

-- nvim-lspconfig 是 Nvim LSP 客户端的 LSP 服务器配置集合

return {
  -- LSP 核心配置插件
  'neovim/nvim-lspconfig',

  -- 插件触发时机
  event = {
    "BufReadPre", -- 读取缓冲区之前加载
    "BufNewFile", -- 创建新文件时触发
  },

  -- 加载插件
  dependencies = {
  },

  -- 主要配置
  opts = {
    -- 诊断信息显示配置
    -- 控制 LSP 诊断信息 （错误 警告等） 在编辑器中的显示方式
    diagnostics = {
      -- 虚拟文本: 在代码行内显示错误信息
      -- 启用后会在有问题代码行的末尾显示错误描述
      virtual_text = true,

      -- 符号标记: 在行号列显示错误图标
      -- 启用后会在行号旁边显示对应的错误 警告 提示图标
      signs = true,

      -- 插入模式更新: 在插入模式下是否更新诊断信息
      -- 设置为 false 可避免在输入代码时频繁刷新诊断信息 提升性能
      update_in_insert = false,

      -- 下划线: 在错误代码下方显示波浪下划线
      -- 启用后会在有问题的代码下方显示彩色下划线 （红色-错误 黄色-警告等）
      underline = true,

      -- 严重程度排序: 按严重程度对诊断信息排序
      -- 启用后错误会显示在警告前面 警告显示在提示前面
      severity_sort = true,
    },

    -- 诊断符号图标配置
    -- 这些图标会显示在行号列旁边，用于标识不同严重程度的代码问题
    signs = {
      -- 错误级别图标
      -- 用于标识代码中的错误，如语法错误、类型错误等
      Error = "• ",

      -- 警告级别图标
      -- 用于标识可能的问题或不良实践，但不会阻止代码运行
      Warn = "• ",

      -- 提示级别图标
      -- 用于提供代码改进建议或优化提示
      Hint = "• ",

      -- 信息级别图标
      -- 用于显示一般性的代码信息或文档说明
      Info = "• ",
    },
  },

  -- 快捷键设置
  keys = {
    -- 悬停文档: 显示函数/变量的文档
    {
      "K",
      function()
        vim.lsp.buf.hover()
      end,
      mode = "n",
      desc = "LSP: Hover"
    },

    -- 跳转定义: 跳转到函数/变量的定义处
    {
      "gd",
      function()
        vim.lsp.buf.definition()
      end,
      mode = "n",
      desc = "LSP: Go to definition"
    },

    -- 跳转声明: 跳转到函数/变量的声明处
    {
      "gD",
      function()
        vim.lsp.buf.declaration()
      end,
      mode = "n",
      desc = "LSP: Go to declaration"
    },

    -- 查找引用: 查找函数/变量的所有引用位置
    {
      "gr",
      function()
        vim.lsp.buf.references()
      end,
      mode = "n",
      desc = "LSP: Go to references"
    },

    -- 跳转实现: 跳转到接口的实现处
    {
      "gi",
      function()
        vim.lsp.buf.implementation()
      end,
      mode = "n",
      desc = "LSP: Go to implementation"
    },

    -- 重命名符号: 重命名当前符号 (变量/函数名)
    {
      "<leader>rn",
      function()
        vim.lsp.buf.rename()
      end,
      mode = "n",
      desc = "LSP: Rename"
    },

    -- 代码操作: 显示可用的代码修复或重构操作
    {
      "<leader>ca",
      function()
        vim.lsp.buf.code_action()
      end,
      mode = { "n", "v" },
      desc = "LSP: Code action"
    },

    -- 格式化代码: 格式化当前缓冲区或选中区域
    {
      "<leader>f",
      function()
        vim.lsp.buf.format({ async = true })
      end,
      mode = { "n", "v" },
      desc = "LSP: Format"
    },

    -- 签名帮助: 在插入模式显示函数参数提示
    {
      "<C-h>",
      function()
        vim.lsp.buf.signature_help()
      end,
      mode = "i",
      desc = "LSP: Signature help"
    },
  },

  config = function(_, opts)
    -- 诊断配置 (错误提示样式)
    vim.diagnostic.config(opts.diagnostics)

    -- 注册诊断符号
    for type, icon in pairs(opts.signs) do
      -- 生成高亮组名称
      local hl = "DiagnosticSign" .. type

      -- 定义符号显示
      vim.fn.sign_define(hl, {
        text = icon, -- 显示的图标
        texthl = hl, -- 使用对应的高亮组
        numhl = hl,  -- 行号列的高亮组
      })
    end

    -- 自定义诊断符号颜色
    vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#ff0000" }) -- 红色
    vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#ffff00" })  -- 黄色
    vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#00ffff" })  -- 青色
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#00ff00" })  -- 绿色
  end
}


-- signs 的其他选项
-- signs = {
--   Error = "➤ ",
--   Warn = "➤ ",
--   Hint = "➤ ",
--   Info = "➤ ",
-- },
-- signs = {
--   Error = "● ",
--   Warn = "● ",
--   Hint = "● ",
--   Info = "● ",
