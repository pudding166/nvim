*comment-nvim.txt*    适用于 Neovim 0.7 版本        最后更新：2021年7月11日

     _____                                     _                _
    / ____/                                   / /              (_)
   / /     ___  _ __ ___  _ __ ___   ___ _ __ / /_   _ ____   ___ _ __ ___
   / /    / _ \/ '_ ` _ \/ '_ ` _ \ / _ \ '_ \/ __/ / '_ \ \ / / / '_ ` _ \
   / /___/ (_) / / / / / / / / / / /  __/ / / / /_ _/ / / \ V // / / / / / /
    \_____\___//_/ /_/ /_/_/ /_/ /_/\___/_/ /_/\__(_)_/ /_/\_/ /_/_/ /_/ /_/

                    · 智能且强大的注释插件 ·


==============================================================================
目录                                                         *comment.contents*

介绍 ·························································· |comment-nvim|
使用 ·························································· |comment.usage|
配置 ························································· |comment.config|
键位绑定 ················································· |comment.keybindings|
插件映射 ···················································· |comment.plugmap|
核心 Lua API ···················································· |comment.api|
语言/文件类型检测 ··············································· |comment.ft|
工具函数 ······················································ |comment.utils|
操作符模式 API ············································· |comment.opfunc|
额外 API ······················································ |comment.extra|

==============================================================================
介绍                                                           *comment-nvim*

Comment.nvim 是一个为 neovim 设计的智能且强大的注释插件。它支持
点重复、计数、行注释和块注释，并且可以与移动和文本对象一起使用。
它原生集成了 |treesitter|，以支持嵌入式文件类型，如 html、vue、带有代码块的 markdown 等。

                                                             *comment.dotrepeat*
Comment.nvim 使用 |operatorfunc| 结合 |g@| 来支持点重复，以及
各种标记，即 |'[| |']| |'<| |'>|，来推断由 'operatorfunc' 提供的 {motion} 参数的区域。
参见 |comment.api.call|

                                                         *comment.commentstring*
Comment.nvim 从以下位置之一获取行注释/块注释的注释字符串

 1. 'pre_hook'
       如果从此函数返回一个字符串，那么它将用于（取消）注释。
       参见 |comment.config|

 2. |comment.ft|
       使用插件内的注释字符串表（使用 treesitter）。
       如果未找到，则回退到 |commentstring|。

 3. |commentstring| - Neovim 原生的该文件类型的注释字符串

尽管 Comment.nvim 支持原生的 'commentstring'，但不幸的是它的优先级最低。
这种方法的注意事项是，如果有人设置了 `commentstring` 但没有从 'pre_hook' 返回它，
并且当前文件类型也存在于 |comment.ft| 中，那么注释将使用 |comment.ft| 中的字符串
而不是使用 'commentstring'。要覆盖此行为，您必须手动从 'pre_hook' 返回 'commentstring'。

                                                            *comment.sourcecode*
Comment.nvim 是 FOSS（自由开源软件），并在 MIT 许可证下分发。所有源代码
可在 https://github.com/numToStr/Comment.nvim 获取。

==============================================================================
使用                                                            *comment.usage*

在使用插件之前，您需要调用 `setup()` 函数来创建默认映射。
如果您愿意，也可以通过给它一个部分的 'comment.config.Config' 对象来覆盖默认配置，
然后它将与默认配置合并。

C.setup({config?})                                         *comment.usage.setup*
    配置插件

    参数：~
        {config?}  (CommentConfig)  用户配置

    返回：~
        (CommentConfig)  返回修改后的配置

    参见：~
        |comment.config|

    用法：~
>lua
        -- 使用默认配置
        require('Comment').setup()

        -- 或使用自定义配置
        require('Comment').setup({
            ignore = '^$',
            toggler = {
                line = '<leader>cc',
                block = '<leader>bc',
            },
            opleader = {
                line = '<leader>c',
                block = '<leader>b',
            },
        })
<


==============================================================================
配置                                                   *comment.config*

                                                       *comment.config.defaults*
以下是 |comment.usage.setup| 的默认配置。如果您想覆盖，只需修改您想要的选项，
然后它将与默认配置合并。
>lua
  {
      padding = true,
      sticky = true,
      ignore = nil,
      toggler = { line = 'gcc', block = 'gbc' },
      opleader = { line = 'gc', block = 'gb' },
      extra = { above = 'gcO', below = 'gco', eol = 'gcA' },
      mappings = { basic = true, extra = true },
      pre_hook = nil,
      post_hook = nil,
  }
<

CommentConfig                                     *comment.config.CommentConfig*
    插件的配置

    字段：~
        {padding}    (boolean|fun():boolean)     控制注释和行之间的空格
                                                 （默认: 'true'）
        {sticky}     (boolean)                   光标是否应保持在相同位置。
                                                 仅适用于 NORMAL 模式映射（默认: 'true'）
        {ignore}     (string|fun():string)       用于在（取消）注释期间忽略行的
                                                 Lua 模式（默认: 'nil'）
        {mappings}   (Mappings|false)            启用 |comment.keybindings|
                                                 注意：如果给定 'false'，则
                                                 插件不会创建任何映射
        {toggler}    (Toggler)                   参见 |comment.config.Toggler|
        {opleader}   (Opleader)                  参见 |comment.config.Opleader|
        {extra}      (ExtraMapping)              参见 |comment.config.ExtraMapping|
        {pre_hook}   (fun(c:CommentCtx):string)  在（取消）注释之前调用的函数。
                                                 它使用类型为 |comment.utils.CommentCtx| 的
                                                 {ctx} 参数调用（默认: 'nil'）
        {post_hook}  (fun(c:CommentCtx))         在（取消）注释之后调用的函数。
                                                 它使用类型为 |comment.utils.CommentCtx| 的
                                                 {ctx} 参数调用（默认: 'nil'）


Mappings                                               *comment.config.Mappings*
    创建默认映射

    字段：~
        {basic}  (boolean)  启用操作符等待映射；`gcc`、`gbc`、
                            `gc{motion}` 和 `gb{motion}`（默认: 'true'）
        {extra}  (boolean)  启用额外映射；`gco`、`gcO` 和 `gcA`
                            （默认: 'true'）


Toggler                                                 *comment.config.Toggler*
    NORMAL 模式中切换映射的左侧键

    字段：~
        {line}   (string)  行注释（默认: 'gcc'）
        {block}  (string)  块注释（默认: 'gbc'）


Opleader                                               *comment.config.Opleader*
    NORMAL 和 VISUAL 模式中操作符模式映射的左侧键

    字段：~
        {line}   (string)  行注释（默认: 'gc'）
        {block}  (string)  块注释（默认: 'gb'）


ExtraMapping                                       *comment.config.ExtraMapping*
    额外映射的左侧键

    字段：~
        {below}  (string)  在下方插入注释（默认: 'gco'）
        {above}  (string)  在上方插入注释（默认: 'gcO'）
        {eol}    (string)  在行尾插入注释（默认: 'gcA'）


Config:get()                                                *comment.config:get*
    获取配置

    返回：~
        (CommentConfig)

    用法：~
>lua
        require('Comment.config'):get()
<


==============================================================================
键位绑定                                                *comment.keybindings*

Comment.nvim 提供了默认的键位绑定来（取消）注释您的代码。
这些键位绑定在调用 |comment.usage.setup| 时启用，并且可以根据需要配置或禁用。

基础：~

  *gc*
  *gb*
  *gc[count]{motion}*
  *gb[count]{motion}*

      使用行注释/块注释切换区域的注释。在 'NORMAL' 模式下，它使用 'Operator-Pending' 模式
      来监听操作符/移动。在 'VISUAL' 模式下，它简单地注释所选区域。

  *gcc*
  *gbc*
  *[count]gcc*
  *[count]gbc*

      使用行注释/块注释切换当前行的注释。如果带有 'v:count' 前缀，
      则它将注释对应 {count} 行数的行。这些仅在 'NORMAL' 模式下可用。

额外：~

  *gco* - 在下方插入注释并进入 INSERT 模式
  *gcO* - 在上方插入注释并进入 INSERT 模式
  *gcA* - 在行尾插入注释并进入 INSERT 模式

==============================================================================
插件映射                                                  *comment.plugmap*

Comment.nvim 为最常用的操作提供了 <Plug> 映射。
这些默认启用，可用于创建自定义键位绑定。除了 VISUAL 模式键位绑定外，
所有插件映射都支持点重复。要创建自定义注释函数，请查看 'comment.api' 部分。

  *<Plug>(comment_toggle_linewise)*
  *<Plug>(comment_toggle_blockwise)*

     在 NORMAL 模式下使用行注释/块注释切换区域的注释。
     使用 |Operator-Pending| 模式（或 |g@|）来获取要注释的区域。
     这些驱动了 |gc| 和 |gb| 键位绑定。

  *<Plug>(comment_toggle_linewise_current)*
  *<Plug>(comment_toggle_blockwise_current)*

     在 NORMAL 模式下使用行注释/块注释切换当前行的注释。
     这些驱动了 |gcc| 和 'gbc' 键位绑定。

  *<Plug>(comment_toggle_linewise_count)*
  *<Plug>(comment_toggle_blockwise_count)*

     在 NORMAL 模式下使用 'v:count' 和行注释/块注释切换区域的注释。
     这些驱动了 |[count]gcc| 和 |[count]gbc| 键位绑定。

  *<Plug>(comment_toggle_linewise_visual)*
  *<Plug>(comment_toggle_blockwise_visual)*

     在 VISUAL 模式下使用行注释/块注释切换所选区域的注释。
     这些驱动了 |{visual}gc| 和 |{visual}gb| 键位绑定。

用法：~
>lua
    -- 切换当前行或带计数
    vim.keymap.set('n', 'gcc', function()
        return vim.v.count == 0
            and '<Plug>(comment_toggle_linewise_current)'
            or '<Plug>(comment_toggle_linewise_count)'
    end, { expr = true })

    -- 在操作符等待模式下切换
    vim.keymap.set('n', 'gc', '<Plug>(comment_toggle_linewise)')

    -- 在 VISUAL 模式下切换
    vim.keymap.set('x', 'gc', '<Plug>(comment_toggle_linewise_visual)')
<

==============================================================================
核心 Lua API                                                       *comment.api*

此模块提供了核心的 lua API，这些 API 被默认键位绑定和 <Plug>（阅读 |comment.plugmap|）映射使用。
这些 API 可用于设置您自己的自定义键位绑定，甚至创建您的（取消）注释函数。

                                                   *comment.api.toggle.linewise*
                                                  *comment.api.toggle.blockwise*
api.toggle                                                  *comment.api.toggle*
     提供 API 来使用行或块注释字符串切换区域、当前行或带计数的注释。

     除了 '*.count()' 函数接受 {count} 参数外，每个函数都接受 {motion} 参数，
     以及一个可选的 {config} 参数。

     类型：~
         (table)  一个包含 API 函数的元表

     参见：~
         |comment.opfunc.OpMotion|
         |comment.config|

     用法：~
>lua
         local api = require('Comment.api')
         local config = require('Comment.config'):get()

         api.toggle.linewise(motion, config?)
         api.toggle.linewise.current(motion?, config?)
         api.toggle.linewise.count(count, config?)

         api.toggle.blockwise(motion, config?)
         api.toggle.blockwise.current(motion?, config?)
         api.toggle.blockwise.count(count, config?)

         -- 使用 C-/ 切换当前行（行注释）
         vim.keymap.set('n', '<C-_>', api.toggle.linewise.current)

         -- 使用 C-\ 切换当前行（块注释）
         vim.keymap.set('n', '<C-\\>', api.toggle.blockwise.current)

         -- 切换行（行注释）并支持点重复
         -- 例如：<leader>gc3j 将注释 4 行
         vim.keymap.set(
             'n', '<leader>gc', api.call('toggle.linewise', 'g@'),
             { expr = true }
         )

         -- 切换行（块注释）并支持点重复
         -- 例如：<leader>gb3j 将注释 4 行
         vim.keymap.set(
             'n', '<leader>gb', api.call('toggle.blockwise', 'g@'),
             { expr = true }
         )

         local esc = vim.api.nvim_replace_termcodes(
             '<ESC>', true, false, true
         )

         -- 切换选择（行注释）
         vim.keymap.set('x', '<leader>c', function()
             vim.api.nvim_feedkeys(esc, 'nx', false)
             api.toggle.linewise(vim.fn.visualmode())
         end)

         -- 切换选择（块注释）
         vim.keymap.set('x', '<leader>b', function()
             vim.api.nvim_feedkeys(esc, 'nx', false)
             api.toggle.blockwise(vim.fn.visualmode())
         end)
