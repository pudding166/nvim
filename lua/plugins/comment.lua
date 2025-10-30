-- ~/.config/nvim/lua/plugins/comment.lua

-- Smart and Powerful commenting plugin for neovim
-- 智能和强大的 neovim 注释插件

return {

    -- 插件名称
    'numToStr/Comment.nvim',

    -- 基础设置
    opts = {
        -- 基础配置
        padding = true, -- 注释后添加空格
        sticky = true,  -- 保持光标位置
        ignore = nil,   -- 允许注释空行 (覆盖默认的 "^$"" 规则)

        mappings = {
            basic = false, -- 设置默认快捷键 gcc, gbc 等按键
            extra = false, -- 设置额外快捷键
        },

        -- 在执行前调用的方法
        pre_hook = nil,

        -- 在执行后调用的方法
        post_hook = nil,
    },

    -- 快捷键设置
    keys = {

        -- 普通模式: 注释当前行
        {
            "<leader>/",

            function()
                -- 调用 Comment.nvim 的 API, 注释当前行
                require("Comment.api").toggle.linewise.current()
            end,

            mode = "n",
            desc = "Toggle comment"
        },

        -- 可视模式: 注释选中行
        {
            "<leader>/",

            function()
                -- 将字符串 "<ESC>" 转换为 Neovim 内部可识别的 转义序列
                local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)

                -- 向 neovim 发送 esc 键, 退出可视模式
                vim.api.nvim_feedkeys(esc, "nx", false)

                -- 调用 Comment.nvim 的 API, 基于之前可视模式的类型注释选中内容
                -- vim.fn.visualmode() 返回上一次可视模式
                require("Comment.api").toggle.linewise(vim.fn.visualmode())
            end,

            mode = "v",
            desc = "Toggle comment"
        },
    },
}

-- 当前插件的 API

-- 切换当前行注释
-- require("Comment.api").toggle.linewise.current()
--
-- require("Comment.api")   - 加载 Comment.nvim 的 API 模块
-- .toggle                  - 切换注释状态（添加/移除注释）
-- .linewise                - 按行模式进行注释
-- .current()               - 对当前行进行操作
--
-- 注释当前行
-- require("Comment.api").toggle.linewise.current()
--
-- 注释指定行范围
-- require("Comment.api").toggle.linewise({ line1 = 1, line2 = 5 })
--
-- 注释可视模式选中的行
-- require("Comment.api").toggle.linewise(vim.fn.visualmode())
--
-- 也可以通过:lua require("Comment.api").toggle.linewise.current() 调用

-- 注释（不切换）
-- require("Comment.api").comment.linewise.current()

-- 取消注释
-- require("Comment.api").uncomment.linewise.current()
