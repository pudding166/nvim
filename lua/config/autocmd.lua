-- ~/.config/nvim/lua/config/autocmd.lua

-- 导入文件类别文件
local filetype = require("utils.filetype")

-- 注释符号映射表
local comment_symbols = {
    c = "//%s",
    cpp = "//%s",
    make = "#%s",
    lua = "--%s",

    -- 默认
    other = "//%s",
}

-- 初始化时设置全局 commentstring
vim.api.nvim_create_autocmd(

-- 缓存区加载以及文件类型被设置时触发
    { "FileType", "BufWinEnter" },
    {
        -- 设置处理的文件类型
        pattern = "*",

        -- 执行操作
        -- 根据文件类型设置相应的 commentstring
        callback = function()
            local ft = filetype.get_filetype()
            vim.bo.commentstring = comment_symbols[ft] or comment_symbols.other
        end,
    }
)