<


                                                  *comment.api.comment.linewise*
                                                 *comment.api.comment.blockwise*
api.comment                                                *comment.api.comment*
     提供 API 来（仅）使用行或块注释字符串注释区域、当前行或带计数。

     除了 '*.count()' 函数接受 {count} 参数外，每个函数都接受 {motion} 参数，
     以及一个可选的 {config} 参数。

     类型：~
         (table)  一个包含 API 函数的元表

     参见：~
         |comment.opfunc.OpMotion|
         |comment.config|

     用法：~
>lua
         local api = require('Comment.api')
         local config = require('Comment.config'):get()

         api.comment.linewise(motion, config?)
         api.comment.linewise.current(motion?, config?)
         api.comment.linewise.count(count, config?)

         api.comment.blockwise(motion, config?)
         api.comment.blockwise.current(motion?, config?)
         api.comment.blockwise.count(count, config?)
<


                                                *comment.api.uncomment.linewise*
                                               *comment.api.uncomment.blockwise*
api.uncomment                                            *comment.api.uncomment*
     提供 API 来（仅）使用行或块注释字符串取消注释区域、当前行或带计数。

     除了 '*.count()' 函数接受 {count} 参数外，每个函数都接受 {motion} 参数，
     以及一个可选的 {config} 参数。

     类型：~
         (table)  一个包含 API 函数的元表

     参见：~
         |comment.opfunc.OpMotion|
         |comment.config|

     用法：~
>lua
         local api = require('Comment.api')
         local config = require('Comment.config'):get()

         api.uncomment.linewise(motion, config?)
         api.uncomment.linewise.current(motion?, config?)
         api.uncomment.linewise.count(count, config?)

         api.uncomment.blockwise(motion, config?)
         api.uncomment.blockwise.current(motion?, config?)
         api.uncomment.blockwise.count(count, config?)
<


api.insert                                                  *comment.api.insert*
     提供 API 来在上一行、下一行或行尾插入注释。
     每个函数都接受一个可选的 {config} 参数。

     类型：~
         (table)  一个包含 API 函数的元表

     参见：~
         |comment.config|

     用法：~
>lua
         local api = require('Comment.api')
         local config = require('Comment.config'):get()

         api.insert.linewise.above(config?)
         api.insert.linewise.below(config?)
         api.insert.linewise.eol(config?)

         api.insert.blockwise.above(config?)
         api.insert.blockwise.below(config?)
         api.insert.blockwise.eol(config?)
<


api.locked({cb})                                            *comment.api.locked*
     使用 'lockmarks' 包装给定的 API 函数以保留标记/跳转

     参数：~
         {cb}  (string)  API 函数名称

     返回：~
         (fun(motion:OpMotion))  回调函数

     参见：~
         |lockmarks|
         |comment.opfunc.OpMotion|

     用法：~
>lua
         local api = require('Comment.api')

         vim.keymap.set(
             'n', '<leader>c', api.locked('toggle.linewise.current')
         )

         local esc = vim.api.nvim_replace_termcodes(
             '<ESC>', true, false, true
         )
         vim.keymap.set('x', '<leader>c', function()
             vim.api.nvim_feedkeys(esc, 'nx', false)
             api.locked('toggle.linewise')(vim.fn.visualmode())
         end)

         -- 注意：`locked` 方法只是 `lockmarks` 的一个包装器
         vim.api.nvim_command([[
             lockmarks lua require('Comment.api').toggle.linewise.current()
         ]])
<


api.call({cb}, {op})                                          *comment.api.call*
     回调函数，执行以下操作
       1. 为点重复设置 'operatorfunc'
       2. 保留跳转和标记
       3. 存储最后的光标位置

     参数：~
         {cb}  (string)      要调用的 API 函数名称
         {op}  ("g@"|"g@$")  操作符模式表达式

     返回：~
         (fun():string)  键位映射右侧回调

     参见：~
         |g@|
         |operatorfunc|

     用法：~
>lua
         local api = require('Comment.api')
         vim.keymap.set(
             'n', 'gc', api.call('toggle.linewise', 'g@'),
             { expr = true }
         )
         vim.keymap.set(
             'n', 'gcc', api.call('toggle.linewise.current', 'g@$'),
             { expr = true }
         )
<


==============================================================================
语言/文件类型检测                                         *comment.ft*

此模块是文件类型和注释字符串检测的核心，并使用
|lua-treesitter| API 来准确检测文件类型，并为文件类型/语言提供相应的
存储在插件内的注释字符串。

支持复合（点分隔的）文件类型，即 'ansible.yaml'、'ios.swift' 等。
注释字符串的解析将从左到右进行。例如，如果文件类型是 'ansible.yaml'，
那么如果找到 'ansible' 注释字符串，则将使用它，否则将回退到 'yaml'。
阅读 `:h 'filetype'`

ft.set({lang}, {val})                                           *comment.ft.set*
     为文件类型/语言设置注释字符串

     参数：~
         {lang}  (string)           缓冲区的文件类型/语言
         {val}   (string|string[])

     返回：~
         (table)  返回自身

     用法：~
>lua
         local ft = require('Comment.ft')

         --1. 使用方法签名
         -- 仅设置行注释或两者都设置
         -- 您也可以链式调用 set 方法
         ft.set('yaml', '#%s').set('javascript', {'//%s', '/*%s*/'})

         -- 2. 元表魔法
         ft.javascript = {'//%s', '/*%s*/'}
         ft.yaml = '#%s'

         -- 3. 多个文件类型
         ft({'go', 'rust'}, {'//%s', '/*%s*/'})
         ft({'toml', 'graphql'}, '#%s')
<


ft.get({lang}, {ctype?})                                        *comment.ft.get*
     获取给定文件类型的行/块/两者注释字符串

     参数：~
         {lang}    (string)   缓冲区的文件类型/语言
         {ctype?}  (integer)  参见 |comment.utils.ctype|。如果给定 `nil`，它将
                              返回 { line, block } 注释字符串的副本。

     返回：~
         (nil|string|string[])  返回存储的注释字符串

     用法：~
>lua
         local ft = require('Comment.ft')
         local U = require('Comment.utils')

         -- 1. 主要文件类型
         ft.get('rust', U.ctype.linewise) -- `//%s`
         ft.get('rust') -- `{ '//%s', '/*%s*/' }`

         -- 2. 复合文件类型
         -- 注意：这将返回 `yaml` 注释字符串，
         --       因为未找到 `ansible` 注释字符串。
         ft.get('ansible.yaml', U.ctype.linewise) -- `#%s`
         ft.get('ansible.yaml') -- { '#%s' }
<


ft.contains({tree}, {range})                               *comment.ft.contains*
     通过递归遍历解析树来获取给定范围的语言树。
     这内部使用了 'lua-treesitter' API。这可用于计算
     嵌入了多个文件类型（如 html、vue、markdown 等）的特定区域的语言。

     注意：如果安装了 `tree-sitter-comment` 解析器，则忽略它。

     参数：~
         {tree}   (userdata)   要遍历的解析树
         {range}  (integer[])  要检查的范围
                               {start_row, start_col, end_row, end_col}

     返回：~
         (userdata)  返回一个 |treesitter-languagetree|

     参见：~
         |treesitter-languagetree|
         |lua-treesitter-core|

     用法：~
>lua
         local ok, parser = pcall(vim.treesitter.get_parser, 0)
         assert(ok, "No parser found!")
         local tree = require('Comment.ft').contains(parser, {0, 0, -1, 0})
         print('Lang:', tree:lang())
<


ft.calculate({ctx})                                       *comment.ft.calculate*
     使用 treesitter 的强大功能计算注释字符串

     参数：~
         {ctx}  (CommentCtx)

     返回：~
         (nil|string)  注释字符串

     参见：~
         |comment.utils.CommentCtx|


==============================================================================
工具函数                                                        *comment.utils*

