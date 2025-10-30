# 简介
> neovim 配置文件中可以调用的官方的函数

## vim.api.nvim_replace_termcodes
> 将字符串转换为 `neovim` 识别的按键序列
> 基本语法 `vim.api.nvim_replace_termcodes(str, from_part, do_lt, special)`
> - str
>   - 包含终端键码的字符串
> - from_part
>   - 布尔值
>   - 从部分替换
>   - 是否只替换字符串中的部分终端键码 而不是整个字符串
>   - 例如 `<Esc>abc` 是否只处理 `<Esc>` 还是把 `<Esc>abc` 当成一个整体处理
> - do_lt
>   - 布尔值
>   - 是否处理 `<` 字符
> - special
>   - 布尔值
>   - 是否进行特殊处理
>   - 是否对某些特殊的键码序列进行额外的处理和转换
>       - `<Nop>` 无操作
>       - `<Ignore>` 忽略
>       - `<SNR>` 脚本局部应用
>       - `<SID>` 脚本`ID`
>       - `<Plug>`
>       - 特殊吗别名

##  vim.api.nvim_feedkeys
> 向 `neovim` 发送字符串序列
> 基本语法 `vim.api.nvim_feedkeys(keys, mode, escape_csi)`
> - keys
>   - 要发送的按键序列
> - mode
>   - 模式
>   - `n` 普通模式
>   - `m` 映射模式(会触发按键映射)
>   - `t` 终端模式
>   - ` ` 当前模式
> - escape_csi
>   - 布尔值 是否转义 CSI 序列
>   - `true` 转义 CSI 序列
>   - `false` 不转义

