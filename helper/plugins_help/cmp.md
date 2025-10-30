*nvim-cmp* *cmp*

一个用 Lua 编写的 neovim 补全插件。

==============================================================================
目录                                                              *cmp-contents*

摘要                                                              |cmp-abstract|
概念                                                              |cmp-concept|
用法                                                                |cmp-usage|
函数                                                              |cmp-function|
映射                                                              |cmp-mapping|
命令                                                              |cmp-command|
高亮                                                              |cmp-highlight|
文件类型                                                          |cmp-filetype|
自动命令                                                          |cmp-autocmd|
配置                                                              |cmp-config|
配置助手                                                  |cmp-config-helper|
开发                                                              |cmp-develop|
常见问题                                                              |cmp-faq|

==============================================================================
摘要                                                              *cmp-abstract*

这是 nvim-cmp 的文档。

1. 本帮助文件使用类型定义符号，例如 `{lsp,cmp,vim}.*`
  - 你可以在 `../lua/cmp/types/init.lua` 中找到它。
2. 高级配置在 wiki 中有描述。
  - https://github.com/hrsh7th/nvim-cmp/wiki

==============================================================================
概念                                                              *cmp-concept*

- 完全支持 LSP 补全相关能力
- 通过 Lua 函数实现强大的自定义能力
- 智能处理按键映射
- 无闪烁

==============================================================================
用法                                                                *cmp-usage*

下面是一个推荐的配置。
  注意：
    1. 你必须提供一个 `snippet.expand` 函数。
    2. 如果你使用 `native` 补全菜单，`cmp.setup.cmdline` 将不起作用。
    3. 你可以通过指定 `cmp.config.disable` 值来禁用 `default` 选项。
>vim
  call plug#begin(s:plug_dir)
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  " 对于 vsnip 用户。
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  " 对于 luasnip 用户。
  " Plug 'L3MON4D3/LuaSnip'
  " Plug 'saadparwaiz1/cmp_luasnip'

  " 对于 mini.snippets 用户。
  " Plug 'echasnovski/mini.snippets'
  " Plug 'abeldekat/cmp-mini-snippets'

  " 对于 snippy 用户。
  " Plug 'dcampos/nvim-snippy'
  " Plug 'dcampos/cmp-snippy'

  " 对于 ultisnips 用户。
  " Plug 'SirVer/ultisnips'
  " Plug 'quangnguyen30192/cmp-nvim-ultisnips'

  call plug#end()

  set completeopt=menu,menuone,noselect

  lua <<EOF
    local cmp = require'cmp'

    -- 全局设置。
    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- 对于 `vsnip` 用户。
          -- require('luasnip').lsp_expand(args.body) -- 对于 `luasnip` 用户。
          -- require'snippy'.expand_snippet(args.body) -- 对于 `snippy` 用户。
          -- vim.fn["UltiSnips#Anon"](args.body) -- 对于 `ultisnips` 用户。
          -- vim.snippet.expand(args.body) -- 对于原生的 neovim 代码片段 (Neovim v0.10+)

          -- 对于 `mini.snippets` 用户：
          -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
          -- insert({ body = args.body }) -- 在光标处插入
          -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
          -- require("cmp.config").set_onetime({ sources = {} })
        end,
      },
      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- 对于 vsnip 用户。
        -- { name = 'luasnip' }, -- 对于 luasnip 用户。
        -- { name = 'snippy' }, -- 对于 snippy 用户。
        -- { name = 'ultisnips' }, -- 对于 ultisnips 用户。
      }, {
        { name = 'buffer' },
      })
    })

    -- `/` 命令行设置。
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- `:` 命令行设置。
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
      matching = { disallow_symbol_nonprefix_matching = false }
    })

    -- 设置 lspconfig。
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require('lspconfig')[%YOUR_LSP_SERVER%].setup {
      capabilities = capabilities
    }
  EOF
<
==============================================================================
函数                                                              *cmp-function*

注意：`<Cmd>lua require('cmp').complete()<CR>` 可以在映射中用来调用这些函数。

*cmp.setup* (config: cmp.ConfigSchema)
  设置全局配置。查看配置选项。

*cmp.setup.filetype* (filetype: string, config: cmp.ConfigSchema)
  设置文件类型特定的配置。

*cmp.setup.buffer* (config: cmp.ConfigSchema)
  为当前缓冲区设置配置。

*cmp.setup.cmdline* (cmdtype: string, config: cmp.ConfigSchema)
  为特定类型的命令设置命令行配置。
  参见 |getcmdtype()|。
  注意：nvim-cmp 不支持 `=` 命令类型。

*cmp.get_registered_sources* ()
  获取所有已注册的源。

*cmp.visible* ()
  返回一个布尔值，表示补全菜单是否可见。

*cmp.visible_docs* ()
  返回一个布尔值，表示文档窗口是否可见。

*cmp.get_entries* ()
  返回所有当前条目。

*cmp.get_selected_entry* ()
  返回当前选中的条目（包括预选中的）。

*cmp.get_active_entry* ()
  返回当前选中的条目（不包括预选中的）。

*cmp.close* ()
  关闭补全菜单。

*cmp.abort* ()
  关闭补全菜单并将当前行恢复到开始当前补全之前的状态。

*cmp.select_next_item* (option: { behavior = cmp.SelectBehavior, count = 1 })
  选择下一个项。将 count 设置为较大的数字以选择向下翻页。
  `behavior` 可以是以下之一：
  - `cmp.SelectBehavior.Insert`：在光标处插入文本。
  - `cmp.SelectBehavior.Select`：仅选择文本，可能在光标处添加 ghost_text。
>lua
  cmp.setup {
    mapping = {
      ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    }
  }
<

*cmp.select_prev_item* (option: { behavior = cmp.SelectBehavior, count = 1 })
  选择上一个项。将 count 设置为较大的数字以选择向上翻页。
  `behavior` 可以是以下之一：
  - `cmp.SelectBehavior.Insert`：在光标处插入文本。
  - `cmp.SelectBehavior.Select`：仅选择文本，可能在光标处添加 ghost_text。
>lua
  cmp.setup {
    mapping = {
      ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    }
  }
<
*cmp.open_docs* ()
  打开文档视图。

*cmp.close_docs* ()
  关闭文档视图。

*cmp.scroll_docs* (delta: number)
  如果文档窗口可见，则滚动它。

*cmp.complete* (option: { reason = cmp.ContextReason, config = cmp.ConfigSchema })
  调用补全。

  以下配置定义了一个按键映射，仅显示 vsnip 代码片段的补全。
>lua
  cmp.setup {
    mapping = {
      ['<C-s>'] = cmp.mapping.complete({
        config = {
          sources = {
            { name = 'vsnip' }
          }
        }
      })
    }
  }
< >vim
  inoremap <C-S> <Cmd>lua require('cmp').complete({ config = { sources = { { name = 'vsnip' } } } })<CR>
<
  注意：这种情况下的 `config` 意味着临时设置，但 `config.mapping` 保持永久。

*cmp.complete_common_string* ()
  补全公共字符串（类似于 shell 补全行为）。
>lua
  cmp.setup {
    mapping = {
      ['<C-l>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          return cmp.complete_common_string()
        end
        fallback()
      end, { 'i', 'c' }),
    }
  }
<
*cmp.confirm* (option: cmp.ConfirmOption, callback: function)
  接受当前选中的补全项。
  如果你没有选择任何项并且选项表中包含 `select = true`，
  nvim-cmp 将自动选择第一个项。

  你可以通过 `behavior` 选项控制补全项如何注入文件：

  `behavior=cmp.ConfirmBehavior.Insert`：插入选中的项并
    将相邻文本向右移动（默认）。
  `behavior=cmp.ConfirmBehavior.Replace`：用选中的项替换
    相邻文本。
>lua
  cmp.setup {
    mapping = {
      ["<CR>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
    }
  }
<
*cmp.event:on* (%EVENT_NAME%, callback)
  订阅 nvim-cmp 的事件。事件如下所列。

  - `complete_done`：在当前补全完成后发出。
  - `confirm_done`：在确认完成后发出。
  - `menu_opened`：在打开新补全菜单后发出。调用时带有一个表，包含一个名为
    `window` 的键，指向补全菜单的实现。
  - `menu_closed`：在补全菜单关闭后发出。调用时带有一个表，包含一个名为
    `window` 的键，指向补全菜单的实现。

==============================================================================
映射                                                              *cmp-mapping*

Nvim-cmp 的映射机制复杂但灵活且用户友好。

你可以指定一个映射函数，该函数接收一个 `fallback` 函数作为参数。
`fallback` 函数可用于调用现有的映射。

例如，典型的配对插件会自动为 `<CR>` 和 `(` 定义映射。
如果你提供了映射，Nvim-cmp 将覆盖它。要调用现有的映射，
你需要调用 `fallback` 函数。
>lua
  cmp.setup {
    mapping = {
      ['<CR>'] = function(fallback)
        if cmp.visible() then
          cmp.confirm()
        else
          fallback() -- 如果你使用 vim-endwise，这个 fallback 的行为将与 vim-endwise 相同。
        end
      end
    }
  }
< >lua
  cmp.setup {
    mapping = {
      ['<Tab>'] = function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end
    }
  }
<

可以指定映射应处于活动状态的模式（`i` = 插入模式，`c` = 命令模式，`s` = 选择模式）：
>lua
  cmp.setup {
    mapping = {
      ['<CR>'] = cmp.mapping(your_mapping_function, { 'i', 'c' })
    }
  }
<
你也可以通过传递一个表来为不同的模式指定不同的映射：
>lua
  cmp.setup {
    mapping = {
      ['<CR>'] = cmp.mapping({
        i = your_mapping_function_a,
        c = your_mapping_function_b,
      })
    }
  }
<
还有一些内置的映射辅助函数可以使用：

  *cmp.mapping.close* ()
    同 |cmp.close|。

  *cmp.mapping.abort* ()
    同 |cmp.abort|。

  *cmp.mapping.select_next_item* (option: { behavior = cmp.SelectBehavior, count = 1 })
    同 |cmp.select_next_item|。

  *cmp.mapping.select_prev_item* (option: { behavior = cmp.SelectBehavior, count = 1 })
    同 |cmp.select_prev_item|。

  *cmp.mapping.open_docs* ()
    同 |cmp.open_docs|。

  *cmp.mapping.close_docs* ()
    同 |cmp.close_docs|。

  *cmp.mapping.scroll_docs* (delta: number)
    同 |cmp.scroll_docs|。

  *cmp.mapping.complete* (option: cmp.CompleteParams)
    同 |cmp.complete|。

  *cmp.mapping.complete_common_string* ()
    同 |cmp.complete_common_string|。

  *cmp.mapping.confirm* (option: cmp.ConfirmOption)
    同 |cmp.confirm|。

内置的映射辅助函数仅作为配置选项可用。
如果你想直接调用 nvim-cmp 的功能，请改用 |cmp-function|。



==============================================================================
命令                                                              *cmp-command*

*CmpStatus*
  描述源的状态和状况。
  有时会打印 `unknown` - 这是预期的。
  例如，`cmp-nvim-lsp` 在 InsertEnter 自动命令上注册自己，
  因此在运行该命令时，状态将显示为 `unknown`。



==============================================================================
高亮                                                              *cmp-highlight*

*CmpItemAbbr*
  每个补全字段未匹配字符的高亮组。

*CmpItemAbbrDeprecated*
  每个已弃用补全字段未匹配字符的高亮组。

*CmpItemAbbrMatch*
  每个补全字段已匹配字符的高亮组。已匹配字符
  必须形成一个字段的子字符串，该字段共享一个起始位置。

*CmpItemAbbrMatchFuzzy*
  每个补全字段模糊匹配字符的高亮组。

*CmpItemKind*
  字段类型的高亮组。

注意：`kind` 是每个补全选项后面的符号。

*CmpItemKind%KIND_NAME%*
  特定 `lsp.CompletionItemKind` 的字段类型的高亮组。
  如果你只想覆盖 `method` 类型的高亮组，可以这样做：
>vim
    highlight CmpItemKindMethod guibg=NONE guifg=Orange
<
*CmpItemMenu*
  菜单字段的高亮组。

==============================================================================
文件类型                                                          *cmp-filetype*

*cmp_menu*
  补全菜单缓冲区的文件类型。

*cmp_docs*
  文档窗口缓冲区的文件类型。

==============================================================================
自动命令                                                          *cmp-autocmd*

你可以通过为 User 事件定义具有以下模式的自动命令，
为某些 nvim-cmp 事件创建自定义自动命令：

*CmpReady*
  当 nvim-cmp 从 `plugin/cmp.lua` 加载时调用。

*CmpRegisterSource*
  在源注册时调用。

*CmpUnregisterSource*
  在源取消注册时调用。

==============================================================================
配置                                                              *cmp-config*

你可以通过 `cmp.setup { ... }` 使用以下选项。

                                                            *cmp-config.enabled*
enabled~
  `boolean | fun(): boolean`
  切换插件的开启和关闭。

                                                *cmp-config.performance.debounce*
performance.debounce~
  `number`
  设置防抖时间。
  这是用于将来自不同源的补全分组以进行过滤和显示的时间间隔。

                                                *cmp-config.performance.throttle*
performance.throttle~
  `number`
  设置节流时间。
  用于延迟过滤和显示补全。

                                        *cmp-config.performance.fetching_timeout*
performance.fetching_timeout~
    `number`
    设置候选获取过程的超时时间。
    nvim-cmp 将等待显示优先级最高的源。

                                *cmp-config.performance.filtering_context_budget*
performance.filtering_context_budget~
    `number`
    设置过滤上下文预算（毫秒）。
    如果过滤时间超过此值，将被推迟。

                                 *cmp-config.performance.confirm_resolve_timeout*
performance.confirm_resolve_timeout~
    `number`
    设置确认前解析项目的超时时间。

                                            *cmp-config.performance.async_budget*
performance.async_budget~
    `number`
    异步函数在事件循环的一个步骤中允许运行的最大时间（毫秒）。

                                        *cmp-config.performance.max_view_entries*
performance.max_view_entries~
    `number`
    要在条目列表中显示的最大项目数。

                                                          *cmp-config.preselect*
preselect~
  `cmp.PreselectMode`

  1. `cmp.PreselectMode.Item`
    nvim-cmp 将预选源指定的项目。
  2. `cmp.PreselectMode.None`
    nvim-cmp 不会预选任何项目。

                                                            *cmp-config.mapping*
mapping~
  `table<string, fun(fallback: function)`
  参见 |cmp-mapping| 部分。

                                                     *cmp-config.snippet.expand*
snippet.expand~
  `fun(option: cmp.SnippetExpansionParams)`
  代码片段扩展函数。这是 nvim-cmp 与特定代码片段引擎交互的方式。

                                          *cmp-config.completion.keyword_length*
completion.keyword_length~
  `number`
  触发自动补全所需的字符数。

                                         *cmp-config.completion.keyword_pattern*
completion.keyword_pattern~
  `string`
  默认的关键字模式。

                                            *cmp-config.completion.autocomplete*
completion.autocomplete~
  `cmp.TriggerEvent[] | false`
  触发自动补全的事件。如果设置为 `false`，则补全仅手动调用（例如通过调用 `cmp.complete`）。

                                             *cmp-config.completion.completeopt*
completion.completeopt~
  `string`
  类似于 vim 的 completeopt 设置。参见 'completeopt'。
  通常，你不需要更改此设置。

                                 *cmp-config.confirmation.get_commit_characters*
confirmation.get_commit_characters~
  `fun(commit_characters:string[]):string[]`
  你可以通过此配置选项函数追加或排除 commitCharacters。
  commitCharacters 由 LSP 规范定义。

                                    *cmp-config.formatting.expandable_indicator*
formatting.expandable_indicator~
  `cmp.expandable_indicator`
  布尔值，用于显示 cmp 浮动窗口中的 `~` 可展开指示器。

                                                  *cmp-config.formatting.fields*
formatting.fields~
  `cmp.ItemField[]`
  一个补全字段数组，用于指定它们的顺序。

                                                  *cmp-config.formatting.format*
formatting.format~
  `fun(entry: cmp.Entry, vim_item: vim.CompletedItem): vim.CompletedItem`
  用于自定义补全菜单外观的函数。参见
  |complete-items|。此值也可用于修改 `dup` 属性。
  注意：`vim.CompletedItem` 可以包含特殊属性
  `abbr_hl_group`、`kind_hl_group` 和 `menu_hl_group`。

                                   *cmp-config.matching.disallow_fuzzy_matching*
matching.disallow_fuzzy_matching~
  `boolean`
  是否允许模糊匹配。

                               *cmp-config.matching.disallow_fullfuzzy_matching*
matching.disallow_fullfuzzy_matching~
  `boolean`
  是否允许完全模糊匹配。

                           *cmp-config.matching.disallow_partial_fuzzy_matching*
matching.disallow_partial_fuzzy_matching~
  `boolean`
  是否允许没有前缀匹配的模糊匹配。
                                 *cmp-config.matching.disallow_partial_matching*
matching.disallow_partial_matching~
  `boolean`
  是否允许部分匹配。

                                *cmp-config.matching.disallow_prefix_unmatching*
matching.disallow_prefix_unmatching~
  `boolean`
  是否允许前缀不匹配。

                                cmp-config.matching.disallow_symbol_nonprefix_matching
matching.disallow_symbol_nonprefix_matching
  `boolean`
  如果匹配不是前缀匹配，是否允许在匹配中使用符号。

                                            *cmp-config.sorting.priority_weight*
sorting.priority_weight~
  `number`
  每个项目的原始优先级（由其相应的源给出）将增加
  `#sources - (source_index - 1)` 并乘以 `priority_weight`。
  也就是说，最终优先级由以下公式计算：
>lua
  final_score = orig_score + ((#sources - (source_index - 1)) * sorting.priority_weight)
<
                                                *cmp-config.sorting.comparators*
sorting.comparators~
  `(fun(entry1: cmp.Entry, entry2: cmp.Entry): boolean | nil)[]`
  用于自定义排序行为的函数。
  你可以通过 `cmp.config.compare.*` 使用内置比较器。

                                                            *cmp-config.sources*
sources~
  `cmp.SourceConfig[]`
  要使用的源及其配置的列表。
  源的顺序决定了它们在补全结果中的顺序。

                                                    *cmp-config.sources[n].name*
sources[n].name~
  `string`
  源的名称。

                                                  *cmp-config.sources[n].option*
sources[n].option~
  `table`
  由源本身定义的任何特定选项。

                                          *cmp-config.sources[n].keyword_length*
sources[n].keyword_length~
  `number`
  源特定的关键字长度，用于触发自动补全。

                                         *cmp-config.sources[n].keyword_pattern*
sources[n].keyword_pattern~
  `string`
  源特定的关键字模式。

                                      *cmp-config.sources[n].trigger_characters*
sources[n].trigger_characters~
  `string[]`
  源特定的关键字模式。

                                                *cmp-config.sources[n].priority*
sources[n].priority~
  `number`
  源特定的优先级值。

                                          *cmp-config.sources[n].max_item_count*
sources[n].max_item_count~
  `number`
  源特定的最大项目数选项。
  注意：这在排序之前应用，因此可能选择匹配不佳的项目。

                                             *cmp-config.sources[n].group_index*
sources[n].group_index~
  `number`
  源组索引。

  例如，如果你在 `nvim-lsp` 源可用时不想看到 `buffer` 源项目，
  可以将 `buffer` 源的 `group_index` 设置为更大的数字：
>lua
    cmp.setup {
      sources = {
        { name = 'nvim_lsp', group_index = 1 },
        { name = 'buffer', group_index = 2 },
      }
    }
<
  你也可以通过使用内置的配置助手来实现这一点，如下所示：
>lua
    cmp.setup {
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
      }, {
        { name = 'buffer' },
      })
    }
<

                                             *cmp-config.sources[n].entry_filter*
sources[n].entry_filter~
  `function`
  源特定的条目过滤器，具有以下函数签名：
>
  function(entry: cmp.Entry, ctx: cmp.Context): boolean
<

  返回 `true` 将保留条目，而返回 `false` 将删除它。

  这可用于隐藏给定源中的某些条目。例如，你可以
  使用以下源定义隐藏来自 `nvim_lsp` 过滤器中所有类型为 `Text` 的条目：
>lua
  {
    name = 'nvim_lsp',
    entry_filter = function(entry, ctx)
      return require('cmp.types').lsp.CompletionItemKind[entry:get_kind()] ~= 'Text'
    end
  }
<
  使用 `ctx` 参数，你可以进一步自定义源的行为。

                                                               *cmp-config.view*
view~
  `{ docs: cmp.DocsViewConfig }`
  `{ entries: cmp.EntriesViewConfig|string }`
  用于自定义 nvim-cmp 外观的视图类。
  当前可用的配置选项有：

                                                *cmp-config.view.docs.auto_open*
view.docs.auto_open~
  `boolean`

  指定在选择项目时是否显示 docs_view。

                                                *cmp-config.view.entries.selection_order*
view.entries.selection_order~
  `string`

  指定是在 pmenu 中选择顶部（`top_down`）还是最靠近光标（`near_cursor`）的选项。
  如果 pmenu 在光标上方并且你想更改默认选择方向，这很有用。仅限自定义视图。默认为 `top_down`。

                                                 *cmp-config.view.entries.follow_cursor*
view.entries.follow_cursor~
  `boolean`

  指定 pmenu 是否应跟随光标当前位置
  当用户输入时。仅限自定义视图。默认为 `false`。

                           *cmp-config.window.{completion,documentation}.border*
window.{completion,documentation}.border~
  `string | string[] | nil`
  当 |experimental.native_menu| 禁用时，用于补全弹出菜单的边框字符。
  参见 |nvim_open_win|。

                     *cmp-config.window.{completion,documentation}.winhighlight*
window.{completion,documentation}.winhighlight~
  `string | cmp.WinhighlightConfig`
  指定窗口的 winhighlight 选项。
  参见 |nvim_open_win|。

                     *cmp-config.window.{completion,documentation}.winblend*
window.{completion,documentation}.winblend~
  `string | cmp.WinhighlightConfig`
  指定窗口的 winblend 选项。
  参见 |nvim_open_win|。

                           *cmp-config.window.{completion,documentation}.zindex*
window.{completion,documentation}.zindex~
  `number`
  补全窗口的 zindex。
  参见 |nvim_open_win|。

                        *cmp-config.window.{completion,documentation}.scrolloff*
window.completion.scrolloff~
  `number`
  指定窗口的 scrolloff 选项。
  参见 |'scrolloff'|。

                                       *cmp-config.window.completion.col_offset*
window.completion.col_offset~
  `number`
  相对于光标偏移补全窗口。

                                     *cmp-config.window.completion.side_padding*
window.completion.side_padding~
  `number`
  在补全窗口两侧添加的内边距量。

                                     *cmp-config.window.completion.scrollbar*
window.completion.scrollbar~
  `boolean`
  如果项目过多，是否启用滚动条。

                                     *cmp-config.window.documentation.max_width*
window.documentation.max_width~
  `number`
  文档窗口的最大宽度，可以设置为 0 以使用所有可用空间。

                                    *cmp-config.window.documentation.max_height*
window.documentation.max_height~
  `number`
  文档窗口的最大高度，可以设置为 0 以使用所有可用空间。

                                            *cmp-config.experimental.ghost_text*
experimental.ghost_text~
  `boolean | { hl_group = string }`
  是否启用 ghost_text 功能。

==============================================================================
配置助手                                                *cmp-config-helper*

你可以使用以下配置助手：

cmp.config.compare~

  待定。

cmp.config.context~

  `cmp.config.context` 可用于上下文感知的补全切换。
>lua
    cmp.setup {
      enabled = function()
        -- 如果光标在 `Comment` 语法组中，则禁用补全。
        return not cmp.config.context.in_syntax_group('Comment')
      end
    }
<
  *cmp.config.context.in_syntax_group* (group)
    你可以指定 vim 的内置语法组。
    如果你使用 tree-sitter，你应该改用 `cmp.config.context.in_treesitter_capture`。

  *cmp.config.context.in_treesitter_capture* (capture)
    你可以指定 treesitter 捕获名称。
    如果你不使用 `nvim-treesitter` 插件，此助手将无法正常工作。

cmp.config.mapping~

  参见 |cmp-mapping|。

cmp.config.sources~

  *cmp.config.sources* (...sources)
    你可以指定多个源数组。源按你指定的顺序分组，
    并且这些组作为后备显示，类似于链式补全。
>lua
    cmp.setup {
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
      }, {
        { name = 'buffer' },
      })
    }
<
cmp.config.window~

  *cmp.config.window.bordered* (option)
    使补全窗口 `带边框`。
    选项在 `cmp.ConfigSchema` 中描述。
>lua
    cmp.setup {
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }
    }
<
==============================================================================
开发                                                              *cmp-develop*

创建自定义源~

注意：
  1. `complete` 方法是必需的。其他方法可以省略。
  2. 必须始终调用 `callback` 函数。
  3. 你只能在自定义源中使用 `require('cmp')`。
  4. 如果 LSP 规范发生更改，nvim-cmp 可能会在没有任何公告的情况下实现它（可能会引入破坏性更改）。
  5. 你应该阅读 ./lua/cmp/types 和 https://microsoft.github.io/language-server-protocol/specifications/specification-current。
  6. 请将你的源添加到 Wiki 的源列表中 (https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources)
  并且如果你在 GitHub 上发布它，请添加 `nvim-cmp` 主题，以便用户可以更容易地找到它。

以下是如何创建自定义源的示例：
>lua
  local source = {}

  ---返回此源在当前上下文中是否可用（可选）。
  ---@return boolean
  function source:is_available()
    return true
  end

  ---返回此源的调试名称（可选）。
  ---@return string
  function source:get_debug_name()
    return 'debug name'
  end

  ---返回 LSP 的 PositionEncodingKind。
  ---@注意：如果省略此方法，默认值将为 `utf-16`。
  ---@return lsp.PositionEncodingKind
  function source:get_position_encoding_kind()
    return 'utf-16'
  end

  ---返回用于触发补全的关键字模式（可选）。
  ---如果省略，nvim-cmp 将使用默认关键字模式。参见 |cmp-config.completion.keyword_pattern|。
  ---@return string
  function source:get_keyword_pattern()
    return [[\k\+]]
  end

  ---返回用于触发补全的触发字符（可选）。
  function source:get_trigger_characters()
    return { '.' }
  end

  ---调用补全（必需）。
  ---@param params cmp.SourceCompletionApiParams
  ---@param callback fun(response: lsp.CompletionResponse|nil)
  function source:complete(params, callback)
    callback({
      { label = 'January' },
      { label = 'February' },
      { label = 'March' },
      { label = 'April' },
      { label = 'May' },
      { label = 'June' },
      { label = 'July' },
      { label = 'August' },
      { label = 'September' },
      { label = 'October' },
      { label = 'November' },
      { label = 'December' },
    })
  end

  ---解析补全项（可选）。这是在补全即将显示之前调用的。
  ---用于设置文档窗口中显示的文本（`completion_item.documentation`）。
  ---@param completion_item lsp.CompletionItem
  ---@param callback fun(completion_item: lsp.CompletionItem|nil)
  function source:resolve(completion_item, callback)
    callback(completion_item)
  end

  ---在项目被选择后执行。
  ---@param completion_item lsp.CompletionItem
  ---@param callback fun(completion_item: lsp.CompletionItem|nil)
  function source:execute(completion_item, callback)
    callback(completion_item)
  end

  ---将你的源注册到 nvim-cmp。
  require('cmp').register_source('month', source)
<
==============================================================================
常见问题                                                              *cmp-faq*

为什么 cmp 自动选择某个特定项目？ ~
如何禁用预选功能？ ~

  Nvim-cmp 遵循 LSP（语言服务器协议）规范。
  LSP 规范为补全定义了 `preselect` 功能。

  你可以像这样禁用 `preselect` 功能：
>lua
  cmp.setup {
    preselect = cmp.PreselectMode.None
  }
<
如何仅禁用特定语言服务器的补全？~

  你可以在 lspconfig 配置中禁用 `completionProvider`。
>lua
  lspconfig[%SERVER_NAME%].setup {
    on_attach = function(client)
      client.server_capabilities.completionProvider = false
    end
  }
<


如何禁用 commitCharacters？~

  你可以禁用 commitCharacters 功能（在 LSP 规范中定义）：
>lua
  cmp.setup {
    confirmation = {
      get_commit_characters = function(commit_characters)
        return {}
      end
    }
  }
<

如何禁用文档视图的自动显示？~

  你可以添加配置 `view.docs.auto_open = false`。
>lua
  cmp.setup {
    ...
    view = {
      docs = {
        auto_open = false
      }
    }
    ...
  }
<

  此外，如果你想通过按键映射打开/关闭文档视图，你可以
  定义如下的按键映射。
