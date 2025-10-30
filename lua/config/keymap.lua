-- ~/.config/nvim/lua/config/keymap.lua

-- Some key maps for neovim
-- neovim 自身的按键映射

-- 该文件只加载一次
if vim.g.my_keymap_lua_ then
    return
end
vim.g.my_keymap_lua_ = 1

-- <LEADER>设置
vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

-- 保存
vim.keymap.set("n","S",":w<CR>")
-- 退出
vim.keymap.set("n","Q",":q<CR>")


