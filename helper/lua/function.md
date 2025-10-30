# 函数

### pcall(func, arg1, arg2, ...)
全称:  `Protected Call` (保护式调用)  
作用: 安全地执行可能出错的代码 防止错误导致整个程序崩溃
基本语法:
`local success, result1, result2, ... = pcall(func, arg1, arg2, ...)`
- `func`: 要调用的函数
- `arg1, arg2, ...`: 传递给函数的参数
- `success`: 布尔值 表示调用是否成功
- `result1, result2, ...`: 函数的返回值或错误信息