>lua
  cmp.setup {
    ...
    mapping = {
      ['<C-g>'] = function()
        if cmp.visible_docs() then
          cmp.close_docs()
        else
          cmp.open_docs()
        end
      end
    }
    ...
  }
<

如何禁用自动补全？~
如何将 nvim-cmp 用作 omnifunc？~

  你可以像这样禁用自动补全：
>lua
  cmp.setup {
    ...
    completion = {
      autocomplete = false
    }
    ...
  }
<
  然后你需要手动调用补全。
>vim
  inoremap <C-x><C-o> <Cmd>lua require('cmp').complete()<CR>
<

如何为特定缓冲区禁用 nvim-cmp？~
如何为特定缓冲区设置 nvim-cmp？~

  你可以像这样设置缓冲区特定的配置：
>lua
  cmp.setup.filetype({ 'markdown', 'help' }, {
    sources = {
      { name = 'path' },
      { name = 'buffer' },
    }
  })
<

如何禁用文档窗口？~

  只需使用以下配置：
>lua
  cmp.setup.filetype({ 'markdown', 'help' }, {
    window = {
      documentation = cmp.config.disable
    }
  })
<

我正在使用 clangd。菜单项缩进错误。~

  这是由 clangd 引起的。你可以为 clangd 的命令行参数指定 `--header-insertion-decorators`。
  参见 #999。


如何与 copilot.vim 集成？~

  Copilot.vim 和 nvim-cmp 都有 `按键映射回退` 机制。
  因此，你应该自己管理这些插件。

  幸运的是，copilot.vim 有一个禁用回退机制的功能。
>vim
  let g:copilot_no_tab_map = v:true
  imap <expr> <Plug>(vimrc:copilot-dummy-map) copilot#Accept("\<Tab>")
<
  你可以在 nvim-cmp 的按键映射函数中管理 copilot.vim 的接受功能：
>lua
  cmp.setup {
    mapping = {
      ['<C-g>'] = cmp.mapping(function(fallback)
        vim.api.nvim_feedkeys(vim.fn['copilot#Accept'](vim.api.nvim_replace_termcodes('<Tab>', true, true, true)), 'n', true)
      end)
    },
    experimental = {
      ghost_text = false -- 此功能与 copilot.vim 的预览冲突。
    }
  }
<
nvim-cmp 不能按预期工作。~

  有一些已知问题。请检查以下内容。

  - nvim-cmp 不适用于 `set paste` 选项。
  - 命令行模式按键映射是统一的，无论 `:`、`/`、`?`。因此，不可能仅将映射应用于 `:`。

如何自定义菜单外观？~

  请查看 wiki (https://github.com/hrsh7th/nvim-cmp/wiki)。

==============================================================================
 vim:tw=78:ts=2:et:ft=help:norl: