-- ~/.config/nvim/lua/plugins/themes.lua

-- 主题的配置文件

return {
    --   方案3: Gruvbox (经典、护眼)
    {
        'ellisonleao/gruvbox.nvim',

        priority = 1000,

        opts = {
            background = "dark",        -- dark, light
            contrast = "hard",          -- soft, medium, hard

            undercurl = true,           -- 下划线 波浪线
            underline = true,           -- 下划线
            strikethrough = true,       -- 删除线
            bold = false,               -- 粗体

            invert_selection = false,   -- 反转选中文本
            invert_signs = false,       -- 反转符号
            invert_tabline = false,     -- 反转标签页栏顺序
            inverse = false,            -- 反转搜索 差异 状态线 错误背景

            dim_inactive = false,       -- 非活动窗口的背景色
            transparent_mode = false,   -- 透明

            -- 斜体
            italic = {
                strings = true,         -- 字符串
                emphasis = true,        -- 强调
                comments = true,        -- 注释
                operators = false,      -- 运算符
                folds = true,           -- 折叠
            },

            -- 调色板覆盖
            palette_overrides = {
                --
            },

            -- 覆盖默认样式
            overrides = {
                -- 自定义高亮组
                -- SignColumn = { bg = "none" },
            },
        },

        config = function(_, opts)
            require("gruvbox").setup(opts)

            -- 确保背景色为暗色
            vim.o.background = "dark"

            vim.cmd.colorscheme("gruvbox")
        end,
    },
}