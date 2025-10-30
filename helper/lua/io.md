# IO

`Lua` 的标准函数库

## 文件操控

### io.open(filename, mode)
> - 用于打开一个文件  
> - 语法:
> ```lua
> file, err = io.open(filename, mode)
> ```
> - 参数  
>   - `filename` 字符串类型 标识要打开的文件类型  
>   - `mode` 字符串类型 指定文件要打开的模式  
>     - `r`	只读模式 这是默认模式 如果文件不存在 则打开失败  
>     - `w`	写入模式 如果文件存在 则清空其内容 如果文件不存在 则创建新文件  
>     - `a`	追加模式 如果文件存在 则在文件末尾追加写入 如果文件不存在 则创建新文件  
>     - `r+`	读写模式 文件必须已存在  
>     - `w+`	读写模式 如果文件存在 则清空其内容 如果文件不存在 则创建新文件  
>     - `a+`	读写模式 如果文件存在 则在文件末尾追加写入 如果文件不存在 则创建新文件 读取操作从文件开头开始 写入操作总是在文件末尾  
>     - `b` 二进制 打开二进制文件  
> - 返回值  
>   - **成功**: 返回一个文件句柄 （或称为文件对象）  
>   - **失败**: 则返回 `nil` 和 *一条错误信息*  

#### 可用的方法

- `file:read(format, ...)`  从文件中读取内容
  - `*a`: 读取整个文件
  - `*l`: 读取下一行 (默认值)
  - `*n`: 从文件中读取一个数字
  - `num`: 读取一个指定字节数的字符串
- `file:write(value, ...)` 向文件写入内容
- `file:seek(whence, offset)` 设置和获取当前文件位置
  - `set`: 从文件开头开始
  - `cur`: 从当前位置开始 (默认值)
  - `end`: 从文件末尾开始
  - `offset`: 偏移的字节数
- `file:flush()` 将缓冲区中的数据立即写入磁盘文件
- `file:lines()` 返回一个迭代器函数 可以用于 `for` 循环来遍历文件中的每一行
- `file:close()`  关闭文件并保存更改 文件使用完毕后必须关闭 以释放系统资源

#### **示例**

##### 读取整个文件 (安全的方式)
```lua
local file, err = io.open("config.txt", "r")

if file then
    -- 成功打开
    local content = file:read("*a") -- 读取所有内容
    print(content)
    file:close() -- 记得关闭文件！
else
    -- 打开失败
    print("Could not open file: ", err)
end
```

##### 逐行读取文件
```lua
local file = io.open("data.log", "r")
if not file then
    print("File open failed")
    return
end

for line in file:lines() do
    print(line)
end

file:close()
```

##### 写入文件
```lua
local file, err = io.open("output.txt", "w") -- "w" 模式会覆盖原文件

if file then
    file:write("Hello, World!\n")
    file:write(string.format("The answer is %d\n", 42))
    file:close()
    print("Write successful")
else
    print("Error: ", err)
end
```

##### 追加到文件末尾
```lua
local file = io.open("log.txt", "a") -- "a" 模式用于追加
if file then
    file:write(os.date() .. " - System started\n")
    file:close()
end
```

##### 使用 `seek` (获取文件大小)
```lua
local file = io.open("bigfile.dat", "r")
if file then
    -- 将文件指针移动到末尾
    local filesize = file:seek("end")
    print("File size is: " .. filesize .. " bytes")
    file:close()
end
```

