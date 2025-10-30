-- ~/.config/nvim/lua/config/options.lua

-- 该文件只加载一次
if vim.g.my_options_lua_ then
    return
end
vim.g.my_options_lua_ = 1

-- 启用文件类型检测
vim.cmd("filetype on")

-- 文件
vim.opt.encoding = "utf-8"                      -- neovim 内部的文件编码
-- vim.opt.fileencoding = "utf-8"                  -- 文件写入时的编码
-- vim.opt.fileformats = "unix,dos"                -- 设置换行符

-- 功能
vim.opt.swapfile = false                        -- 生成交换文件
vim.opt.backup = false                          -- 生成备份文件
vim.opt.writebackup = false                     -- 写入时创建临时备份
vim.opt.autoread = true                         -- 文件外部修改时自动重载
-- vim.opt.undofile = true                         -- 持久化撤销历史
-- vim.opt.undodir = "~/.cache/nvim/undo"          -- 持久化撤销历史文件夹

-- 基础设置
vim.opt.termguicolors = true                    -- 启用真彩色支持
-- vim.opt.showmode = true                         -- 显示当前模式
vim.opt.mouse = "a"                             -- 启用鼠标支持
vim.opt.updatetime = 300                        -- 事件的触发时间间隔
                                                -- 不同事件的刷新时间
vim.opt.timeoutlen = 500                        -- 映射按键的触发时间间隔
                                                -- 按下前后两个按键的间隔时间
vim.opt.clipboard = "unnamedplus"               -- 集成系统剪切板

-- 界面显示
vim.opt.number = true                           -- 显示行号
vim.opt.relativenumber = true                   -- 相对行号
vim.opt.wrap = false                            -- 自动换行
vim.opt.cursorline = true                       -- 高亮当前行
vim.opt.signcolumn = "yes"                      -- 显示标记列
vim.opt.colorcolumn = "80"                      -- 字符参考线

-- 缩进与制表符
vim.opt.tabstop = 4                             -- 1 个 Tab = 4 空格
vim.opt.shiftwidth = 4                          -- 自动缩进步长 = 4
vim.opt.softtabstop = 4                         -- 退格键删除缩进时的步长
vim.opt.expandtab = false                       -- 将 Tab 转化为空格
vim.opt.autoindent = true                       -- 自动缩进
vim.opt.smartindent = true                      -- 智能缩进

-- 搜索
vim.opt.ignorecase = true                       -- 忽略大小写
vim.opt.smartcase = true                        -- 智能大小写
vim.opt.hlsearch = true                         -- 高亮搜索结果
vim.opt.incsearch = true                        -- 实时搜索高亮

-- 缓冲区
vim.opt.hidden = true                           -- 隐藏未修改的缓冲区
vim.opt.title = true                            -- 标题显示文件名称

-- 终端行为
vim.opt.shell = "/bin/bash"                     -- 明确指定 shell

-- 命令模式补全
vim.opt.wildmenu = true                         -- 启用图形化补全菜单
vim.opt.wildmode = "longest:full,full"          -- 补全模式设置
vim.opt.wildignorecase = true                   -- 忽略大小写
vim.opt.wildoptions = "pum"                     -- 使用弹出菜单显示补全
