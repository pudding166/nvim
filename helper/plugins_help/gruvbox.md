
翻译文档 *gruvbox.nvim.txt*      适用于 Neovim >= 0.8.0     最后更新：2025年9月4日

==============================================================================
目录                                        *gruvbox.nvim-table-of-contents*

1. 先决条件                                     |gruvbox.nvim-prerequisites|
2. 安装                                           |gruvbox.nvim-installing|
  - 使用 packer                       |gruvbox.nvim-installing-using-packer|
  - 使用 lazy.nvim                 |gruvbox.nvim-installing-using-lazy.nvim|
  - 使用 vim-plug                   |gruvbox.nvim-installing-using-vim-plug|
3. 基本用法                                       |gruvbox.nvim-basic-usage|
4. 配置                                         |gruvbox.nvim-configuration|
  - 覆盖配置                       |gruvbox.nvim-configuration-overriding|
>
      <h1> <img src="https://i.postimg.cc/WpQzgxVh/plugin-Icon.png" width="80px"><br/>gruvbox.nvim</h1>
     </div>
<


一个移植自 gruvbox 社区 <https://github.com/gruvbox-community/gruvbox> 的主题，
使用 lua 编写，并支持 treesitter <https://github.com/nvim-treesitter/nvim-treesitter>
和 |语义高亮|！


==============================================================================
1. 先决条件                                     *gruvbox.nvim-prerequisites*

Neovim 0.8.0 或更高版本


==============================================================================
2. 安装                                           *gruvbox.nvim-installing*


使用 PACKER                         *gruvbox.nvim-installing-using-packer*

>lua
    use { "ellisonleao/gruvbox.nvim" }
<


使用 LAZY.NVIM                   *gruvbox.nvim-installing-using-lazy.nvim*

>lua
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}
<


使用 VIM-PLUG                     *gruvbox.nvim-installing-using-vim-plug*

>vim
    Plug 'ellisonleao/gruvbox.nvim'
<


==============================================================================
3. 基本用法                                       *gruvbox.nvim-basic-usage*

在 `init.vim` 中

>vim
    set background=dark " 或者 light，如果你想要亮色模式
    colorscheme gruvbox
<

在 `init.lua` 中

>lua
    vim.o.background = "dark" -- 或者 "light" 用于亮色模式
    vim.cmd([[colorscheme gruvbox]])
<


==============================================================================
4. 配置                                         *gruvbox.nvim-configuration*

gruvbox 的附加设置如下：

>lua
    -- 默认选项：
    require("gruvbox").setup({
      terminal_colors = true, -- 添加 neovim 终端颜色
      undercurl = true,      -- 使用下划线弯曲线
      underline = true,      -- 使用下划线
      bold = true,           -- 使用粗体
      italic = {             -- 使用斜体
        strings = true,      -- 字符串
        emphasis = true,     -- 强调文本
        comments = true,     -- 注释
        operators = false,   -- 操作符
        folds = true,        -- 折叠标记
      },
      strikethrough = true,  -- 使用删除线
      invert_selection = false, -- 反选选区颜色
      invert_signs = false,  -- 反转标志颜色（如Git signs）
      invert_tabline = false, -- 反转标签栏颜色
      inverse = true,        -- 反转搜索、差异、状态行和错误的背景色
      contrast = "",         -- 可以是 "hard", "soft" 或空字符串
      palette_overrides = {}, -- 调色板覆盖
      overrides = {},        -- 高亮组覆盖
      dim_inactive = false,  -- 非活动窗口变暗
      transparent_mode = false, -- 透明背景模式
    })
    vim.cmd("colorscheme gruvbox")
<

**非常重要**：请确保在调用 colorscheme 命令**之前**调用 setup()，以便使用你的自定义配置


覆盖配置                              *gruvbox.nvim-configuration-overriding*


调色板 ~

你可以指定自己的调色板颜色。例如：

>lua
    require("gruvbox").setup({
        palette_overrides = {
            bright_green = "#990000", -- 覆盖亮绿色
        }
    })
    vim.cmd("colorscheme gruvbox")
<


高亮组 ~

如果你不喜欢某个特定高亮组的当前颜色，现在你可以在 setup 中覆盖它。例如：

>lua
    require("gruvbox").setup({
        overrides = {
            SignColumn = {bg = "#ff9900"} -- 覆盖标志列的背景色
        }
    })
    vim.cmd("colorscheme gruvbox")
<

这也适用于 treesitter 组和 LSP 语义高亮标记

>lua
    require("gruvbox").setup({
        overrides = {
            ["@lsp.type.method"] = { bg = "#ff9900" }, -- 覆盖 LSP 方法类型
            ["@comment.lua"] = { bg = "#000000" },     -- 覆盖 Lua 注释
        }
    })
    vim.cmd("colorscheme gruvbox")
<

请注意，覆盖值必须遵循高亮组映射的属性，例如：

- **fg** - 前景色
- **bg** - 背景色
- **bold** - true 或 false，表示粗体字体
- **italic** - true 或 false，表示斜体字体

其他值可以在 |`synIDattr`| 中查看

由 panvimdoc <https://github.com/kdheepak/panvimdoc> 生成

vim:tw=78:ts=8:noet:ft=help:norl:
