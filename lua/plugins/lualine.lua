-- ~/.config/nvim/lua/plugins/lualine.lua

-- 一个状态栏插件

return {
    'nvim-lualine/lualine.nvim',

    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    opts = {
        -- 主题
        theme                = 'gruvbox',

        -- true  启用图标显示
        -- false 禁用图标显示
        icons_enabled        = false,

        -- ture 将中间部分平均分配到左右两侧
        -- false 中间部分动态调整
        always_divide_middle = false,

        -- true 启用全局状态栏 所有窗口共享同一个状态栏
        -- false 每个窗口有自己的状态栏
        globalstatus         = false,

        -- 组件间的分隔符
        -- component_separators = {
        --     left = "",   -- 左侧分隔符
        --     right = "",  -- 右侧分隔符
        -- },

        -- 主要部分间的分隔符
        -- section_separators = {
        --     left = "",  -- 左侧分隔符
        --     right = "", -- 右侧分隔符
        -- },

        -- 在某些文件中禁用 lualine 插件
        -- disabled_filetypes   = {
        --     -- 在某些文件中禁用底部状态栏
        --     statusline = {},
        --     -- 在某些文件中禁用顶部状态栏
        --     winbar = {},
        -- },

        -- 忽略焦点变化的文件类型列表
        -- 当切换到这些文件类型时 状态栏不会更新焦点状态
        -- ignore_focus = {},

        -- 各组件的刷新频率 单位 毫秒 ms
        -- refresh              = {
        --     statusline = 1000, -- 底部状态栏
        --     tabline = 1000,    -- 标签栏
        --     winbar = 1000,     -- 顶部窗口
        -- },

        -- 定义状态栏的各个部分
        -- sections             = {
        --     -- 最左侧部分
        --     lualine_a = {
        --         'mode', -- 当前 neovim 的模式 Normal Insert Visual等
        --     },

        --     -- 左边第二部分
        --     lualine_b = {
        --         'branch',      -- 当前 git 分支
        --         'diff',        -- 当前 git 状态 (新增 修改 删除)
        --         'diagnostics', -- 显示 LSP 诊断信息 (错误 警告 提示) 等
        --     },

        --     -- 中间部分
        --     lualine_c = {
        --         'filename', -- 当前文件名称
        --         -- path = 1,                 -- 0=只文件名, 1=相对路径, 2=绝对路径, 3=文件名和父目录
        --         -- symbols = {
        --         --     modified = '[+]',     -- 文件修改标识
        --         --     readonly = '[-]',     -- 只读文件标识
        --         --     unnamed = '[No Name]' -- 未命名文件标识
        --         -- }
        --     },

        --     -- 中间部分的右侧
        --     lualine_x = {
        --         'encoding',   -- 文件编码
        --         'fileformat', -- 文件格式
        --         'filetype',   -- 文件类型
        --     },

        --     --
        --     lualine_y = {
        --         'progress', -- 光标所在文件中的百分比
        --     },

        --     -- 最右侧
        --     lualine_z = {
        --         'location', -- 贯标所在的具体行列信息
        --         -- padding = { left = 1, right = 1 }, -- 左右边距
        --         -- fmt = function()                   -- 自定义格式
        --         --     return string.format('Ln %d, Col %d', vim.fn.line('.'), vim.fn.col('.'))
        --         -- end
        --     },
        -- },

        -- 非活动窗口的状态栏显示
        -- inactive_sections    = {
        --     lualine_a = {},
        --     lualine_b = {},
        --     lualine_c = { 'filename'},
        --     lualine_x = { 'location' },
        --     lualine_y = {},
        --     lualine_z = {}
        -- },

        -- 标签栏的配置
        -- 空表示不使用标签栏
        -- tabline              = {
        --     lualine_a = { 'tabs' },    -- 左侧 显示所有标签页
        --     lualine_b = {},            -- 中间左侧 空
        --     lualine_c = { 'buffers' }, -- 中间 显示所有缓冲区
        --     lualine_x = {},            -- 中间右侧：空
        --     lualine_y = {},            -- 右侧：空
        --     lualine_z = {}             -- 最右侧：空
        -- },

        -- winbar               = {},
        -- inactive_winbar      = {},
    },

    config = function(_, opts)
        require('lualine').setup(opts)
    end,
}
