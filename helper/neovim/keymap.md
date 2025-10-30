# 简介
> 本文件讲解原本的按键操作以及如何修改

## vim.keymap
> 基本语法：`vim.keymap.set({modes}, {lhs}, {rhs}, {opts})`
> - modes
>   - 空白: 所有模式
>   - n : `Normal` 普通模式
>   - i : `Insert` 插入模式
>   - v : `Visual` 可视模式
>   - x : `Visual (character-wise)` 可视模式
>   - c : `Command` 命令行模式
>   - t : `Terminal` 终端模式
>   - s : `Select` 选择模式（类似于可视模式但行为不同）
>   - o : `Operator-pending` 操作符等待模式
> - lhs
>   - 按下的键或者键序列
>   - `x` 表示数字或者其他的键位
>   - 功能键        : `<Fx>`
>   - Control 键组合: `<C-x>`
>   - Shift 键组合  : `<S-x>`
>   - Alt 键组合    : `<M-x>`
>   - 特殊的键位：
>       - <Leader>  : 由自己设置
>       - <Tab>     : `Tab` 键位
>       - <CR>      : `Enter` 换行
>       - <Del>     : `Del` 删除键
>       - <Esc>     : `Esc` 退出键
>       - <Up>      : 方向键上
>       - <Down>    : 方向键下
>       - <Left>    : 方向键左
>       - <Right>   : 方向键右
> - rhs
>   - 按下 `lhs` 后的操作
>   - `$`       : 行尾
>   - `^`       : 行首
>   - <End>     : 行尾
>   - <Home>    : 行首
>   - `+y`      : 复制到系统剪贴板
>   - `+p`      : 从系统剪贴板粘贴
>   - `+P`      : 从系统剪贴板粘贴(前)
>   - `+d`      : 剪切到系统剪贴板
>   - `_d`      : 删除到黑洞寄存器
>   - `neovim` 自带的函数 或 自定义的函数 甚至函数代码块
>   - `neovim` 自带的命令行操作 例如 `:quit<CR>` 表示退出
>       - `quit`        : 退出
>       - `write`       : 保存文件
>       - `bnext`       : 下一个缓存区
>       - `bprevious`   : 上一个缓冲区
>       - `bdelete`     : 删除缓存区
>       - `vsplit`      : 垂直分割
>       - `split`       : 水平分割
> - opts
>   - `buffer`
>       - 默认模式 `false`
>       - `false` 全局映射
>       - `true` 只在当前缓存区中可用
>       - Number`x` 只在缓存区`x`中可用
>   - `desc` 描述性息
>   - `expr`
>       - 默认模式 `false`
>       - `false` 普通映射
>       - `true` 表达式映射 *可见技巧 : 表达式*
>   - `replace_keycodes`
>       - `true` 替换特殊键码
>   - `noremap`
>       - 默认模式 `false`
>       - `false` 递归映射 如果按键映射后的按键也有映射 则继续映射
>       - `true` 非递归映射
>   - `nowait`
>       - `true` 立即执行 不等待映射序列完成
>   - `silent`
>       - 默认模式 `false`
>       - `false` 底部会显示按下的按键
>       - `true` 不显示命令
>
> 技巧：
>   - 单个模块可以使用`{}`传入多个参数
>       - vim.keymap.set({'n', 'v'}, '<C-s>', ':w<CR>', { desc = '保存文件' })
>   - 多个特殊键位可以组合：
>       - vim.keymap.set('n', '<C-M-h>', ':tabprevious<CR>', { desc = '上一个标签页' })
>   - 表达式
>       - 需要 `expr = true` 最后一个参数中添加
>       - 示例: `vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = '智能向下移动'})`

