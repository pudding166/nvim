# 简介
> 全局函数

## vim.fn.executable(command)
> 描述: 检查指定的程序是否可执行
>   参数: 要检查的程序名称或路径 类型为**字符串**
>   结果:
>     `1` - 程序可执行
>     `0` - 程序不可执行

## vim.fn.expand(expression)
> 描述：一个用于展开文件名和特殊标记的函数
> 作用：将各种特殊字符和通配符转换为实际的文件名或路径
```lua
示例：
-- 路径相关
print(vim.fn.expand("%:p"))     -- 完整绝对路径
print(vim.fn.expand("%:."))     -- 相对于当前目录的路径
print(vim.fn.expand("%:~"))     -- 相对于HOME的路径

-- 文件名相关
print(vim.fn.expand("%"))       -- 当前缓冲区文件名
print(vim.fn.expand("%:t"))     -- 仅文件名（尾部）
print(vim.fn.expand("%:r"))     -- 根名（去掉扩展名）
print(vim.fn.expand("%:e"))     -- 扩展名

-- 目录相关
print(vim.fn.expand("%:h"))     -- 头部（目录路径）
print(vim.fn.expand("%:p:h"))   -- 完整路径的目录

-- 环境变量
print(vim.fn.expand("$HOME"))       -- 用户主目录
print(vim.fn.expand("$VIMRUNTIME")) -- Vim运行时目录

-- 波浪线展开（用户主目录）
print(vim.fn.expand("~/.config"))   -- 展开为 /home/user/.config

-- 文件通配符
local files = vim.fn.expand("~/.config/nvim/*.lua")
-- 返回匹配的文件列表（字符串形式，用换行符分隔）

-- 其他特殊标记
print(vim.fn.expand("#"))           -- 交替文件
print(vim.fn.expand("<cword>"))     -- 光标下的单词
print(vim.fn.expand("<cfile>"))     -- 光标下的文件名
```

## vim.fn.has(feature)
> 描述: 用于检测当前 `Vim` 环境的各种特性和功能
>   - `1` 表示支持该特性
>   - `0` 表示不支持该特性

## vim.fn.visualmode()
> - 获取当前可视模式类型
> - 返回一个字符串 表示当前激活的可视模式
>   - ` `       不在可视模式
>   - `v`       字符可视模式 (character-wise)
>   - `V`       行可视模式 (line-wise)
>   - `<C-v>`	块可视模式 (block-wise)
>   - `s`	    选择模式 (select mode)
>   - `i`	    插入模式 (实际上不会返回这个值)
