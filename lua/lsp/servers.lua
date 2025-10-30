-- ~/.config/nvim/lua/lsp/servers.lua

return {
  -- 自动安装的语言服务器列表
  ensure_installed = {
    "lua_ls",   -- Lua
    "clangd",   -- C/C++
    "bashls",   -- Bash
    "marksman", -- Markdown
  },
}