CommentCtx                                            *comment.utils.CommentCtx*
     注释上下文

     字段：~
         {ctype}    (integer)       参见 |comment.utils.ctype|
         {cmode}    (integer)       参见 |comment.utils.cmode|
         {cmotion}  (integer)       参见 |comment.utils.cmotion|
         {range}    (CommentRange)


CommentRange                                        *comment.utils.CommentRange*
     需要注释的选择范围

     字段：~
         {srow}  (integer)  起始行
         {scol}  (integer)  起始列
         {erow}  (integer)  结束行
         {ecol}  (integer)  结束列


CommentMode                                          *comment.utils.CommentMode*
     注释模式 - 可以是手动的或通过操作符模式计算的

     字段：~
         {toggle}     (integer)  切换操作
         {comment}    (integer)  注释操作
         {uncomment}  (integer)  取消注释操作


U.cmode                                                    *comment.utils.cmode*
     包含注释模式的对象

     类型：~
         (CommentMode)


CommentType                                          *comment.utils.CommentType*
     注释类型

     字段：~
         {linewise}   (integer)  使用行注释字符串
         {blockwise}  (integer)  使用块注释字符串


U.ctype                                                    *comment.utils.ctype*
     包含注释类型的对象

     类型：~
         (CommentType)


CommentMotion                                      *comment.utils.CommentMotion*
     注释移动类型

     字段：~
         {line}   (integer)  行移动（例如 'gc2j'）
         {char}   (integer)  字符/左右移动（例如 'gc2w'）
         {block}  (integer)  可视操作符等待移动
         {v}      (integer)  可视移动（例如 'v3jgc'）
         {V}      (integer)  可视行移动（例如 'V10kgc'）


U.cmotion                                                *comment.utils.cmotion*
     包含注释移动的对象

     类型：~
         (CommentMotion)


U.get_region({opmode?})                               *comment.utils.get_region*
     获取行移动或可视选择的区域
     注意：如果未给出 `opmode`，则返回当前行的区域。

     参数：~
         {opmode?}  (OpMotion)

     返回：~
         (CommentRange)


U.get_count_lines({count})                       *comment.utils.get_count_lines*
     从当前位置获取到给定计数的行

     参数：~
         {count}  (integer)  可能是 'vim.v.count'

     返回：~
         (string[])      行列表
         (CommentRange)


U.get_lines({range})                                   *comment.utils.get_lines*
     从 NORMAL/VISUAL 模式获取行

     参数：~
         {range}  (CommentRange)

     返回：~
         (string[])  行列表


U.unwrap_cstr({cstr})                                *comment.utils.unwrap_cstr*
     验证并展开给定的注释字符串

     参数：~
         {cstr}  (string)  参见 'commentstring'

     返回：~
         (string)  注释字符串的左侧
         (string)  注释字符串的右侧


U.parse_cstr({cfg}, {ctx})                            *comment.utils.parse_cstr*
     按以下顺序从相应位置解析注释字符串
       1. pre_hook - 从函数返回的注释字符串
       2. ft.lua - 与插件捆绑的注释字符串表
       3. commentstring - Neovim 原生的。参见 'commentstring'

     参数：~
         {cfg}  (CommentConfig)
         {ctx}  (CommentCtx)

     返回：~
         (string)  注释字符串的左侧
         (string)  注释字符串的右侧


                                                       *comment.utils.commenter*
U.commenter({left}, {right}, {padding}, {scol?}, {ecol?}, {tabbed?})
     返回一个用于进行注释的闭包

     如果给闭包传递 {string[]}，它将进行块注释
     否则将使用给定的 {string} 进行行注释

     参数：~
         {left}     (string)   注释字符串的左侧
         {right}    (string)   注释字符串的右侧
         {padding}  (boolean)  是否启用填充？
         {scol?}    (integer)  起始列
         {ecol?}    (integer)  结束列
         {tabbed?}  (boolean)  使用制表符缩进

     返回：~
         (fun(line:string|string[]):string|string[])


                                                     *comment.utils.uncommenter*
