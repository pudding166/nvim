# `Lua` 语法
---

## 声明

### 多重赋值

`Lua` 允许在一条语句中同时为多个变量赋值 这使得代码非常简洁 尤其是在需要交换变量值或者函数返回多个值时非常方便  
多个变量赋值时 Lua 会按照顺序将右侧的值依次赋予左侧的变量
```lua
变量1, 变量2, ..., 变量N = 值1, 值2, ..., 值N
```
**关键点** 值的数量与变量数量不匹配
> 当右侧的值的数量与左侧的变量数量不一致时 `Lua` 的处理规则如下
>   - 如果值的数量少于变量数量 多出的变量会被赋值为 `nil`
>   - 如果值的数量多于变量数量 多余的值会被丢弃

**示例**
```lua
local a, b = 10
-- a 为 10
-- b 为 nil

file, err = io.open("example.txt", "r")
-- 当文件正常打开时
-- file 为文件的句柄
-- err 为 nil
-- 当文件打开失败
-- file 为 nil
-- err 为错误的描述信息
```

## 运算符

### 拼接运算符 `..`
> 拼接 `Concatenation` 指的是将多个字符串连接在一起形成一个新的字符串的操作
> **基本格式**
> ```lua
> string1 .. string2 .. string3 ...
> ```
> **示例**
> ```lua
> local str1 = "Hello"
> local str2 = "World"
> local result = str1 .. " " .. str2
> print(result)  -- 输出: Hello World
> 
> -- Lua 会自动将数字转换为字符串
> local x = 10
> local y = 20
> local sum_text = x .. " + " .. y .. " = " .. (x + y)
> print(sum_text)  -- 输出: 10 + 20 = 30
> 
> -- 多端字符拼接
> local part1 = "I"
> local part2 = "love"
> local part3 = "Lua"
> 
> local sentence = part1 .. " " .. part2 .. " " .. part3 .. "!"
> print(sentence)  -- 输出: I love Lua!
> ```
> `..` 存在优先级问题
>   - 不能进行 `nil` 的拼接
>   - 其他的值要转化成字符转
> ```lua
> local a = "hello"
> local b = "world"
> 
> -- 正确的拼接
> local correct = (a or "default") .. " " .. b
> print(correct)  -- 输出: hello world
> 
> -- 错误的拼接（优先级问题）
> local wrong = a or "default" .. " " .. b
> print(wrong)    -- 输出: hello（因为 .. 优先级高于 or）
> 
> -- .. 的优先级高于 or，低于 and
> local result1 = a .. b or c    -- 相当于 (a .. b) or c
> local result2 = a or b .. c    -- 相当于 a or (b .. c)
> local result3 = a and b .. c   -- 相当于 a and (b .. c)
> ```

## 表达式

### 三元表达式
```lua
condition and value_when_true or value_when_false
```
> `condition` 表达式  
> `value_when_true` 当表达式为真时返回的值  
> `value_when_false` 当表达式为假时返回的值
```lua
示例:
-- 简单的三元表达式
local age = 20
local status = age >= 18 and "adult" or "minor"
print(status)  -- 输出: adult

-- 数值比较
local a, b = 10, 5
local max = a > b and a or b
print(max)  -- 输出: 10

-- 配置设置
local debug_mode = true
local log_level = debug_mode and "DEBUG" or "INFO"
print(log_level)  -- 输出: DEBUG
```


### 短路求值
> 当*表达式*的最终结果已经确定时 就不再计算剩余的部分
> `and`:
> ```lua
> -- 语法：a and b
> -- 执行逻辑:
> --   如果 a 为假 返回 a (不计算 b)
> --   如果 a 为真 返回 b (计算 b)
> ```
> `or`:
> ```lua
> -- 语法：a or b
> -- 执行逻辑:
> --   如果 a 为真 返回 a (不计算 b)
> --   如果 a 为假 返回 b (计算 b)
> ```
> **注意**
> - 拼接优先级高于 `or`
> - `0` *空字符串* 等都被视为真值
> - `and` 的优先级高于 `or`

## 循环

### `for` 循环
---
#### 数值 `for` 循环
> **基本语法:**
> ```lua
> for var = start, end, step do
>     -- 循环体
> end
> ```
> `var`: 循环变量  
> `start`: 起始值  
> `end`: 结束值  
> `step`: 步长 (可选 默认为 1)

**示例:**
```lua
-- 从 1 到 5，步长为 1
for i = 1, 5 do
    print(i)  -- 输出：1 2 3 4 5
end

-- 从 10 到 1，步长为 -2
for i = 10, 1, -2 do
    print(i)  -- 输出：10 8 6 4 2
end

-- 计算 1 到 10 的和
local sum = 0
for i = 1, 10 do
    sum = sum + i
end
print("总和:", sum)  -- 输出：55
```

#### 泛型 `for` 循环
> 泛型 for 循环用于遍历表、数组等集合类型  
> **基本语法:**
> ```lua
> for key, value in iterator(table) do
>     -- 循环体
> end
> ```
> - 常用的迭代器  
>   `pairs()`: 遍历表中的所有键值对  
>   `ipairs()`: 遍历数组部分 (数字索引)

**示例:**
```lua
-- 使用 pairs 遍历表
local person = {name = "张三", age = 25, city = "北京"}

for key, value in pairs(person) do
    print(key .. ": " .. value)
end
-- 可能输出：
-- name: 张三
-- age: 25
-- city: 北京

-- 使用 ipairs 遍历数组
local fruits = {"苹果", "香蕉", "橙子"}

for index, value in ipairs(fruits) do
    print(index .. ": " .. value)
end
-- 输出：
-- 1: 苹果
-- 2: 香蕉
-- 3: 橙子
```

#### 注意
> - 循环变量是局部变量  
> - 不要在循环中修改循环变量  
> - `for` 循环的边界 -- 当 `start > end` 且 `step > 0` 时，循环不会执行

### 循环控制语句
> - `break`:
>   用与提前退出循环
> ```lua
> -- 找到第一个能被 7 整除的数
> for i = 1, 100 do
>    if i % 7 == 0 then
>        print("找到:", i)
>        break
>    end
>end
> ```
