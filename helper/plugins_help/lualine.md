
翻译文档 *lualine.txt*          用于 Neovim 的快速且易于配置的状态栏插件

==============================================================================
目录                                       *lualine-table-of-contents*

1. lualine.nvim                                         |lualine-lualine.nvim|
  - 贡献指南                                            |lualine-contributing|
  - 与其他插件性能对比  |lualine-performance-compared-to-other-plugins|
  - 安装                                                |lualine-installation|
  - 使用与自定义                            |lualine-usage-and-customization|

==============================================================================
1. lualine.nvim                                         *lualine-lualine.nvim*

一个用 Lua 编写的、速度极快且易于配置的 Neovim 状态栏。

`lualine.nvim` 要求 Neovim >= 0.7。

对于更早版本的 neovim，请使用兼容性标签，例如 `compat-nvim-0.5`。

贡献指南                                            *lualine-contributing*

如果您希望实现任何其他功能，请随时创建 Issue 或 PR。
如果您有疑问或需要配置帮助，请发起一个讨论
<https://github.com/nvim-lualine/lualine.nvim/discussions>。

在开启 PR 前，请阅读 CONTRIBUTING.md <./CONTRIBUTING.md>。您也可以在 Wiki
<https://github.com/nvim-lualine/lualine.nvim/wiki> 中帮助完善文档。

与其他插件性能对比 *lualine-performance-compared-to-other-plugins*

与其他状态栏插件不同，lualine 仅加载您指定的组件，别无其他。

启动时间性能使用出色的插件 dstein64/vim-startuptime
<https://github.com/dstein64/vim-startuptime> 测量。

时间是在一个干净的 `init.vim` 中测量的，仅安装了 `vim-startuptime`、
`vim-plug` 和给定的状态栏插件。对照组仅安装了 `vim-startuptime` 和
`vim-plug`。测量的时间是 vim 的完整启动时间，而非特定插件花费的时间。这些数字是 20 次运行的平均值。

│ 对照组 │ lualine │ lightline │ airline │
│ 17.2 ms │ 24.8 ms │  25.5 ms  │ 79.9 ms │

最后更新于：2022-04-18

安装                                                *lualine-installation*

VIM-PLUG <HTTPS://GITHUB.COM/JUNEGUNN/VIM-PLUG> ~

>
    Plug 'nvim-lualine/lualine.nvim'
    " 如果您想在状态栏中显示图标，请选择安装以下其中一个
    Plug 'nvim-tree/nvim-web-devicons'
<


PACKER.NVIM <HTTPS://GITHUB.COM/WBTHOMASON/PACKER.NVIM> ~

>
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
<


LAZY.NVIM <HTTPS://GITHUB.COM/FOLKE/LAZY.NVIM> ~

>
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    }
<


如果您想要图标，还需要使用修补过的字体。

使用与自定义                            *lualine-usage-and-customization*

Lualine 包含如下所示的各个部分。

>
    +-------------------------------------------------+
    | A | B | C                             X | Y | Z |
    +-------------------------------------------------+
<


每个部分包含其组件，例如 Vim 的当前模式。

在 INIT.VIM 中配置 LUALINE ~

以下所有示例均使用 lua。您可以通过将以下示例包装在 lua heredoc 中，在 `.vim` 文件中使用它们：

>
    lua << END
    require('lualine').setup()
    END
<

更多信息，请查看 `:help lua-heredoc`。

                                               *lualine-Default-configuration*

>
    require('lualine').setup {
      options = {
        icons_enabled = true,        -- 启用图标
        theme = 'auto',              -- 主题设置为 'auto' 会自动选择基于您色彩方案的主题
        component_separators = { left = '', right = ''}, -- 组件之间的分隔符
        section_separators = { left = '', right = ''},   -- 部分之间的分隔符
        disabled_filetypes = {       -- 为这些文件类型禁用 lualine
          statusline = {},           -- 仅在状态栏忽略该文件类型
          winbar = {},               -- 仅在窗口栏忽略该文件类型
        },
        ignore_focus = {},           -- 如果当前文件类型在此列表中，则始终绘制为非活动状态栏，最后一个窗口将绘制为活动状态栏
        always_divide_middle = true, -- 中间部分总是被分割
        always_show_tabline = true,  -- 如果配置了标签栏，则始终显示标签栏。如果为 false，则仅在多于 1 个标签时显示
        globalstatus = false,        -- 启用全局状态栏（在 neovim 底部显示单个状态栏，而不是每个窗口一个）。此功能仅在 neovim 0.7 及更高版本中可用
        refresh = {                  -- 设置 lualine 刷新其内容的频率（毫秒）
          statusline = 1000,         -- 状态栏刷新间隔
          tabline = 1000,            -- 标签栏刷新间隔
          winbar = 1000,             -- 窗口栏刷新间隔
          refresh_time = 16,         -- ~60fps，处理刷新队列的时间，lualine 的最小刷新时间
          events = {                 -- 触发 lualine 刷新的自动命令事件
            'WinEnter',
            'BufEnter',
            'BufWritePost',
            'SessionLoadPost',
            'FileChangedShellPost',
            'VimResized',
            'Filetype',
            'CursorMoved',
            'CursorMovedI',
            'ModeChanged',
          },
        }
      },
      sections = {                   -- 活动窗口的状态栏部分
        lualine_a = {'mode'},        -- A 部分：模式
        lualine_b = {'branch', 'diff', 'diagnostics'}, -- B 部分：分支、差异、诊断
        lualine_c = {'filename'},    -- C 部分：文件名
        lualine_x = {'encoding', 'fileformat', 'filetype'}, -- X 部分：编码、文件格式、文件类型
        lualine_y = {'progress'},    -- Y 部分：进度
        lualine_z = {'location'}     -- Z 部分：位置
      },
      inactive_sections = {          -- 非活动窗口的状态栏部分
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},      -- 标签栏配置（类似状态栏）
      winbar = {},       -- 窗口栏配置（Neovim 0.8+，类似状态栏但位于窗口顶部）
      inactive_winbar = {}, -- 非活动窗口的窗口栏配置
      extensions = {}    -- 扩展列表，用于为特定文件类型更改状态栏外观
    }
<


默认配置                  如果您想获取当前的 lualine 配置，可以使用：

>
    require('lualine').get_config()
<


------------------------------------------------------------------------------

启动 LUALINE ~

>
    require('lualine').setup()
<


------------------------------------------------------------------------------

设置主题 ~

>
    options = { theme = 'gruvbox' }
<


所有可用的主题都列在 THEMES.md <./THEMES.md> 中。

如果您在我们之前移植了一个流行主题，请创建一个 PR，这里是如何操作
<./CONTRIBUTING.md>。

                                                  *lualine-Customizing-themes*

>
    local custom_gruvbox = require'lualine.themes.gruvbox'
    
    -- 更改正常模式下 lualine_c 部分的背景色
    custom_gruvbox.normal.c.bg = '#112233'
    
    require('lualine').setup {
      options = { theme  = custom_gruvbox },
      ...
    }
<


自定义主题                     主题结构可在此处查看
                                       <https://github.com/nvim-lualine/lualine.nvim/wiki/Writing-a-theme>.


------------------------------------------------------------------------------

分隔符 ~

lualine 定义了两类分隔符：

- `section_separators` - 各部分之间的分隔符
- `component_separators` - 各部分内不同组件之间的分隔符

**注意**：如果在浏览器中查看此 README，下面的字符很可能不可见。

>
    options = {
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' }
    }
<


此处，`left` 指的是最左侧的部分（a, b, c），`right` 指的是最右侧的部分（x, y, z）。

                                                *lualine-Disabling-separators*

>
    options = { section_separators = '', component_separators = '' }
<


------------------------------------------------------------------------------

更改 LUALINE 各部分中的组件 ~

>
    sections = {lualine_a = {'mode'}}
<


                                                *lualine-Available-components*


- `branch` (git 分支)
- `buffers` (显示当前可用的缓冲区)
- `diagnostics` (来自您首选来源的诊断计数)
- `diff` (git 差异状态)
- `encoding` (文件编码)
- `fileformat` (文件格式)
- `filename` (文件名)
- `filesize` (文件大小)
- `filetype` (文件类型)
- `hostname` (主机名)
- `location` (文件中的位置，格式为 行:列)
- `mode` (vim 模式)
- `progress` (文件中的进度百分比)
- `searchcount` (当 hlsearch 激活时，搜索匹配的数量)
- `selectioncount` (选中的字符或行数)
- `tabs` (显示当前可用的标签页)
- `windows` (显示当前可用的窗口)
- `lsp_status` (显示当前缓冲区中活跃的 LSP 和一个进度旋转器)


                                                   *lualine-Custom-components*

LUA 函数作为 LUALINE 组件

>
    local function hello()
      return [[hello world]]
    end
    sections = { lualine_a = { hello } }
<


VIM 函数作为 LUALINE 组件

>
    sections = { lualine_a = {'FugitiveHead'} }
<


VIM 的状态栏项目作为 LUALINE 组件

>
    sections = { lualine_c = {'%=', '%t%m', '%3p'} }
<


VIM 变量作为 LUALINE 组件

可以使用 `g:`, `v:`, `t:`, `w:`, `b:`, `o:`, `to:`, `wo:`, `bo:` 作用域的变量。

如果您不确定该使用什么，请参阅 `:h lua-vim-variables` 和 `:h lua-vim-options`。

>
    sections = { lualine_a = { 'g:coc_status', 'bo:filetype' } }
<


LUA 表达式作为 LUALINE 组件

您可以使用任何有效的 lua 表达式作为组件，包括：

- 单行表达式
- 全局变量
- require 语句

>
    sections = { lualine_c = { "os.date('%a')", 'data', "require'lsp-status'.status()" } }
<

在此示例中，`data` 是一个全局变量。

------------------------------------------------------------------------------

组件选项 ~

组件选项可以改变组件的行为方式。有两种选项：

- 影响所有组件的全局选项
- 影响特定组件的局部选项

全局选项可以用作局部选项（可以应用于特定组件），但不能将局部选项用作全局选项。局部使用的全局选项会覆盖全局设置，例如：

>
        require('lualine').setup {
          options = { fmt = string.lower }, -- 全局格式化函数设为小写
          sections = { lualine_a = {
            { 'mode', fmt = function(str) return str:sub(1,1) end } }, -- mode 组件使用自定义格式化函数，只显示第一个字符
                      lualine_b = {'branch'} } -- branch 组件使用全局格式化函数 string.lower，显示为小写
        }
<


`mode` 将使用传递的函数进行格式化，因此只显示第一个字符。另一方面，`branch` 将使用全局格式化器 `string.lower` 进行格式化，因此它将显示为小写。

                                                   *lualine-Available-options*

                                                      *lualine-Global-options*

全局选项                         这些是在 `options` 表中使用的选项。它们设置了 lualine 的行为。

此处设置的值被视为其他在组件级别工作的选项的默认值。

例如，即使 `icons_enabled` 是一个通用组件选项。您可以将 `icons_enabled` 设置为 `false`，那么所有组件上的图标都将被禁用。您仍然可以通过在组件中指定选项值来覆盖在选项表中设置的默认值。

>
    options = {
      theme = 'auto', -- lualine 主题
      component_separators = { left = '', right = '' }, -- 组件分隔符
      section_separators = { left = '', right = '' },   -- 部分分隔符
      disabled_filetypes = {     -- 要禁用 lualine 的文件类型
          statusline = {},       -- 仅在状态栏忽略该文件类型
          winbar = {},           -- 仅在窗口栏忽略该文件类型
      },
      ignore_focus = {},         -- 如果当前文件类型在此列表中，则始终绘制为非活动状态栏，最后一个窗口将绘制为活动状态栏。
                                 -- 例如，如果您不希望文件树/侧边栏窗口的状态栏处于活动状态，可以在此处添加它们的文件类型。
                                 --
                                 -- 也可以设置为一个函数，该函数接收当前聚焦的窗口作为其唯一参数
                                 -- 并返回一个布尔值，表示该窗口的状态栏是否应绘制为非活动状态。
      always_divide_middle = true, -- 当设置为 true 时，左侧部分（即 'a','b','c'）
                                   -- 即使 'x', 'y' 或 'z' 都不存在，也不能占据整个状态栏。
      always_show_tabline = true, -- 当设置为 true 时，如果您已配置 lualine 显示标签栏，则标签栏将始终显示。
                              -- 如果设置为 false，则仅当有超过 1 个标签时才显示标签栏。(参见 :h showtabline)
      globalstatus = false,        -- 启用全局状态栏（在 neovim 底部显示单个状态栏，而不是每个窗口一个）。
                                   -- 此功能仅在 neovim 0.7 及更高版本中可用。
      refresh = {                  -- 设置 lualine 刷新其内容的频率（毫秒）
        statusline = 100,          -- 状态栏刷新间隔。lualine 尝试维持的最小刷新间隔。
        tabline = 100,             -- 标签栏刷新间隔。这并不能保证如果情况需要 lualine 在此之前刷新自身时它不会刷新。
        winbar = 100,              -- 窗口栏刷新间隔。
        refresh_time = 16,         -- ~60fps，处理刷新队列的时间。lualine 的最小刷新时间。
        events = {                 -- lualine 刷新的自动命令事件
          'WinEnter',
          'BufEnter',
          'BufWritePost',
          'SessionLoadPost',
          'FileChangedShellPost',
          'VimResized',
          'Filetype',
          'CursorMoved',
          'CursorMovedI',
          'ModeChanged',
        },
                                   -- 您也可以通过调用 refresh 函数来强制 lualine 刷新
                                   -- 例如 require('lualine').refresh()
      }
    }
<


                                           *lualine-General-component-options*

通用组件选项              这些是控制组件级别行为的选项，并且对所有组件可用。

>
    sections = {
      lualine_a = {
        {
          'mode', -- 组件内容
          icons_enabled = true, -- 启用图标显示在组件旁边。
          -- 定义显示在组件前面的图标。
          -- 可以是 string|table
          -- 作为 table 时，它必须包含图标作为第一项，并可以使用 color 选项自定义图标颜色。示例：
          -- {'branch', icon = ''} / {'branch', icon = {'', color={fg='green'}}}
    
          -- 图标位置也可以从 table 中设置为右侧。示例：
          -- {'branch', icon = {'', align='right', color={fg='green'}}}
          icon = nil,
    
          separator = nil,      -- 确定组件使用什么分隔符。
                                -- 注意：
                                --  当提供字符串时，它被视为 component_separator。
                                --  当提供 table 时，它被视为 section_separator。
                                --  传递空字符串将禁用分隔符。
                                --
                                -- 这些选项可用于在组件周围设置彩色分隔符。
                                --
                                -- 选项需要这样设置：
                                --   separator = { left = '', right = ''}
                                --
                                -- 其中 left 将放置在组件的左侧，
                                -- right 将放置在其右侧。
          cond = nil,           -- 条件函数，当函数返回 `true` 时加载组件。
          draw_empty = false,   -- 即使组件为空也是否绘制它。如果只想要分隔符可能很有用。
          -- 为组件定义自定义颜色：
          --
          -- 'highlight_group_name' | { fg = '#rrggbb'|cterm_value(0-255)|'color_name(red)', bg= '#rrggbb', gui='style' } | function
          -- 注意：
          --  '|' 是 'or' 的同义词，意味着该占位符有不同的可接受格式。
          -- 颜色函数必须返回其他颜色类型之一 ('highlight_group_name' | { fg = '#rrggbb'|cterm_value(0-255)|'color_name(red)', bg= '#rrggbb', gui='style' })
          -- 颜色函数可用于根据状态显示不同颜色，如下所示。
          --
          -- 示例：
          --   color = { fg = '#ffaa88', bg = 'grey', gui='italic,bold' },
          --   color = { fg = 204 }   -- 当省略 fg/bg 时，它们默认为您主题的 fg/bg。
          --   color = 'WarningMsg'   -- 也可以使用高亮组。
          --   color = function(section)
          --      return { fg = vim.bo.modified and '#aa3355' or '#33aa88' }
          --   end,
          color = nil, -- 默认是您主题中该部分和模式的颜色。
          -- 指定组件是什么类型，如果省略，lualine 会为您猜测。
          --
          -- 可用类型有：
          --   [格式: type_name(例子)], mod(branch/filename),
          --   stl(%f/%m), var(g:coc_status/bo:modifiable),
          --   lua_expr(lua 表达式), vim_fun(viml 函数名)
          --
          -- 注意：
          -- lua_expr 是 lua-expression 的缩写，vim_fun 是 vim-function 的缩写。
          type = nil,
          padding = 1, -- 在组件的左侧和右侧添加填充。
                       -- 填充可以独立指定为左侧或右侧，例如：
                       --   padding = { left = left_padding, right = right_padding }
          fmt = nil,   -- 格式化函数，格式化组件的输出。
                       -- 此函数接收两个参数：
                       -- - 将要显示的字符串，可以被更改、增强等。
                       -- - 上下文对象，包含您可能需要的信息。例如，如果与标签页一起使用，则为 tabnr。
          on_click = nil, -- 接受一个函数，当组件被鼠标点击时调用。
                       -- 该函数接收几个参数
                       -- - 多次点击情况下的点击次数
                       -- - 使用的鼠标按钮 (l(左)/r(右)/m(中)/...)
                       -- - 按下的修饰键 (s(shift)/c(ctrl)/a(alt)/m(meta)...)
        }
      }
    }
<


                                          *lualine-Component-specific-options*

组件特定选项             这些是特定组件上可用的选项。例如，您可以在 `diagnostics` 组件上指定诊断来源的选项。

                                           *lualine-buffers-component-options*

>
    sections = {
      lualine_a = {
        {
          'buffers',
          show_filename_only = true,   -- 设置为 false 时显示缩短的相对路径。
          hide_filename_extension = false,   -- 设置为 true 时隐藏文件扩展名。
          show_modified_status = true, -- 缓冲区被修改时显示指示器。
          mode = 0, -- 0: 显示缓冲区名称
                    -- 1: 显示缓冲区索引
                    -- 2: 显示缓冲区名称 + 缓冲区索引
                    -- 3: 显示缓冲区编号
                    -- 4: 显示缓冲区名称 + 缓冲区编号
          max_length = vim.o.columns * 2 / 3, -- 缓冲区组件的最大宽度，
                                              -- 也可以是一个动态返回 `max_length` 值的函数。
          filetype_names = {
            TelescopePrompt = 'Telescope',
            dashboard = 'Dashboard',
            packer = 'Packer',
            fzf = 'FZF',
            alpha = 'Alpha'
          }, -- 为特定文件类型显示特定的缓冲区名称 ( { `filetype` = `buffer_name`, ... } )
          -- 自动更新活动缓冲区颜色以匹配其他组件的颜色（如果设置了 buffers_color 则会被覆盖）
          use_mode_colors = false,
          buffers_color = {
            -- 此处可以使用与通用颜色选项相同的值。
            active = 'lualine_{section}_normal',     -- 活动缓冲区的颜色。
            inactive = 'lualine_{section}_inactive', -- 非活动缓冲区的颜色。
          },
          symbols = {
            modified = ' ●',      -- 缓冲区被修改时显示的文本
            alternate_file = '#', -- 用于标识备用文件的文本
            directory =  '',     -- 缓冲区是目录时显示的文本
          },
        }
      }
    }
<


                                          *lualine-datetime-component-options*

>
    sections = {
      lualine_a = {
        {
          'datetime',
          -- 选项: default, us, uk, iso, 或您自己的格式字符串 ("%H:%M", 等..)
          style = 'default'
        }
      }
    }
<


                                       *lualine-diagnostics-component-options*

>
    sections = {
      lualine_a = {
        {
          'diagnostics',
          -- 诊断来源表，可用来源有：
          --   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'
          -- 或者一个返回如下表的函数：
          --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
          sources = { 'nvim_diagnostic', 'coc' },
          -- 显示定义严重性类型的诊断信息
          sections = { 'error', 'warn', 'info', 'hint' }, -- 要显示的错误类型
          diagnostics_color = {
            -- 此处可以使用与通用颜色选项相同的值。
            error = 'DiagnosticError', -- 更改诊断错误颜色。
            warn  = 'DiagnosticWarn',  -- 更改诊断警告颜色。
            info  = 'DiagnosticInfo',  -- 更改诊断信息颜色。
            hint  = 'DiagnosticHint',  -- 更改诊断提示颜色。
          },
          symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}, -- 各诊断级别使用的符号
          colored = true,           -- 如果设置为 true，则以彩色显示诊断状态。
          update_in_insert = false, -- 在插入模式下更新诊断。
          always_visible = false,   -- 即使没有诊断也显示诊断组件。
        }
      }
    }
<


                                              *lualine-diff-component-options*

>
    sections = {
      lualine_a = {
        {
          'diff',
          colored = true, -- 如果设置为 true，则显示彩色的 diff 状态
          diff_color = {
            -- 此处可以使用与通用颜色选项相同的值。
            added    = 'LuaLineDiffAdd',    -- 更改 diff 的添加颜色
            modified = 'LuaLineDiffChange', -- 更改 diff 的修改颜色
            removed  = 'LuaLineDiffDelete', -- 更改 diff 的删除颜色
          },
          symbols = {added = '+', modified = '~', removed = '-'}, -- 更改 diff 使用的符号。
          source = nil, -- 一个作为 diff 数据源的函数。
                        -- 它必须返回一个如下表：
                        --   { added = add_count, modified = modified_count, removed = removed_count }
                        -- 或在失败时返回 nil。count <= 0 将不显示。
        }
      }
    }
<


                                        *lualine-fileformat-component-options*

>
    sections = {
      lualine_a = {
        {
          'fileformat',
          symbols = {
            unix = '', -- e712
            dos = '',  -- e70f
            mac = '',  -- e711
          }
        }
      }
    }
<


                                          *lualine-filename-component-options*

>
    sections = {
      lualine_a = {
        {
          'filename',
          file_status = true,      -- 显示文件状态（只读状态、修改状态）
          newfile_status = false,  -- 显示新文件状态（新文件意味着创建后未写入）
          path = 0,                -- 0: 仅文件名
                                   -- 1: 相对路径
                                   -- 2: 绝对路径
                                   -- 3: 绝对路径，波浪号表示主目录
                                   -- 4: 文件名和父目录，波浪号表示主目录
          shorting_target = 40,    -- 缩短路径以为窗口中的其他组件留出 40 个空格
                                   -- （名称不好，有任何建议吗？）
          symbols = {
            modified = '[+]',      -- 文件被修改时显示的文本。
            readonly = '[-]',      -- 文件不可修改或只读时显示的文本。
            unnamed = '[No Name]', -- 未命名缓冲区显示的文本。
            newfile = '[New]',     -- 新创建文件在首次写入前显示的文本。
          }
        }
      }
    }
<


                                          *lualine-filetype-component-options*

>
    sections = {
      lualine_a = {
        {
          'filetype',
          colored = true,   -- 如果设置为 true，则显示彩色的文件类型图标
          icon_only = false, -- 仅显示文件类型的图标
          icon = { align = 'right' }, -- 在右侧显示文件类型图标
          -- icon =    {'X', align='right'}
          -- 在 filetype 组件中，table 中的图标字符串 ^ 会被忽略
        }
      }
    }
<


                                          *lualine-encoding-component-options*

>
    sections = {
      lualine_a = {
        {
          'encoding',
          -- 当文件有字节顺序标记时显示 '[BOM]'
            show_bomb = false,
        }
      }
    }
<


                                       *lualine-searchcount-component-options*

>
    sections = {
      lualine_a = {
        {
          'searchcount',
          maxcount = 999,   -- 显示的最大计数
          timeout = 500,    -- 超时时间（毫秒）
        }
      }
    }
<


                                              *lualine-tabs-component-options*

>
    sections = {
      lualine_a = {
        {
          'tabs',
          tab_max_length = 40,  -- 每个标签页的最大宽度。内容将动态缩短（例如：apple/orange -> a/orange）
          max_length = vim.o.columns / 3, -- 标签页组件的最大宽度。
                                          -- 注意：
                                          -- 它也可以是一个动态返回 `max_length` 值的函数。
          mode = 0, -- 0: 显示 tab_nr (标签页编号)
                    -- 1: 显示 tab_name (标签页名称)
                    -- 2: 显示 tab_nr + tab_name (标签页编号 + 名称)
          path = 0, -- 0: 仅显示文件名
                    -- 1: 显示相对路径并将 $HOME 缩短为 ~
                    -- 2: 显示完整路径
                    -- 3: 显示完整路径并将 $HOME 缩短为 ~
          -- 自动更新活动标签页颜色以匹配其他组件的颜色（如果设置了 buffers_color 则会被覆盖）
          use_mode_colors = false,
          tabs_color = {
            -- 此处可以使用与通用颜色选项相同的值。
            active = 'lualine_{section}_normal',     -- 活动标签页的颜色。
            inactive = 'lualine_{section}_inactive', -- 非活动标签页的颜色。
          },
          show_modified_status = true,  -- 如果文件已被修改，则在标签名旁边显示一个符号。
          symbols = {
            modified = '[+]',  -- 文件被修改时显示的文本。
          },
          fmt = function(name, context) -- 格式化函数，用于自定义标签页显示内容
            -- 如果缓冲区在标签页中被修改，显示 +
            local buflist = vim.fn.tabpagebuflist(context.tabnr) -- 获取标签页中的缓冲区列表
            local winnr = vim.fn.tabpagewinnr(context.tabnr)     -- 获取标签页中的窗口编号
            local bufnr = buflist[winnr]                         -- 获取当前窗口的缓冲区编号
            local mod = vim.fn.getbufvar(bufnr, '&mod')          -- 获取缓冲区的修改状态
    
            return name .. (mod == 1 and ' +' or '')             -- 如果修改了，在名称后添加 ' +'
          end
        }
      }
    }
<


                                           *lualine-windows-component-options*

>
    sections = {
      lualine_a = {
        {
          'windows',
          show_filename_only = true,   -- 设置为 false 时显示缩短的相对路径。
          show_modified_status = true, -- 窗口被修改时显示指示器。
          mode = 0, -- 0: 显示窗口名称
                    -- 1: 显示窗口索引
                    -- 2: 显示窗口名称 + 窗口索引
          max_length = vim.o.columns * 2 / 3, -- 窗口组件的最大宽度，
                                              -- 也可以是一个动态返回 `max_length` 值的函数。
          filetype_names = {
            TelescopePrompt = 'Telescope',
            dashboard = 'Dashboard',
            packer = 'Packer',
            fzf = 'FZF',
            alpha = 'Alpha'
          }, -- 为特定文件类型显示特定的窗口名称 ( { `filetype` = `window_name`, ... } )
          disabled_buftypes = { 'quickfix', 'prompt' }, -- 如果窗口的缓冲区类型被禁用，则隐藏该窗口
          -- 自动更新活动窗口颜色以匹配其他组件的颜色（如果设置了 buffers_color 则会被覆盖）
          use_mode_colors = false,
          windows_color = {
            -- 此处可以使用与通用颜色选项相同的值。
            active = 'lualine_{section}_normal',     -- 活动窗口的颜色。
            inactive = 'lualine_{section}_inactive', -- 非活动窗口的颜色。
          },
        }
      }
    }
<


                                        *lualine-lsp-status-component-options*

>
    sections = {
      lualine_a = {
        {
          'lsp_status',
          icon = '', -- f013, LSP 状态图标
          symbols = {
            -- 用于 LSP 进度显示的循环标准 Unicode 符号：
            spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' },
            -- LSP 完成时的标准 Unicode 符号：
            done = '✓',
            -- 插入在 LSP 名称之间的分隔符：
            separator = ' ',
          },
          -- 要忽略的 LSP 名称列表（例如，`null-ls`）：
          ignore_lsp = {},
          -- 显示 LSP 名称
          show_name = true,
        }
      }
    }
<


------------------------------------------------------------------------------

标签栏 ~

您可以使用 lualine 在标签栏中显示组件。标签栏部分的配置与状态栏完全相同。

>
    tabline = {
      lualine_a = {},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    }
<


这将在 neovim 顶部的标签栏中显示分支和文件名组件。

lualine 还提供了 2 个组件，`buffers` 和 `tabs`，您可以使用它们来获得更传统的标签栏/缓冲区线。

>
    tabline = {
      lualine_a = {'buffers'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {'tabs'}
    }
<


窗口栏 ~

从 neovim-0.8 开始，您可以使用 lualine 自定义窗口栏。窗口栏配置类似于状态栏。

>
    winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    }
    
    inactive_winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    }
<


就像状态栏一样，您可以分别为活动和非活动窗口指定窗口栏。任何 lualine 组件都可以放置在窗口栏中。状态栏支持的所有类型的自定义组件在窗口栏中也受支持。总的来说，您可以将窗口栏视为另一个 lualine 状态栏，只是它出现在窗口顶部而不是底部。

                                                             *lualine-Buffers*

缓冲区                               显示当前打开的缓冲区。类似于 bufferline。
                                       有关缓冲区组件所有内置行为的说明，请参阅 |lualine-buffers-options|。
                                       您可以使用 `:LualineBuffersJump` 根据缓冲区在缓冲区组件中的索引跳转到该缓冲区。
                                       跳转到不存在的缓冲区索引会产生错误。为避免这些错误，`LualineBuffersJump` 提供了 `<bang>` 支持，
                                       这意味着您可以调用 `:LualineBufferJump!` 来忽略这些错误。

>
      :LualineBuffersJump 2  " 跳转到缓冲区组件中的第 2 个缓冲区。
      :LualineBuffersJump $  " 跳转到缓冲区组件中的最后一个缓冲区。
      :LualineBuffersJump! 3  " 尝试跳转到第 3 个缓冲区（如果它存在）。
<


                                                                *lualine-Tabs*

标签页                                 显示当前打开的标签页。像通常的标签栏一样。
                                       有关标签页组件所有内置行为的说明，请参阅 |lualine-tabs-options|。
                                       您也可以使用 `:LualineRenameTab` 为标签页设置名称。例如：

>
    :LualineRenameTab Project_K
<

当您在标签页中使用渲染模式 2/3 时，这很有用。要取消标签页的命名，请不带参数运行 `:LualineRenameTab`。

                                               *lualine-Tabline-as-statusline*

将标签栏用作状态栏                  您也可以通过配置 `lualine.tabline` 并禁用 `lualine.sections` 和 `lualine.inactive_sections`，
                                       将状态栏完全移动到标签栏：

>
    tabline = {
    ......
      },
    sections = {},
    inactive_sections = {},
<

如果您想要更复杂的标签栏，也可以将 lualine 与其他标签栏插件一起使用，例如：

- nvim-bufferline <https://github.com/akinsho/nvim-bufferline.lua>
- tabline.nvim <https://github.com/kdheepak/tabline.nvim>

tabline.nvim 甚至默认使用 lualine 的主题 🙌 您可以在此处找到更长的列表 <https://github.com/rockerBOO/awesome-neovim#tabline>。

------------------------------------------------------------------------------

扩展 ~

lualine 扩展为具有指定文件类型的窗口/缓冲区更改状态栏外观。

默认情况下，为了提高性能，不加载任何扩展。您可以使用以下方式加载扩展：

>
    extensions = {'quickfix'}
<


                                                *lualine-Available-extensions*


- aerial (代码大纲)
- assistant (助手)
- avante
- chadtree (文件树)
- ctrlspace (控制空间)
- fern (文件树)
- fugitive (Git)
- fzf (模糊查找)
- lazy (惰性加载)
- man (手册页)
- mason (LSP 安装管理器)
- mundo (撤销树)
- neo-tree (文件树)
- nerdtree (文件树)
- nvim-dap-ui (调试界面)
- nvim-tree (文件树)
- oil (文件系统编辑)
- overseer (任务运行器)
- quickfix (快速修复列表)
- symbols-outline (符号大纲)
- toggleterm (终端)
- trouble (诊断列表)


                                                   *lualine-Custom-extensions*

自定义扩展                      您可以定义自己的扩展。如果您认为某个扩展可能对他人有用，请提交 PR。

>
    local my_extension = { sections = { lualine_a = {'mode'} }, filetypes = {'lua'} }
    require('lualine').setup { extensions = { my_extension } }
<


------------------------------------------------------------------------------

刷新 LUALINE ~

默认情况下，lualine 基于定时器和某些事件自行刷新。您可以使用 refresh 选项设置定时器的间隔。但是，您也可以通过在任何时候调用 `lualine.refresh` 函数来强制 lualine 刷新。

>
    require('lualine').refresh({
      scope = 'tabpage',  -- 刷新的范围 all/tabpage/window
      place = { 'statusline', 'winbar', 'tabline' },  -- 要刷新的 lualine 段。
    })
<


此处显示的参数是默认值。因此，不传递任何参数将被视为传递了默认值。

所以您可以简单地执行

>
    require('lualine').refresh()
<

另外，请注意，默认情况下，当您调用 refresh 时，刷新事件会在 lualine 中排队。它不会立即刷新事件。它将在下一次刷新检查通过时刷新。默认情况下，此时间设置为 16ms 以匹配 60fps。此持续时间可以通过 `options.refresh.refresh_time` 选项配置。如果您想绕过刷新队列并希望 lualine 立即处理刷新，请使用 `force=true` 参数调用 refresh，如下所示。

>
    require('lualine').refresh({
      force = true,       -- 立即刷新
      scope = 'tabpage',  -- 刷新的范围 all/tabpage/window
      place = { 'statusline', 'winbar', 'tabline' },  -- 要刷新的 lualine 段。
    })
<

实际上，这几乎从不需要。此外，您应避免在组件内部使用 `force` 调用 `lualine.refresh`。由于组件是在刷新期间评估的，在刷新时调用 refresh 可能会产生不良影响。

禁用 LUALINE ~

您可以为特定文件类型禁用 lualine：

>
    options = { disabled_filetypes = {'lua'} }
<

您也可以完全禁用 lualine。请注意，您需要在 setup 之后调用此函数

>
      require('lualine').hide({
        place = {'statusline', 'tabline', 'winbar'}, -- 此更改应用于的段。
        unhide = false,  -- 是否重新启用 lualine。
      })
<

上面为 hide 显示的参数是默认值。这意味着即使 hide 函数在没有参数的情况下调用，它也会像传递了这些参数一样工作。

简而言之，要完全禁用 lualine，您可以执行

>
    require('lualine').hide()
<

要再次启用它，您可以执行

>
    require('lualine').hide({unhide=true})
<

WIKI ~

查看 wiki <https://github.com/nvim-lualine/lualine.nvim/wiki> 获取更多信息。

您可以在此处找到一些有用的配置片段
<https://github.com/nvim-lualine/lualine.nvim/wiki/Component-snippets>。
您也可以与他人分享您出色的片段。

如果您想使用插件扩展 lualine 或想知道哪些插件已经这样做了，wiki/plugins <https://github.com/nvim-lualine/lualine.nvim/wiki/Plugins> 适合您。

由 panvimdoc <https://github.com/kdheepak/panvimdoc> 生成

vim:tw=78:ts=8:noet:ft=help:norl:
