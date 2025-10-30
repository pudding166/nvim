-- ~/.config/nvim/lua/plugins/nvim-cmp.lua
return {
  -- 主补全引擎 提供智能代码补全功能
  {
    'hrsh7th/nvim-cmp',

    -- 插件触发时机
    event = {
      "InsertEnter", -- 在进入插入模式时加载
    },

    -- 依赖插件
    dependencies = {
      'hrsh7th/cmp-nvim-lsp', -- LSP 补全源 (从语言服务器获取补全建议)
      'hrsh7th/cmp-buffer',   -- 缓冲区补全源 (从当前文件内容获取补全)
      'hrsh7th/cmp-path',     -- 路径补全源 (文件系统路径补全)
      'hrsh7th/cmp-cmdline',  -- 命令行补全源 (命令补全)
    },

    -- 插件配置选项
    opts = {
      -- -- 窗口配置
      -- window = {
      --   completion = {
      --     winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
      --   },
      --   documentation = {
      --     winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
      --   },
      -- },
    },

    config = function(_, opts)
      local cmp = require('cmp')

      -- 加载主要配置
      cmp.setup({
        -- 补全数据源配置 (按优先级排序)
        sources = cmp.config.sources({
          { name = 'nvim_lsp' }, -- LSP 补全: 从语言服务器获取智能补全
          { name = 'buffer' },   -- 缓冲区补全: 从当前文件内容获取补全
          { name = 'path' },     -- 路径补全: 文件系统路径自动补全
          { name = 'cmdline' },  -- 命令行补全: 从命令中智能补全
        }),

        -- completion = {
        --   keyword_length = 1,  -- 触发补全所需的字符数
        --   autocomplete = true, -- 是否自动触发补全
        -- },

        -- 模糊匹配
        matching = {
          -- 不允许模糊匹配
          -- true: 禁用模糊匹配 只能精确匹配
          -- false: 允许模糊匹配 可以模糊匹配
          -- disallow_fuzzy_matching = true,

          -- 不允许完全模糊匹配
          -- true: 禁用完全模糊匹配 不能使用宽松的模糊匹配
          -- false: 允许完全模糊匹配 可以使用更宽松的模糊匹配
          -- disallow_fullfuzzy_matching = true,

          -- 不允许没有前缀匹配的模糊匹配
          -- true: 禁用无前缀的模糊匹配 模糊匹配必须从开头开始
          -- false: 允许无前缀的模糊匹配 模糊匹配可以从任意位置开始
          -- disallow_partial_fuzzy_matching = true,

          -- 不允许部分匹配
          -- true: 禁用部分匹配 必须匹配完整单词
          -- false: 允许部分匹配 可以匹配单词的一部分
          -- disallow_partial_matching = true,

          -- 不允许前缀不匹配
          -- true: 禁用前缀不匹配 输入必须是匹配项的前缀
          -- false: 允许前缀不匹配 输入可以不是匹配项的前缀
          -- disallow_prefix_unmatching = false,

          -- 如果匹配不是前缀匹配 不允许在匹配中使用符号
          -- true: 禁用符号的非前缀匹配 符号必须前缀匹配
          -- false: 允许符号的非前缀匹配 符号可以非前缀匹配
          -- disallow_symbol_nonprefix_matching = false,
        },

        -- 按键映射配置
        -- 如果你使用 vim-endwise 这个 fallback 的行为将与 vim-endwise 相同
        mapping = {
          -- 触发补全: 打开补全菜单
          ['<C-Space>'] = {
            i = function(fallback)
              -- 调用补全
              cmp.complete({
                config = {
                  -- 补全信息的来源
                  source = {
                    { name = 'nvim_lsp' },
                  },
                },
              })
            end,
          },

          -- 使用延迟的确认映射
          ['<CR>'] = {
            -- 插入模式下的映射
            i = function(fallback)
              -- 当前补全菜单是否可见 并且 当前是否选中了一条条目
              if cmp.visible() and cmp.get_selected_entry() then
                vim.defer_fn(function()
                  -- 接受当前补全选项
                  cmp.confirm({
                    -- 如果没有选择任何项 自动选择第一项
                    -- 如果想启用 自动选择第一项 则要在之前 if 中去除 cmp.get_selected_entry() 判断
                    select = true,

                    -- behavior = cmp.ConfirmBehavior.Insert : 插入选中的项并将相邻文本向右移动 (默认)
                    -- behavior = cmp.ConfirmBehavior.Replace : 用选中的项替换相邻文本。
                    behavior = cmp.ConfirmBehavior.Insert,
                  })
                end, 10)
                return ''
              else
                -- 正常的回车
                fallback()
              end
            end,
          },

          -- 下一个补全项: 在补全菜单中向下选择
          ['<Tab>'] = {
            -- 插入模式下的映射
            i = function(fallback)
              if cmp.visible() then
                -- 选择下一个补全项
                -- behavior: Insert 在光标处插入文本 Select 仅选择文本
                -- count: 单次操作跨越几行
                cmp.select_next_item({
                  behavior = cmp.SelectBehavior.Select,
                  count    = 1,
                })
              else
                -- 正常输入 <Tab>
                fallback()
              end
            end,
          },

          -- 上一个补全项: 在补全菜单中向上选择
          ['<S-Tab>'] = {
            i = function(fallback)
              -- 当前补全菜单是否可见
              if cmp.visible() then
                -- 选择上一个补全项
                -- behavior: Insert 在光标处插入文本 Select 仅选择文本
                -- count: 单次操作跨越几行
                cmp.select_prev_item({
                  behavior = cmp.SelectBehavior.Select,
                  count    = 1,
                })
              else
                fallback()
              end
            end,
          },
        }, -- the end of mapping
      })

      -- 命令行补全
      cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
          { name = 'path' }    -- 路径补全: 用于文件路径
        }, {
          { name = 'cmdline' } -- 命令行补全: 用于命令名称
        })
      })

      -- 搜索补全
      cmp.setup.cmdline('/', {
        sources = {
          { name = 'buffer' } -- 缓冲区补全: 用于搜索文本
        }
      })

      -- 性能优化：延迟加载不常用的补全源
      vim.defer_fn(function()
        -- 可以在这里延迟加载一些重量级的补全源
        -- 例如：cmp-nvim-lua, cmp-emoji 等
      end, 1000)
    end -- the end of config
  },

  -- LSP 补全源
  { 'hrsh7th/cmp-nvim-lsp' },

  -- 缓冲区补全源
  { 'hrsh7th/cmp-buffer' },

  -- 路径补全源
  { 'hrsh7th/cmp-path' },

  -- 命令行补全源
  { 'hrsh7th/cmp-cmdline' },
}
