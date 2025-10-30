*mason-lspconfig.nvim*

Neovim 最低版本要求：0.11.0

作者：William Boman
                                       输入 |gO| 查看目录。

==============================================================================  
介绍                                    *mason-lspconfig-introduction*

`mason-lspconfig.nvim` 填补了 `mason.nvim` 和 `nvim-lspconfig` 之间存在的一些空白。它的主要职责是：

- 允许您（i）自动安装，以及（ii）自动启用（`vim.lsp.enable()`）已安装的服务器
- 提供额外的便捷 API，例如 `:LspInstall` 命令
- 为少数服务器提供额外的 LSP 配置
- 在 `nvim-lspconfig` 服务器名称和 `mason.nvim` 包名称之间进行转换（例如 `lua_ls <-> lua-language-server`）

==============================================================================
要求                                    *mason-lspconfig-requirements*

`mason-lspconfig` 需要安装 `mason.nvim` 和 `nvim-lspconfig`。请注意，在设置 `mason-lspconfig` 之前，`nvim-lspconfig` 需要在 |rtp| 中可用。

- `neovim >= 0.11.0`
- `mason.nvim >= 2.0.0`
- `nvim-lspconfig >= 2.0.0`

==============================================================================
快速开始                                       *mason-lspconfig-quickstart*

-----------------
设置 mason-lspconfig.nvim

在设置 `mason-lspconfig.nvim` 之前，您必须先设置好 `mason.nvim` 并确保 `nvim-lspconfig` 在 |'runtimepath'| 中可用。

要启用 `mason-lspconfig` 插件，请调用 `setup()` 函数，如下所示：
>lua
    require("mason").setup()
    require("mason-lspconfig").setup()
<
可用设置请参考 |mason-lspconfig-settings|。

-----------------
设置服务器

`mason-lspconfig.nvim` 默认会自动启用（|vim.lsp.enable()|）已安装的服务器，参见 |mason-automatic-enable|。

有关如何配置服务器的信息，请参考 |lsp-quickstart|。

-----------------
服务器的安装

要安装 `nvim-lspconfig`（和 `mason.nvim`）支持的 LSP 服务器，您可以使用 `:LspInstall` 命令，如下所示：
>vim
    :LspInstall rust_analyzer lua_ls
<

这个命令或多或少是 |:MasonInstall| 命令的别名，不同之处在于它只接受 LSP 服务器，并且更重要的是，只接受 `nvim-lspconfig` 的服务器名称（而不是 `mason.nvim` 的包名称）。

您也可以运行不带任何参数的相同命令。这将提示您选择当前编辑缓冲区的文件类型所推荐的服务器：
>vim
    :LspInstall
<
==============================================================================
命令                                            *mason-lspconfig-commands*

------------------------------------------------------------------------------
安装 LSP 服务器
                                                                 *:LspInstall*
>vim
:LspInstall [<server> ...]
<
安装提供的服务器。此命令只接受在 `nvim-lspconfig` 中有相应服务器配置的服务器。

您也可以提供一个 |'filetype'|，例如 `:LspInstall typescript`。这将提示您选择该给定语言的所有可用服务器。

当命令不带任何参数运行时，将使用当前活动缓冲区的 'filetype' 来识别相关服务器，并提示您选择当前 |'filetype'| 的服务器。

------------------------------------------------------------------------------
卸载 LSP 服务器
                                                               *:LspUninstall*
>vim
:LspUninstall <server> ...
<
卸载提供的服务器。

==============================================================================
设置                                            *mason-lspconfig-settings*

您可以在调用 `.setup()` 函数时配置 `mason-lspconfig` 的某些行为。

所有可用设置请参考 |mason-lspconfig-default-settings|。

示例：
>lua
    require("mason-lspconfig").setup({
        ensure_installed = { "rust_analyzer", "ts_ls" }
    })
<
                                            *mason-lspconfig-default-settings*
>lua
    local DEFAULT_SETTINGS = {
        -- 如果尚未安装，则自动安装的服务器列表。示例：{ "rust_analyzer@nightly", "lua_ls" }
        ---@type string[]
        ensure_installed = {},

        -- 已安装的服务器是否应通过 `:h vim.lsp.enable()` 自动启用。
        --
        -- 要排除某些服务器不被自动启用：
        -- ```lua
        --   automatic_enable = {
        --     exclude = { "rust_analyzer", "ts_ls" }
        --   }
        -- ```
        --
        -- 要仅启用某些服务器自动启用：
        -- ```lua
        --   automatic_enable = {
        --     "lua_ls",
        --     "vimls"
        --   }
        -- ```
        ---@type boolean | string[] | { exclude: string[] }
        automatic_enable = true,
    }
<

==============================================================================
自动启用服务器                          *mason-automatic-enable*

默认情况下，`mason-lspconfig` 会自动启用您在 Mason 中安装的服务器。这意味着您不必自己调用 |vim.lsp.enable()|。

要禁用此功能：
>lua
    require("mason-lspconfig").setup({
        automatic_enable = false
    })
<

注意：~
    在 Mason 之外安装的服务器不会被此功能识别。您仍然需要手动启用（|vim.lsp.enable()|）这些服务器。

==============================================================================
Lua 模块: mason-lspconfig

                                                     *mason-lspconfig.setup()*
setup({config})
    使用提供的 {config} 设置 mason（参见 |mason-lspconfig-settings|）。

                                     *mason-lspconfig.get_installed_servers()*
get_installed_servers()
    返回由 lspconfig 支持的已安装 LSP 服务器。

    注意：~
        返回的字符串是 nvim-lspconfig 的服务器名称，而不是 Mason 的包名称。例如，返回的是 "lua_ls" 而不是 "lua-language-server"。

    返回：~
        string[]

    另见：~
        |mason-registry.get_installed_packages()|
        |mason-registry.get_installed_package_names()|

                                     *mason-lspconfig.get_available_servers()*
get_available_servers({filter})
    返回可用的（包括已安装和未安装的）LSP 服务器。

    注意：~
        返回的字符串是 nvim-lspconfig 的服务器名称，而不是 Mason 的包名称。例如，返回的是 "lua_ls" 而不是 "lua-language-server"。

    参数：~
        {filter}  (table|nil) 一个包含键值对的表，用于过滤服务器名称列表。可用的键有：
                  - filetype (string | string[]): 仅返回具有匹配文件类型的服务器

    返回：~
        string[]

    另见：~
        |mason-registry.get_all_packages()|
        |mason-registry.get_all_package_names()|

                                              *mason-lspconfig.get_mappings()*
get_mappings()
    返回：
        - nvim-lspconfig 和 Mason 之间的服务器名称映射
        - 支持服务器的文件类型映射

    返回：~
        {
            lspconfig_to_package: table<string, string>,
            package_to_lspconfig: table<string, string>,
            filetypes: table<string, string[]>
        }

    注意：~
        此函数仅返回 Mason 识别的 nvim-lspconfig 服务器。

 vim:tw=78:ft=help:norl:expandtab:sw=4