*mason.nvim* 帮助文档

Neovim 最低版本要求: 0.10.0

作者: William Boman
                                                            *mason-help-guide*
                                       输入 |gO| 查看目录
                        在帮助标签上按 |K| 跳转:|mason-help-guide|

==============================================================================
介绍                                                  *mason-introduction*

`mason.nvim` 是一个 Neovim 插件,允许您通过单一界面轻松管理外部编辑器工具,例如 LSP 服务器、DAP 服务器、代码检查器和格式化工具 它可以在所有 Neovim 运行的地方运行 (跨 Linux、macOS、Windows 等),只需要一小组外部要求

包默认安装在 Neovim 的数据目录 (`:h standard-path`) 中 可执行文件被链接到一个单独的 `bin/` 目录,`mason.nvim` 在设置过程中会将该目录添加到 Neovim 的 PATH 中,从而可以无缝地从 Neovim 内置功能(shell、终端等)以及其他第三方插件进行访问

==============================================================================
要求                                                  *mason-requirements*

`mason.nvim` 通过尝试多种不同的工具 (例如,`wget`、`curl` 和 `Invoke-WebRequest` 都是完美的替代品)来放宽最低要求 *最低*推荐要求是:

-   neovim `>= 0.10.0`
-   对于 Unix 系统:`git(1)`、`curl(1)` 或 `wget(1)`、`unzip(1)`、`tar(1)`、`gzip(1)`
-   对于 Windows 系统:pwsh 或 powershell、git、tar 以及 7zip 或 peazip 或 archiver 或 winzip 或 WinRAR

请注意,Mason 会定期调用外部包管理器,例如 `cargo` 和 `npm` 根据您的个人使用情况,其中一些也需要安装 完整列表请参考 `:checkhealth mason`

==============================================================================
快速开始                                                 *mason-quickstart*

-----------------
设置 MASON.NVIM

首先,您需要设置 Mason 这是通过调用 `setup()` 函数来完成的:
>lua
    require("mason").setup()
<
Mason 在设置过程中将执行以下操作:
    1) 将 Mason 的 `bin/` 目录添加到 Neovim 会话的 PATH 中
    2) 注册命令 (|mason-commands|)

所有可用设置请参考 |mason-settings|

-----------------
安装包

通过 |:MasonInstall| 安装包,例如:
>vim
    :MasonInstall stylua
<
您也可以同时安装多个包:
>vim
    :MasonInstall stylua lua-language-server
<
要安装特定版本的包,您可以将其作为包名称的一部分提供,如下所示:
>vim
    :MasonInstall rust-analyzer@nightly
<
请参考每个包自己的发布页面以查找可用的版本

您也可以在无头模式下安装包 这将以阻塞模式运行命令,并且该命令在所有包安装完成之前不会返回:
>sh
    $ nvim --headless -c "MasonInstall lua-language-server rust-analyzer" -c qall
<
注意:~
    您也可以使用 Mason 的 Lua API 以编程方式管理包安装 通过此接口,您还将获得更多功能,以允许进一步的自定义

-----------------
MASON 窗口

要查看 mason 的 UI,请运行:>vim
    :Mason
<

通过此 UI,您可以浏览可用的包,查看哪些已安装的包有新版本可用,安装、卸载或更新包,展开包信息等等 UI 附带一组键绑定,您可以在 Mason 窗口打开时按 `g?` 在帮助视图中找到它们

==============================================================================
注册表                                                  *mason-registries*

`mason.nvim` 从其配置的注册表 (参见 |mason-settings|)中获取包定义 `mason.nvim` 默认使用由 `mason.nvim` 管理的核心注册表 这可以通过额外的注册表进行扩展,甚至完全覆盖,如下所示:

>lua
    require("mason").setup {
        registries = {
            "lua:my-registry",
            "github:mason-org/mason-registry",
        },
    }
<

包按照注册表配置的顺序加载,列表中先出现的注册表具有优先权

==============================================================================
如何安装包                        *mason-how-to-install-packages*

您可以通过命令接口或 Mason 的 Lua API 安装包 更多详情请参见 |:MasonInstall|

==============================================================================
如何使用包                                *mason-how-to-use-packages*

尽管许多包通过 Neovim 内置功能可以开箱即用,但建议使用其他第三方插件来进一步集成这些工具

另见~
    执行外部命令:|:!cmd|
    启动嵌入式终端:|terminal|
    启动后台作业:|jobstart| 和 |uv.spawn()| (通过 |vim.loop|)

==============================================================================
命令                                                      *mason-commands*

------------------------------------------------------------------------------
打开 MASON 窗口                                                 *:Mason*

:Mason

打开图形状态窗口

通过此 UI,您可以浏览可用的包,查看哪些已安装的包有新版本可用,安装、卸载或更新包,展开包信息等等 UI 附带一组键绑定,您可以在 Mason 窗口打开时按 `g?` 在帮助视图中找到它们

------------------------------------------------------------------------------
更新注册表                                               *:MasonUpdate*
>vim
:MasonUpdate
<
更新所有托管的注册表

------------------------------------------------------------------------------
安装包                                            *:MasonInstall*
>vim
:MasonInstall <package> ...
<
安装提供的包 包可以包含版本说明符,如下所示:
>vim
    :MasonInstall lua-language-server@v3.0.0
<
如果没有附加 UI (即在无头模式下运行),则以阻塞方式运行:
>sh
    $ nvim --headless -c "MasonInstall stylua" -c "qall"
<

------------------------------------------------------------------------------
卸载包                                        *:MasonUninstall*
>vim
:MasonUninstall <package> ...
<

卸载提供的包

------------------------------------------------------------------------------
卸载所有包                                 *:MasonUninstallAll*
>vim
:MasonUninstallAll
<

卸载所有已安装的包

------------------------------------------------------------------------------
查看 MASON 日志                                                 *:MasonLog*
>vim
:MasonLog
<

在新标签页窗口中打开日志文件

==============================================================================
设置                                                      *mason-settings*

您可以在调用 `.setup()` 函数时配置 mason 的某些行为

所有可用设置请参考 |mason-default-settings|

示例:
>lua
    require("mason").setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    })
<
                                                      *mason-default-settings*
>lua
    ---@class MasonSettings
    local DEFAULT_SETTINGS = {
        ---@since 1.0.0
        -- 安装包的目录
        install_root_dir = path.concat { vim.fn.stdpath "data", "mason" },

        ---@since 1.0.0
        -- Mason 应将其 bin 位置放在您 PATH 中的位置 可以是以下之一:
        -- - "prepend" (默认,Mason 的 bin 位置放在 PATH 的最前面)
        -- - "append" (Mason 的 bin 位置放在 PATH 的最后)
        -- - "skip" (不修改 PATH)
        ---@type '"prepend"' | '"append"' | '"skip"'
        PATH = "prepend",

        ---@since 1.0.0
        -- 控制日志写入日志文件的程度 在调试包安装问题时,将其设置为 vim.log.levels.DEBUG 非常有用
        log_level = vim.log.levels.INFO,

        ---@since 1.0.0
        -- 同时安装的最大包数量的限制 一旦达到此限制,任何后续请求安装的包将被放入队列中
        max_concurrent_installers = 4,

        ---@since 1.0.0
        -- [高级设置]
        -- 用于获取包的注册表 接受多个条目 如果同名的包存在于多个注册表中,将使用最先列出的注册表
        registries = {
            "github:mason-org/mason-registry",
        },

        ---@since 1.0.0
        -- 用于解析补充包元数据 (例如,所有可用版本)的提供者实现 接受多个条目,后面的条目将在先前的提供者失败时用作回退
        -- 内置的提供者有:
        --   - mason.providers.registry-api  - 使用 https://api.mason-registry.dev API
        --   - mason.providers.client        - 仅使用客户端工具来解析元数据
        providers = {
            "mason.providers.registry-api",
            "mason.providers.client",
        },

        github = {
            ---@since 1.0.0
            -- 从 GitHub 下载资源时使用的模板 URL
            -- 占位符如下 (按顺序):
            -- 1. 仓库 (例如 "rust-lang/rust-analyzer")
            -- 2. 发布版本 (例如 "v0.3.0")
            -- 3. 资源名称 (例如 "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
            download_url_template = "https://github.com/%s/releases/download/%s/%s",
        },

        pip = {
            ---@since 1.0.0
            -- 在安装包之前,是否将虚拟环境中的 pip 升级到最新版本
            upgrade_pip = false,

            ---@since 1.0.0
            -- 这些参数将被添加到 `pip install` 调用中 请注意,设置额外的参数可能会影响预期行为,因此不推荐
            --
            -- 示例:{ "--proxy", "https://proxyserver" }
            install_args = {},
        },

        ui = {
            ---@since 1.0.0
            -- 打开 :Mason 窗口时是否自动检查新版本
            check_outdated_packages_on_open = true,

            ---@since 1.0.0
            -- 用于 UI 窗口的边框 接受与 |nvim_open_win()| 相同的边框值
            -- 如果为 nil,则默认为 `:h 'winborder'`
            border = nil,

            ---@since 1.11.0
            -- 背景不透明度 0 表示完全不透明,100 表示完全透明
            backdrop = 60,

            ---@since 1.0.0
            -- 窗口宽度 接受:
            -- - 大于 1 的整数表示固定宽度
            -- - 0-1 范围内的浮点数表示屏幕宽度的百分比
            width = 0.8,

            ---@since 1.0.0
            -- 窗口高度 接受:
            -- - 大于 1 的整数表示固定高度
            -- - 0-1 范围内的浮点数表示屏幕高度的百分比
            height = 0.9,

            icons = {
                ---@since 1.0.0
                -- 用于已安装包的列表图标
                package_installed = "◍",
                ---@since 1.0.0
                -- 用于正在安装或排队等待安装的包的列表图标
                package_pending = "◍",
                ---@since 1.0.0
                -- 用于未安装的包的列表图标
                package_uninstalled = "◍",
            },

            keymaps = {
                ---@since 1.0.0
                -- 展开包的键映射
                toggle_package_expand = "<CR>",
                ---@since 1.0.0
                -- 安装当前光标位置下的包的键映射
                install_package = "i",
                ---@since 1.0.0
                -- 重新安装/更新当前光标位置下的包的键映射
                update_package = "u",
                ---@since 1.0.0
                -- 检查当前光标位置下的包是否有新版本的键映射
                check_package_version = "c",
                ---@since 1.0.0
                -- 更新所有已安装包的键映射
                update_all_packages = "U",
                ---@since 1.0.0
                -- 检查哪些已安装包已过时的键映射
                check_outdated_packages = "C",
                ---@since 1.0.0
                -- 卸载包的键映射
                uninstall_package = "X",
                ---@since 1.0.0
                -- 取消包安装的键映射
                cancel_installation = "<C-c>",
                ---@since 1.0.0
                -- 应用语言过滤器的键映射
                apply_language_filter = "<C-f>",
                ---@since 1.1.0
                -- 切换查看包安装日志的键映射
                toggle_package_install_log = "<CR>",
                ---@since 1.8.0
                -- 切换帮助视图的键映射
                toggle_help = "g?",
            },
        },
    }
<

==============================================================================
下载镜像                                      *mason-download-mirrors*

------------------------------------------------------------------------------
GITHUB 镜像                                   *mason-download-mirror-github*

    可以通过在设置过程中设置 `github.download_url_template` 设置来自定义从 GitHub 发布版下载资源时使用的下载 URL,如下所示:
>lua
    require("mason").setup {
        github = {
            -- 从 GitHub 下载资源时使用的模板 URL
            -- 占位符如下 (按顺序):
            -- 1. 仓库 (例如 "rust-lang/rust-analyzer")
            -- 2. 发布版本 (例如 "v0.3.0")
            -- 3. 资源名称 (例如 "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
            download_url_template = "https://my.mirror.com/%s/releases/download/%s/%s",
        },
    }
<

==============================================================================
安装错误                                             *mason-errors*

                                                       *mason-provider-errors*
默认情况下,Mason 使用 api.mason-registry.dev API 来解析包元数据 在某些网络上调用此服务可能会导致网络错误 (例如,企业 VPN 上的 SSL 问题) 如果解决 SSL 错误不是一个选项,您将不得不更改提供者实现 Mason 提供了一个客户端提供者,它直接调用底层的第三方服务 API,您可以像这样启用它:
>lua
    require("mason").setup {
        providers = {
            "mason.providers.client",
            "mason.providers.registry-api",
        }
    }
<
    注意:~
        客户端提供者的总体覆盖范围较小,并且可能会带来额外的性能损失 (产生慢速命令、网络和解析开销等)

==============================================================================
调试                                                    *mason-debugging*

为了帮助调试安装/卸载包的问题,请确保将 mason 的日志级别设置为 DEBUG 或 TRACE,如下所示:
>lua
    require("mason").setup {
        log_level = vim.log.levels.DEBUG
    }
<
您可以通过输入命令 `:MasonLog` 找到日志 在报告问题时提供此文件的内容将极大地帮助解决问题 请记住,在更改日志级别后,重新执行失败的操作,以便捕获新的日志条目

==============================================================================
Lua 模块: "mason"
>lua
    require("mason")
<
                                                               *mason.setup()*
setup({config})
    使用提供的 {config} 设置 mason (参见 |mason-settings|)

==============================================================================
Lua 模块: "mason-registry"
>lua
    require("mason-registry")
<
                                               *mason-registry.is_installed()*
is_installed({package_name})
    检查提供的包名称是否已安装 在许多情况下,由于需要加载的模块数量较少,这比 Package:is_installed() 方法更高效

    参数:
        {package_name} - 字符串

    返回:
        布尔值

                                                *mason-registry.get_package()*
get_package({package_name})
    如果提供的包名称存在,则返回 Package 类的实例

    如果找不到包,此函数会报错

    参数:
        {package_name} - 字符串

    返回:
        Package

                                                *mason-registry.has_package()*
has_package({package_name})
    如果提供的 package_name 可以在注册表中找到,则返回 true

    参数:
        {package_name} - 字符串

    返回:
        布尔值

                                     *mason-registry.get_installed_packages()*
get_installed_packages()
    返回所有已安装的包实例 这是一个较慢的函数,会加载更多模块

    返回:
        Package[]

                                *mason-registry.get_installed_package_names()*
get_installed_package_names()
    返回所有已安装的包名称 这是一个快速的函数,不会加载任何额外的模块

    返回:
        字符串[]

                                           *mason-registry.get_all_packages()*
get_all_packages()
    返回所有包实例 这是一个较慢的函数,会加载更多模块

    返回:
        Package[]

                                      *mason-registry.get_all_package_names()*
get_all_package_names()
    返回所有包名称 这是一个比 |mason-registry.get_all_packages()| 更快的函数,因为它加载的模块更少

    返回:
        字符串[]

                                      *mason-registry.get_all_package_specs()*
get_all_package_specs()
    返回所有包规范 这是一个比 |mason-registry.get_all_packages()| 更快的函数,因为它加载的模块更少

    返回:
        RegistryPackageSpec[]

                                                     *mason-registry.update()*
update({callback})
    更新所有托管的注册表

    参数:
        {callback} - 签名为 `fun(success: boolean, updated_registries: RegistrySource[])` 的回调函数

                                                    *mason-registry.refresh()*
refresh({callback?})
    如果需要,刷新所有注册表 这是 |mason-registry.update()| 的一个便利包装器,仅在以下情况下更新注册表:
        1) 注册表有一段时间没有更新了
        2) 或者,一个或多个注册表未安装

    如果未提供 {callback},则以阻塞方式运行 请注意,以阻塞方式运行时,整个编辑器会冻结,因此除非绝对需要,否则首选异步变体

    参数:
        {callback?} (可选)- 注册表刷新后调用

    示例:
>lua
        local registry = require("mason-registry")

        -- 1. 同步
        registry.refresh()
        local packages = registry.get_all_packages()
        ...

        -- 2. 异步
        registry.refresh(function ()
            local packages = registry.get_all_packages()
            ...
        end)
<


vim:tw=78:ft=help:norl:expandtab:sw=4