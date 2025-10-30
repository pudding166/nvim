*翻译文档 lspconfig.txt*         适用于 Nvim 版本 0.10+

nvim-lspconfig 为 Nvim 的 |lsp| 客户端提供了用户贡献的配置

                                      输入 |gO| 查看目录

==============================================================================
介绍                                                              *lspconfig*

nvim-lspconfig 是为 Nvim LSP 客户端提供的社区贡献配置的集合 完整提供的配置列表请参阅 |lspconfig-all|

注意：nvim-lspconfig 只是一个配置集合 它没有 API 或"框架" Nvim 的 |LSP| 支持并不需要它 不使用 nvim-lspconfig 来设置 LSP，请参阅 |lsp-quickstart|

==============================================================================
快速开始                                                *lspconfig-quickstart*

1.  安装一个语言服务器，例如 pyright  >bash
    npm i -g pyright
2.  将语言服务器的设置添加到你的 init.lua 中  >lua
    vim.lsp.enable('pyright')
3.  确保你的工作区包含 |lspconfig-all| 中指定的根目录标记文件
4.  在 Nvim 中打开一个代码文件 LSP 将附加并提供诊断信息  >bash
    nvim main.py
5.  运行 `:checkhealth vim.lsp` 来查看状态或进行故障排除

另请参阅 |lsp-quickstart|

==============================================================================
用法                                                        *lspconfig-usage*

每个配置都为 |vim.lsp.config()| 提供了默认值，你可以直接使用（通过调用 `vim.lsp.enable(…)`）或覆盖（通过在 enable() 之前调用 |vim.lsp.config()|） 这种"可组合性"是 vim.lsp.config 的一个核心特性，它允许 nvim-lspconfig 只提供配置"默认值"

要激活一个配置，请调用 |vim.lsp.enable()| |lspconfig-all| 中的每个配置都可以通过 `vim.lsp.config('<name>')` 和 `vim.lsp.enable('<name>')` 使用 例如，要激活 "clangd" 配置： >lua

    -- 可选地覆盖默认配置的部分内容...
    vim.lsp.config('clangd', {
      …
    })
    -- 启用基于文件类型的配置激活
    vim.lsp.enable('clangd')
<
                                                          *lspconfig-resolved*
你可以调用 vim.lsp.config 的"索引"形式来获取已解析的配置而不激活它： >lua

    vim.print(vim.lsp.config['clangd'])
<
                                                 *lspconfig-vs-vim.lsp.config*
注意 |vim.lsp.config()| 与旧的 nvim-lspconfig 接口相比有以下区别：

-   默认假定支持 `single_file_support` 可以通过指定 `workspace_required=false` 来禁用（参见 |vim.lsp.ClientConfig|）
-   目前缺少 `on_new_config`，参见 https://github.com/neovim/neovim/issues/32287
    -   然而，将 `root_dir` 定义为一个函数非常灵活，可能更适合你的用例 https://github.com/neovim/neovim/issues/32037#issuecomment-2825599872

==============================================================================
命令                                                    *lspconfig-commands*

任何由配置提供的特定于服务器的命令都是缓冲区本地的，并且以 "Lsp" 为前缀 因此，你可以通过输入以下命令查看可用的命令（在启用了 LSP 的缓冲区中）： >vim

    :Lsp<tab>

nvim-lspconfig 提供了以下*全局*命令：

:LspInfo                                                            *:LspInfo*
`:checkhealth vim.lsp` 的别名 显示活跃的 LSP 客户端和服务器的状态

:LspStart [config_name]                                            *:LspStart*
启动请求的（已配置的）客户端，但仅当它成功解析到根目录时 注意：默认为所有与当前缓冲区文件类型匹配的已配置服务器

:LspStop [client_id] 或 [config_name]                            *:LspStop*
停止具有给定客户端 ID 或配置名称的服务器 默认为停止当前缓冲区上所有活跃的服务器

:LspRestart [client_id] 或 [config_name]                         *:LspRestart*
重启具有给定客户端 ID 或配置名称的客户端，并尝试重新附加到所有先前附加的缓冲区 默认为重启所有活跃的服务器

==============================================================================
服务器配置                                        *lspconfig-configurations*

提供的 LSP 配置列表请参阅 |lspconfig-all|

如果缺少某个服务器，你可以通过 |vim.lsp.config()| 轻松定义一个（需要 Nvim 0.11+），参见 |lsp-config|

------------------------------------------------------------------------------
新配置                                           *lspconfig-new*

要创建新配置，请参阅 |lsp-config|（需要 Nvim 0.11+）
要向 nvim-lspconfig 贡献配置，请参阅 ../CONTRIBUTING.md

==============================================================================
补全支持                                        *lspconfig-completion*

请参阅 |lsp-completion|

==============================================================================
迁移到 vim.lsp.config                                *lspconfig-nvim-0.11*

nvim-lspconfig 的"框架"部分已*弃用* "配置"并*没有*弃用，但已移至 lsp/ 目录，以便 |vim.lsp.config()| 能自动找到它们

这意味着：
-   `require'lspconfig'[…]` *绝对不能*使用 请改用 `vim.lsp.config(…)`
-   `require'lspconfig'` 准框架将*被删除*，并且在 Nvim 0.11+ 中不受支持
-   nvim-lspconfig 的配置（|lspconfig-all|）现在位于 "lsp/" 而不是 "lua/lspconfig/"
-   要使用这些配置，请调用 `vim.lsp.config(…)` 而不是 `require'lspconfig'[…]`

迁移说明

要迁移：
-   升级到 Nvim 0.11 或更高版本
-   将 `require'lspconfig'[…]` 改为 `vim.lsp.config(…)`
    -   一些字段名称已更改，请参阅 |lspconfig-vs-vim.lsp.config|
    -   详情请参阅 |lsp-config|

背景

从 Nvim 0.11 开始，nvim-lspconfig 在其 "lsp/" 目录中提供配置 旧的配置仍然存在于 "lua/lspconfig/configs/" 中，但已被弃用并将*被删除*

这意味着 nvim-lspconfig 的"配置"角色仍然相关，但它现在是一个"仅数据"的仓库，而不是一个"框架" 你和插件唯一需要做的改变是使用 Nvim 0.11 的 `vim.lsp.config` 接口来设置 LSP 配置，而不是旧的 `require'lspconfig'` 准框架

==============================================================================
调试和故障排除                              *lspconfig-debugging*

请参阅 |lsp-log| 来启用详细日志

虽然使用语言服务器应该很简单，但调试问题可能具有挑战性 首先，识别问题来源很重要，通常（大致按顺序）是：

-   语言服务器本身
-   一个插件
-   用户配置中的覆盖项
-   Nvim 核心中的内置客户端
-   nvim-lspconfig

调试的第一步是使用最小配置进行测试：
https://github.com/neovim/neovim/issues/new?assignees=&labels=bug%2Clsp&template=lsp_bug_report.yml
历史上，许多问题是由插件或配置错误引起的

如果那不起作用，识别哪个组件是罪魁祸首就很有挑战性 以下是仅与 nvim-lspconfig 相关的错误类别

-   为你的项目推断的根目录是错误的，或者它应该被检测到但由于 nvim-lspconfig 路径工具中的错误而未被检测到
-   服务器正在启动，但你认为默认设置、初始化选项或命令参数不是最优的，并且根据你对服务器文档的理解应该被替换

所有 Nvim 内置客户端的错误都应报告给 Nvim 核心问题跟踪器 所有与插件相关的错误都应报告给相应的插件 语言服务器中所有缺失的功能都应报告给上游语言服务器问题跟踪器

对于调试 nvim-lspconfig 问题，用户最常遇到的障碍是：

-   语言服务器未安装或不可执行
    nvim-lspconfig 不会为你安装语言服务器 确保 |lspconfig-all| 中定义的 `cmd` 可以从命令行执行 如果 `cmd` 中没有提供二进制文件的绝对路径，请确保它在你的 PATH 中
-   缺少文件类型插件 某些语言未被 Vim/Nvim 检测到，因为它们尚未添加到文件类型检测系统中 确保 `:set ft?` 显示文件类型而不是空值
-   未触发根目录检测 nvim-lspconfig 是围绕项目的概念构建的
-   未触发根目录检测 某些语言服务器只有在包含指示项目*根目录*的文件的目录或其子目录中打开时才会启动 大多数情况下，这是一个 `.git` 文件夹，但每个服务器都在 lua 文件中定义了根目录配置 根目录列表请参阅 |lspconfig-all| 或源代码
-   配置错误 用户经常覆盖 `cmd`、`on_init` 或 `handlers` 确保通过使用标准配置进行调试，以确保你的自定义设置没有引入问题

|:LspInfo| 提供了一个概览，可能对调试有用

==============================================================================

vim:tw=78:ts=8:ft=help:norl: