-- ~/.config/nvim/lua/plugins/treesitter.lua

-- 一个语法高亮的插件

-- Treesitter configurations and abstraction layer for Neovim
-- Neovim 的 Treesitter 配置, 用于配置编程语言的语法高亮

return {
    -- 插件
    'nvim-treesitter/nvim-treesitter',

    -- 每次更新时自动更新语法适配器
    build = ":TSUpdate",

    -- 基础配置
    opts = {

        -- 需要安装的语法解析器
        ensure_installed = {
            "c",                    -- c语言
            "cpp",                  -- c++语言
            "bash",                 -- shell 脚本

            -- Neovim 相关
            "lua",                  -- lua 语言
            "vim",                  -- vimrc 语言
            "vimdoc",               -- 帮助文档高亮
            "query",
            "regex",

            -- 标记语言
            "markdown",
            "markdown_inline",

            -- 配置文件
            "toml",
            "dockerfile",
            "make",

        },

        -- 同步安装解析器(仅适用于 ensure_installed )
        sync_install = false,

        -- 进入缓冲区自动安装缺失的解析器
        auto_install = true,

        -- 忽略安装
        ignore_install = {
            -- "",
        },

        -- 如果您需要更改解析器的安装目录
        -- parser_install_dir = "/some/path/to/store/parsers"，
        --记得运行 Vim.opt.runtimepath:append("/some/path/to/store/parsers")!

        -- 高亮设置
        highlight = {
            -- 这些是解析器的名称 而不是文件类型
            -- 将被禁用的语言列表
            disable = {
                -- "c",
            },

            -- 设置为 true 将同时运行 :h syntax 和 tree-sitter
            -- 如果您依赖于启用的 "syntax" (如缩进) 则将此设置为 "true"
            -- 使用此选项可能会减慢编辑器的速度 并且您可能会看到一些重复的高亮显示
            -- 而不是 true 它也可以是语言列表
            additional_vim_regex_highlighting = false,

            --
            enable = true,
        },

        -- 缩进支持
        indent = {
            enable = true,
        },
    },

    -- 关键：添加 config 函数来初始化 Treesitter
    config = function(_, opts)
        -- 先安全地要求并设置配置
        local ok, treesitter = pcall(require, 'nvim-treesitter.configs')
        if not ok then
            vim.notify("Treesitter configs not found!", vim.log.levels.ERROR)
            return
        end

        treesitter.setup(opts)

        -- 确保解析器安装
        vim.defer_fn(function()
            local ts_install = require('nvim-treesitter.install')
            ts_install.update({ with_sync = false })
        end, 1000)
    end,
}