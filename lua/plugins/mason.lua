-- ~/.config/nvim/lua/plugins/mason.lua

-- Neovim的便携式包管理器
-- 轻松安装和管理LSP服务器 DAP服务器 链接器和格式化程序

-- 插件的最低需求
-- neovim >= 0.10.0
-- git
-- curl or GNU wget
-- unzip
-- GNU tar (tar 或 gtar 取决于平台)
-- gzip
-- 如果使用外部的包管理器则可能需要 cargo 或 npm

return {
  'williamboman/mason.nvim',

  -- -- 定义插件所有的命令
  -- -- 这回导致插件的懒加载 !(最好不要)
  -- cmd = {
  --   "Mason",             -- 打开 Mason UI
  --   "MasonInstall",      -- 安装特定包
  --   "MasonUninstall",    -- 卸载特定包
  --   "MasonUninstallAll", -- 卸载所有包
  --   "MasonLog",          -- 查看安装日志
  --   "MasonUpdate",       -- 更新特定包
  --   "MasonUpdateAll",    -- 更新所有包
  -- },

  keys = {
    { '<leader>cm', '<cmd>Mason<cr>',          desc = "Mason: Open package manager" },
    { '<leader>cM', '<cmd>MasonUpdateAll<cr>', desc = "Mason: Update all packages" },
  },

  opts = {
    -- 安装软件包的目录
    -- 当前 neovim 数据目录下的 mason 文件夹
    install_root_dir = vim.fn.stdpath("data") .. "/mason",

    -- 最大并发安装数
    -- 一旦达到这个极限 任何进一步的请求安装的软件包将被放入队列中
    max_concurrent_installers = 4,

    -- 从 GitHub 下载资源时使用的模板 URL
    -- 占位符如下 (按顺序):
    -- 1. 仓库 (例如 "rust-lang/rust-analyzer")
    -- 2. 发布版本 (例如 "v0.3.0")
    -- 3. 资源名称 (例如 "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
    github = {
      download_url_template = "https://github.com/%s/releases/download/%s/%s",
    },

    -- UI 配置
    ui = {
      -- 窗口边框样式
      border = "none", -- 无边框

      -- 打开 Mason 窗口后是否自动检测新版本
      check_outdated_packages_on_open = false,

      -- Mason 应该在 PATH 中放置其位置
      -- prepend (默认情况下 Mason 的 bin 位置放在 PATH 的第一位)
      -- append (Mason 的 bin 位置放在 PATH 的末尾)
      -- skip (不修改PATH)
      PATH = "prepend",

      --背景不透明度 0表示完全不透明 100表示完全透明
      backdrop = 60,

      -- 窗口尺寸
      width = 0.8,  -- 窗口宽度为占屏幕的比列
      height = 0.8, -- 窗口高度为占屏幕的比例

      -- 图标配置
      icons = {
        package_installed = "✓", -- 已安装
        package_pending = "➜", -- 等待安装/更新
        package_uninstalled = "✗", -- 未安装
      },

      -- 按键映射
      keymaps = {
        -- 展开/折叠包详细信息
        -- 在包列表项上按回车可以查看包的详细信息 如版本 描述等
        toggle_package_expand = "<CR>",

        -- 安装选中的包
        -- 当光标在未安装的包上时 按 i 开始安装
        install_package = "i",

        -- 更新选中的包
        -- 当光标在有更新的包上时 按 u 更新到最新版本
        update_package = "u",

        -- 检查包版本
        -- 查看当前选中包的详细版本信息
        check_package_version = "c",

        -- 更新所有可更新的包
        -- 批量更新所有有更新的包
        update_all_packages = "U",

        -- 检查所有过时的包
        -- 扫描并列出所有需要更新的包
        check_outdated_packages = "C",

        -- 卸载选中的包
        -- 移除已安装的包 (大写 X)
        uninstall_package = "X",

        -- 取消正在进行的安装
        -- 在安装过程中按 Ctrl+c 中止安装
        cancel_installation = "<C-c>",

        -- 展开/折叠包源列表
        -- 切换显示不同的包源 (如 LSP DAP Formatter 等分类)
        toggle_sources_expand = "S",

        -- 向上滚动详细信息面板
        -- 在包详细信息面板中向上滚动查看内容
        scroll_details_up = "K",

        -- 向下滚动详细信息面板
        -- 在包详细信息面板中向下滚动查看内容
        scroll_details_down = "J",

        -- 退出 Mason UI 窗口
        -- 关闭 Mason 界面并返回到编辑器
        quit = "q",
      },
    },

    -- 注册表 定义从哪里获取和管理包的元数据信息
    registries = {
      "github:mason-org/mason-registry", -- 从 GitHub 仓库获取最新的包元数据
      "lua:mason-registry.index",        -- 本地 Lua 文件作为包元数据源
    },

    -- 提供者 用于解析包的补充元数据 特别是可用版本信息 这是注册表系统的补充
    providers = {
      {
        "mason.providers.registry-api", -- 使用官方的注册表 API (需要网络)

        -- 缓存配置
        cache = {
          enable = true, -- 启用缓存
          ttl = 1800,    -- 缓存生存时间 (秒)
        },

        timeout = 30000, -- 统一超时时间 (毫秒)

      },
      -- 上放调用失败后调用下方
      {
        "mason.providers.client", -- 本地客户端工具解析元数据

        timeout = 60000,          -- 客户端操作超时时间

      },
    },

    -- 日志程度配置
    log_level = vim.log.levels.DEBUG,

    -- 处理器配置
    handlers = {
      -- -- 包安装前处理器
      -- pre_install = function(package, opts)
      --   print("准备安装: " .. package.name)
      -- end,

      -- -- 包安装后处理器
      -- post_install = function(package, opts)
      --   print("安装完成: " .. package.name)
      -- end,

      -- -- 包卸载处理器
      -- uninstall = function(package, opts)
      --   print("卸载: " .. package.name)
      -- end,
    },

    -- 重试机制
    performance = {
      max_retry_count = 3, -- 最大重试次数
      retry_delay = 1000,  -- 重试延迟 (毫秒)
    },

    -- 包过滤器
    -- 可以基于名称 类别 语言等过滤包
    -- filters = {
    --   -- 只显示特定语言的包
    --   language = { "lua", "python", "javascript" },
    --   -- 只显示特定类别的包
    --   category = { "lsp", "dap", "formatter" },
    -- },

    -- 自动安装配置
    automatic_installation = false,

    -- 排除不需要自动安装的包
    -- automatic_installation_exclude = {
    --   "",
    -- },

    -- 虚拟环境配置 (Python 相关)
    -- pip = {
    --   upgrade_pip = false, -- 不自动升级 pip
    --   install_args = {},   -- 额外的 pip 安装参数
    -- },
  },

  config = function(_, opts)
    -- 设置 Mason
    require('mason').setup(opts)
  end,
}


-- 其他可选择配置

-- opts

-- ui

-- border
-- 可以配置高亮组来进行颜色的配置 vim.api.nvim_set_hl(0, "MasonBorder", { fg = "#89b4fa" })
-- border = "single",  -- 单线边框
-- border = "double",  -- 双线边框
-- border = "rounded", -- 圆角边框
-- border = "solid",   -- 粗线边框
-- border = "shadow",  -- 阴影边框
-- 完全自定义边框字符
-- border = {
--   { "🭽", "FloatBorder" },
--   { "▔", "FloatBorder" },
--   { "🭾", "FloatBorder" },
--   { "▕", "FloatBorder" },
--   { "🭿", "FloatBorder" },
--   { "▁", "FloatBorder" },
--   { "🭼", "FloatBorder" },
--   { "▏", "FloatBorder" },
-- },

-- icons
-- package_installed = "", -- 已安装
-- package_pending = "", -- 等待安装/更新
-- package_uninstalled = "", -- 未安装

-- package_installed = "󰄲",-- 已安装
-- package_pending = "󰑓",-- 等待安装/更新
-- package_uninstalled = "󰄱", -- 未安装