U.uncommenter({left}, {right}, {padding}, {scol?}, {ecol?})
     返回一个用于取消注释行的闭包

     如果给闭包传递 {string[]}，它将进行块取消注释
     否则将使用给定的 {string} 进行行取消注释

     参数：~
         {left}     (string)   注释字符串的左侧
         {right}    (string)   注释字符串的右侧
         {padding}  (boolean)  是否启用填充？
         {scol?}    (integer)  起始列
         {ecol?}    (integer)  结束列

     返回：~
         (fun(line:string|string[]):string|string[])


                                                    *comment.utils.is_commented*
U.is_commented({left}, {right}, {padding}, {scol?}, {ecol?})
     检查给定字符串是否已被注释

     如果给闭包传递 {string[]}，它将分别使用注释字符串的 LHS 和 RHS
     检查第一行和最后一行，否则它将使用注释字符串的 LHS 和 RHS（如果给定）
     检查给定行

     参数：~
         {left}     (string)   注释字符串的左侧
         {right}    (string)   注释字符串的右侧
         {padding}  (boolean)  是否启用填充？
         {scol?}    (integer)  起始列
         {ecol?}    (integer)  结束列

     返回：~
         (fun(line:string|string[]):boolean)


==============================================================================
操作符模式 API                                               *comment.opfunc*

为 |comment.api.toggle|、|comment.api.comment| 和 |comment.api.uncomment| lua API
提供底层支持的函数。

OpMotion                                               *comment.opfunc.OpMotion*
     Vim 操作符模式移动枚举。阅读 |:map-operator|

     变体：~
         ("line")  垂直移动
         ("char")  水平移动
         ("v")     可视块移动
         ("V")     可视行移动


                                                         *comment.opfunc.opfunc*
Op.opfunc({motion?}, {cfg}, {cmode}, {ctype})
     通用的 operatorfunc 回调
     此函数包含注释/取消注释的核心逻辑

     参数：~
         {motion?}  (OpMotion)       如果给定 'nil'，它将仅（取消）注释
                                     当前行
         {cfg}      (CommentConfig)
         {cmode}    (integer)        参见 |comment.utils.cmode|
         {ctype}    (integer)        参见 |comment.utils.ctype|


                                                          *comment.opfunc.count*
Op.count({count}, {cfg}, {cmode}, {ctype})
     带计数的行注释

     参数：~
         {count}  (integer)         |v:count| 的值
         {cfg}    (CommentConfig)
         {cmode}  (integer)        参见 |comment.utils.cmode|
         {ctype}  (integer)        参见 |comment.utils.ctype|


OpFnParams                                           *comment.opfunc.OpFnParams*
     操作符模式函数参数

     字段：~
         {cfg}    (CommentConfig)
         {cmode}  (integer)        参见 |comment.utils.cmode|
         {lines}  (string[])       行列表
         {rcs}    (string)         注释字符串的右侧
         {lcs}    (string)         注释字符串的左侧
         {range}  (CommentRange)


Op.linewise({param})                                   *comment.opfunc.linewise*
     行注释

     参数：~
         {param}  (OpFnParams)

     返回：~
         (integer)  返回一个计算出的注释模式


Op.blockwise({param}, {partial?})                     *comment.opfunc.blockwise*
     完整/部分/当前行块注释

     参数：~
         {param}     (OpFnParams)
         {partial?}  (boolean)     注释部分区域（可视模式）

     返回：~
         (integer)  返回一个计算出的注释模式


==============================================================================
额外 API                                                        *comment.extra*

为 |comment.api.insert| lua API 提供底层支持的函数。

extra.insert_below({ctype}, {cfg})                  *comment.extra.insert_below*
     在当前行下方添加注释并进入 INSERT 模式

     参数：~
         {ctype}  (integer)        参见 |comment.utils.ctype|
         {cfg}    (CommentConfig)


extra.insert_above({ctype}, {cfg})                  *comment.extra.insert_above*
     在当前行上方添加注释并进入 INSERT 模式

     参数：~
         {ctype}  (integer)        参见 |comment.utils.ctype|
         {cfg}    (CommentConfig)


extra.insert_eol({ctype}, {cfg})                      *comment.extra.insert_eol*
     在当前行行尾添加注释并进入 INSERT 模式

     参数：~
         {ctype}  (integer)        参见 |comment.utils.ctype|
         {cfg}    (CommentConfig)


vim:tw=78:ts=8:noet:ft=help:norl: