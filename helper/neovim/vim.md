# 简介
> `neovim` 中以 `vim.function()` 调用的接口

## vim.inspect(cmd)
> 用于将 `Lua` 值 (包括表 函数等) 转换为可读的字符串格式
> 返回值:
>   字符串
> **示例程序**
> ```lua
> -- 查看变量内容
> local cmd = { "echo", "hello", "world" }
> print(vim.inspect(cmd))
> -- 输出: { "echo", "hello", "world" }
> 
> -- 查看复杂表结构
> local config = {
>     enable = true,
>     options = {
>         width = 100,
>         height = 50
>     },
>     plugins = { "treesitter", "lsp" }
> }
> print(vim.inspect(config))
> -- 输出 { enable = true, options = { height = 50, width = 100 }, plugins = { "treesitter", "lsp" } }
> ```

## vim.tbl_deep_extend(behavior, ...)
> 深度合并多个 `Lua` 表
**基本用法**
```lua
local result = vim.tbl_deep_extend(behavior, ...)
```
- `behavior` 指定合并行为 类型为 *字符串*
  - `"force"` 强制覆盖 后面的表会覆盖前面表中的相同键
  - `"keep"` 保留优先 保留前面表中的值 不覆盖
  - `"error"` 错误模式 遇到重复键时抛出错误
- `...` 可变参数
  - 要合并的表 可以传入多个表

**示例**
```lua
-- force
local t1 = {a = 1, b = {x = 10, y = 20}}
local t2 = {a = 2, b = {y = 30, z = 40}, c = 3}

local result = vim.tbl_deep_extend("force", t1, t2)
-- result: {a = 2, b = {x = 10, y = 30, z = 40}, c = 3}

-- keep
local t1 = {a = 1, b = {x = 10, y = 20}}
local t2 = {a = 2, b = {y = 30, z = 40}, c = 3}

local result = vim.tbl_deep_extend("keep", t1, t2)
-- result: {a = 1, b = {x = 10, y = 20, z = 40}, c = 3}

--error
local t1 = {a = 1}
local t2 = {a = 2}  -- 重复的键

local success, result = pcall(vim.tbl_deep_extend, "error", t1, t2)
if not success then
    print("合并出错:", result)
end
```

## vim.tbl_keys(table)
> 用于获取表 `table` 的所有键
>   参数: 要获取键的表
>   返回值: 包含表所有**键**的数组 **顺序不固定,并且只有键,没有对应的值**
```lua
local my_table = {a = 1, b = 2, c = 3}
local keys = vim.tbl_keys(my_table)
-- 此时 keys = {"a", "b", "c"}（顺序可能不同）
```
