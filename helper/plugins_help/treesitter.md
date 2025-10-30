*nvim-treesitter*  Neovim 的 Treesitter 配置和抽象层。

Neovim 最低版本要求: nightly

作者:
  Kiyan Yazdani <yazdani.kiyan@protonmail.com>
  Thomas Vigouroux <tomvig38@gmail.com>
  Stephan Seitz <stephan.seitz@fau.de>
  Steven Sojka <Steven.Sojka@tdameritrade.com>
  Santos Gallegos <stsewd@protonmail.com>
  https://github.com/nvim-treesitter/nvim-treesitter/graphs/contributors

                                       输入 |gO| 查看目录。

==============================================================================
介绍                                           *nvim-treesitter-intro*

nvim-treesitter 封装了 Neovim 的 treesitter API，以提供诸如高亮、增量选择等功能，以及一个方便安装解析器的命令。

==============================================================================
快速开始                                       *nvim-treesitter-quickstart*

安装您所需语言的解析器

>
  :TSInstall {语言}
<

获取支持的语言列表

>
  :TSInstallInfo
<

默认情况下，所有功能都是禁用的。
要启用支持的功能，请将以下内容放入您的 `init.lua` 文件中：

>
  require'nvim-treesitter.configs'.setup {
    -- 安装解析器的目录。
    -- 如果此项被排除或为 nil，则解析器将被安装到包目录或 "site" 目录。
    -- 如果使用了自定义路径（非 nil），则必须将其添加到 runtimepath 中。
    parser_install_dir = "/某个/存储/解析器的/路径",

    -- 一个解析器名称的列表，或 "all"
    ensure_installed = { "c", "lua", "rust" },

    -- 同步安装解析器（仅适用于 `ensure_installed`）
    sync_install = false,

    -- 在进入缓冲区时自动安装缺失的解析器
    auto_install = false,

    -- 忽略安装的解析器列表（针对 "all"）
    ignore_install = { "javascript" },

    highlight = {
      -- `false` 将禁用整个扩展
      enable = true,

      -- 将被禁用的语言列表
      disable = { "c", "rust" },

      -- 将此设置为 true 将同时运行 `:h syntax` 和 tree-sitter。
      -- 如果您依赖 'syntax' 被启用（例如用于缩进），请将此设置为 `true`。
      -- 使用此选项可能会减慢您的编辑器速度，并且您可能会看到一些重复的高亮。
      -- 除了 true，它也可以是一个语言列表
      additional_vim_regex_highlighting = false,
    },
  }
  vim.opt.runtimepath:append("/某个/存储/解析器的/路径")
<

查看 |nvim-treesitter-modules| 获取所有可用模块及其选项的列表。

==============================================================================
模块                                              *nvim-treesitter-modules*

|nvim-treesitter| 通过模块（和子模块）提供了若干功能，
每个模块都利用了为每种语言定义的查询文件。

所有模块默认都是禁用的，有些模块提供了默认的键位映射。
每个模块对应于传递给 `nvim-treesitter.configs.setup` 函数的字典中的一个条目，这应该放在您的 `init.lua` 文件中。

>
  require'nvim-treesitter.configs'.setup {
    -- 模块及其选项放在这里
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
  }
<

所有模块共享一些通用选项，例如 `enable` 和 `disable`。
当 `enable` 为 `true` 时，这将为所有支持的语言启用该模块，
如果您想为某些语言禁用该模块，可以向 `disable` 选项传递一个列表。

>
  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      disable = { "cpp", "lua" },
    },
  }
<

为了更精细的控制，`disable` 也可以接受一个函数，
当该函数返回 `true` 时，该模块将在该缓冲区中被禁用。
该函数在模块在缓冲区中启动时被调用一次，并接收语言和缓冲区编号作为参数：

>
  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      disable = function(lang, bufnr) -- 在大型 C++ 缓冲区中禁用
        return lang == "cpp" and vim.api.nvim_buf_line_count(bufnr) > 50000
      end,
    },
  }
<

定义或接受键位映射的选项使用与在 Neovim 中定义键位映射相同的格式，
因此您可以将键位映射写为 `gd`, `<space>a`, `<leader>a`
`<C-a>` (control + a), `<A-n>` (alt + n), `<CR>` (enter) 等。

外部插件可以提供它们自己的模块及其选项，
这些也可以使用 `nvim-treesitter.configs.setup` 函数进行配置。

------------------------------------------------------------------------------
高亮                                      *nvim-treesitter-highlight-mod*

一致的语法高亮。

查询文件: `highlights.scm`。
支持的选项:

- enable: `true` 或 `false`。
- disable: 语言列表。
- additional_vim_regex_highlighting: `true` 或 `false`，或一个语言列表。
  如果您依赖 'syntax' 被启用（例如用于缩进），请将此设置为 `true`。
  使用此选项可能会减慢您的编辑器速度，并且您可能会看到一些重复的高亮。
  默认为 `false`。

>
  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      custom_captures = {
        -- 使用 "Identifier" 高亮组高亮 @foo.bar 捕获组。
        ["foo.bar"] = "Identifier",
      },
      -- 将此设置为 true 或一个语言列表将同时运行 `:h syntax` 和 tree-sitter。
      additional_vim_regex_highlighting = false,
    },
  }
<

您也可以设置自定义高亮捕获
>
  lua <<EOF
    require"nvim-treesitter.highlight".set_custom_captures {
      -- 使用 "Identifier" 高亮组高亮 @foo.bar 捕获组。
      ["foo.bar"] = "Identifier",
    }
  EOF
<
注意: 该 API 尚未稳定。

------------------------------------------------------------------------------
增量选择              *nvim-treesitter-incremental-selection-mod*

基于语法中的命名节点进行增量选择。

查询文件: `locals.scm`。
支持的选项:
- enable: `true` 或 `false`。
- disable: 语言列表。
- keymaps:
  - init_selection: 在普通模式下，开始增量选择。
    默认为 `gnn`。
  - node_incremental: 在可视模式下，增量选择到上一级命名父节点。
    默认为 `grn`。
  - scope_incremental: 在可视模式下，增量选择到上一级作用域
    (在 `locals.scm` 中定义)。默认为 `grc`。
  - node_decremental: 在可视模式下，减量选择到上一个命名节点。
    默认为 `grm`。

>
  require'nvim-treesitter.configs'.setup {
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
  }
<

------------------------------------------------------------------------------
缩进                                  *nvim-treesitter-indentation-mod*

基于 treesitter 的 |=| 操作符缩进。
注意: 这是一个实验性功能。

查询文件: `indents.scm`。
支持的选项:
- enable: `true` 或 `false`。
- disable: 语言列表。
>
  require'nvim-treesitter.configs'.setup {
    indent = {
      enable = true
    },
  }

`@indent`				    *nvim-treesitter-indentation-queries*
查询可以使用以下捕获: `@indent.begin` 和 `@indent.dedent`,
`@indent.branch`, `@indent.end` 或 `@indent.align`。`@indent.ignore` 捕获告诉
treesitter 忽略缩进，而 `@indent.zero` 捕获将缩进设置为 0。

`@indent.begin`			    *nvim-treesitter-indentation-indent.begin*
`@indent.begin` 指定下一行应该缩进。同一行上的多个缩进会被合并。例如：

>
  (
   (if_statement)
   (ERROR "else") @indent.begin
  )
<

缩进也可以通过 `#set!` 指令设置 `indent.immediate`，它允许下一行缩进，即使
打算缩进的块还没有内容，从而改善交互式键入体验。

例如对于 Python：
>
 ((if_statement) @indent.begin
   (#set! indent.immediate 1))
<

将允许：
>
  if True:<CR>
      # 自动缩进到这里

`@indent.end`				*nvim-treesitter-indentation-indent.end*
`@indent.end` 捕获用于指定缩进区域结束，并且捕获之后的任何文本都应该取消缩进。

`@indent.branch`		    *nvim-treesitter-indentation-indent.branch*
`@indent.branch` 捕获用于指定一个取消缩进的区域开始于包含捕获节点的行。

`@indent.dedent`		    *nvim-treesitter-indentation-indent.dedent*
`@indent.dedent` 捕获指定从下一行开始取消缩进。

`@indent.align`		    *nvim-treesitter-indentation-aligned_indent.align*
对齐的缩进块可以使用 `@indent.align` 捕获来指定。
这允许

>
  foo(a,
      b,
      c)
<
以及
>
  foo(
    a,
    b,
    c)
<
最后
>
  foo(
    a,
    b,
    c
  )
<
要指定使用的分隔符，应使用 `indent.open_delimiter` 和
`indent.close_delimiter`。例如：
>
 ((argument_list) @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")"))
<

对于某些语言，`indent.align` 块的最后一行不能与自然下一行的缩进相同。

例如在 Python 中：

>
  if (a > b and
      c < d):
      pass

是不正确的，而
>
  if (a > b and
	c < d):
      pass

将是正确缩进的。可以使用 `indent.avoid_last_matching_next` 来选择此行为。例如：

>
 (if_statement
  condition: (parenthesized_expression) @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")")
  (#set! indent.avoid_last_matching_next 1)
 )
<
可以用来指定 `@indent.align` 捕获的最后一行应该额外缩进，以避免与 if 语句内部块第一行的缩进冲突。

==============================================================================
命令                                            *nvim-treesitter-commands*

								  *:TSInstall*
:TSInstall {语言} ...~

安装一个或多个 treesitter 解析器。
您可以使用 |:TSInstall| `all` 来安装所有解析器。使用 |:TSInstall!| 来
强制重新安装已安装的解析器。
							      *:TSInstallSync*
:TSInstallSync {语言} ...~

同步执行 |:TSInstall| 操作。

							      *:TSInstallInfo*
:TSInstallInfo~

列出当前已安装解析器的信息

								   *:TSUpdate*
:TSUpdate {语言} ...~

更新一个或多个 {语言} 的已安装解析器，或者如果省略 {语言} 则更新所有已安装的解析器。
如果指定的解析器尚未安装，则会安装它。

							       *:TSUpdateSync*
:TSUpdateSync {语言} ...~

同步执行 |:TSUpdate| 操作。

								*:TSUninstall*
:TSUninstall {语言} ...~

删除一个或多个 {语言} 的解析器。您可以为 language 使用 'all' 来卸载所有解析器。

								*:TSBufEnable*
:TSBufEnable {模块}~

在当前缓冲区启用 {模块}。
模块列表可以在 |:TSModuleInfo| 找到

							       *:TSBufDisable*
:TSBufDisable {模块}~

在当前缓冲区禁用 {模块}。
模块列表可以在 |:TSModuleInfo| 找到

								*:TSBufToggle*
:TSBufToggle {模块}~

切换（如果禁用则启用，如果启用则禁用）当前缓冲区上的 {模块}。
模块列表可以在 |:TSModuleInfo| 找到

								*:TSEnable*
:TSEnable {模块} [{语言}]~

为会话启用 {模块}。
如果指定了 {语言}，则仅为此特定语言在会话中启用模块。
模块列表可以在 |:TSModuleInfo| 找到
语言列表可以在 |:TSInstallInfo| 找到

							       *:TSDisable*
:TSDisable {模块} [{语言}]~

为会话禁用 {模块}。
如果指定了 {语言}，则仅为此特定语言在会话中禁用模块。
模块列表可以在 |:TSModuleInfo| 找到
语言列表可以在 |:TSInstallInfo| 找到

								*:TSToggle*
:TSToggle {模块} [{语言}]~

切换（如果禁用则启用，如果启用则禁用）会话的 {模块}。
如果指定了 {语言}，则仅为此特定语言切换会话的模块。
模块列表可以在 |:TSModuleInfo| 找到
语言列表可以在 |:TSInstallInfo| 找到

							       *:TSModuleInfo*
:TSModuleInfo [{模块}]~

在新的缓冲区中列出给定模块或当前会话所有模块的状态。

默认使用以下高亮组：
>
    highlight default TSModuleInfoGood guifg=LightGreen gui=bold
    highlight default TSModuleInfoBad  guifg=Crimson
    highlight default link TSModuleInfoHeader    Type
    highlight default link TSModuleInfoNamespace Statement
    highlight default link TSModuleInfoParser    Identifier
<

								*:TSEditQuery*
:TSEditQuery {查询组} [{语言}]~

编辑给定 {语言} 的 {查询组}（例如 highlights, locals）的查询文件。
如果有多个文件，会提示用户选择其中一个。
如果不存在这样的文件，则会在用户的配置目录中创建一个新文件的缓冲区。
如果未指定 {语言}，则使用当前缓冲区的语言。

						       *:TSEditQueryUserAfter*
:TSEditQueryUserAfter {查询组} [{语言}]~

与 |:TSEditQuery| 相同，但编辑的是用户配置目录中 `after` 目录下的文件。
对于为插件提供的查询添加自定义扩展非常有用。

==============================================================================
工具函数                                                  *nvim-treesitter-utils*

Nvim treesitter 有一些包装函数，您可以通过以下方式获取：
>
    local ts_utils = require 'nvim-treesitter.ts_utils'
<

方法
						 *ts_utils.get_node_at_cursor*
get_node_at_cursor(winnr)~

如果 winnr 为 nil，则默认为 0。
返回光标下的节点。

							  *ts_utils.is_parent*
is_parent(dest, source)~

判断 `dest` 是否是 `source` 的父节点。
返回一个布尔值。

						 *ts_utils.get_named_children*
get_named_children(node)~

返回 `node` 的命名子节点表。

						      *ts_utils.get_next_node*
get_next_node(node, allow_switch_parent, allow_next_parent)~

返回同一父节点内的下一个节点。
如果未找到节点，返回 `nil`。
如果 `allow_switch_parent` 为 true，则当节点是最后一个节点时，允许切换父节点。
如果 `allow_next_parent` 为 true，则当节点是最后一个节点且下一个父节点没有子节点时，允许下一个父节点。

						  *ts_utils.get_previous_node*
get_previous_node(node, allow_switch_parents, allow_prev_parent)~

返回同一父节点内的上一个节点。
`allow_switch_parent` 和 `allow_prev_parent` 遵循与 |ts_utils.get_next_node| 相同的规则，但针对的是节点是第一个节点的情况。

							  *ts_utils.goto_node*
goto_node(node, goto_end, avoid_set_jump)~

将光标设置到当前窗口中 `node` 的位置。
如果 `goto_end` 为真，则光标被设置到节点范围的末尾。
将 `avoid_set_jump` 设置为 `true`，可以避免将当前光标位置设置到跳转列表。

							 *ts_utils.swap_nodes*
swap_nodes(node_or_range1, node_or_range2, bufnr, cursor_to_second)~

交换节点或范围。
将 `cursor_to_second` 设置为 true 以将光标移动到第二个节点

						*ts_utils.memoize_by_buf_tick*
memoize_by_buf_tick(fn, options)~

缓存函数的返回值，如果缓冲区的 tick 自上次以来没有改变，则返回缓存值。

		`fn`: 一个接受任意参数并返回要存储的值的函数。
		`options?`: <table>
                 - `bufnr`: 一个函数/值，用于从给定参数中提取 bufnr。
                 - `key`: 一个函数/值，用于从给定参数中提取缓存键。
		`returns`: 一个以 bufnr 为参数调用的函数，用于从缓存中检索值

						  *ts_utils.node_to_lsp_range*
node_to_lsp_range(node)~

从节点范围获取 LSP 格式的范围

							*ts_utils.node_length*
node_length(node)~

获取节点范围的字节长度

						   *ts_utils.update_selection*
update_selection(buf, node)~

将选区设置为节点范围

						    *ts_utils.highlight_range*
highlight_range(range, buf, hl_namespace, hl_group)~

设置一个跨越给定范围的高亮

						     *ts_utils.highlight_node*
highlight_node(node, buf, hl_namespace, hl_group)~

设置一个跨越给定节点范围的高亮

==============================================================================
函数                                          *nvim-treesitter-functions*

						*nvim_treesitter#statusline()*
nvim_treesitter#statusline(opts)~

返回一个描述文件中当前位置的字符串。这可以用作状态栏指示器。
默认选项 (lua 语法):
>
  {
    indicator_size = 100,
    type_patterns = {'class', 'function', 'method'},
    transform_fn = function(line, _node) return line:gsub('%s*[%[%(%{]*%s*$', '') end,
    separator = ' -> ',
    allow_duplicates = false
  }
<
- `indicator_size` - 字符串应该多长。如果更长，则从开头截断。
- `type_patterns` - 要匹配的节点类型模式。
- `transform_fn` - 用于转换行中单个项目的函数。默认情况下，它会从末尾移除开括号和空格。接受两个参数：相关行的文本，以及对应的 treesitter 节点。
- `separator` - 节点之间的分隔符。
- `allow_duplicates` - 是否移除重复的组件。

						  *nvim_treesitter#foldexpr()*
nvim_treesitter#foldexpr()~

用于确定给定行号的折叠级别的函数。
要使用它： >
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
<

这将尊重您的 'foldminlines' 和 'foldnestmax' 设置。

注意：这是高度实验性的，折叠可能在某些类型的编辑时中断。
      如果您遇到此类中断，按 `zx` 应该可以修复折叠。
      无论如何，请随时提交问题并附上重现步骤。

==============================================================================
性能                                      *nvim-treesitter-performance*

`nvim-treesitter` 在启动时会检查 'runtimepath' 以便发现可用的解析器和查询并对它们建立索引。
因此，一个非常长的 'runtimepath' 可能会导致启动时间延迟。


vim:tw=78:ts=8:expandtab:noet:ft=help:norl: