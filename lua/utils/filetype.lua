-- ~/.config/nvim/lua/utils/filetype.lua

-- 该文件只加载一次
if vim.g.my_filetype_lua_ then
  return
end
vim.g.my_filetype_lua_ = 1

local M = {}

-- 返回标准化文件类型
function M.get_filetype()
  -- 获取全局变量中的文件名称
  local ft = vim.bo.filetype

  -- 更完善的文件类型推断
  if ft == "" then
    local extension = vim.fn.expand("%:e")
    local filename = vim.fn.expand("%:t")

    -- -- C/C++ 头文件检测
    -- if extension == "h" then
    --   -- 检查文件内容或项目结构来区分 C 和 C++
    --   local content = vim.fn.getline(1, 10)
    --   for _, line in ipairs(content) do
    --     if line:match("extern%s+\"C\"") or line:match("#ifdef%s+__cplusplus") then
    --       return "c"
    --     end
    --   end
    --   -- 默认返回 cpp，因为现代项目中 .h 文件更多用于 C++
    --   return "cpp"
    -- end

    -- 其他文件类型推断
    local extension_map = {
      js = "javascript",
      ts = "typescript",
      py = "python",
      rs = "rust",
      go = "go",
      md = "markdown",
    }

    return extension_map[extension] or "other"
  end


  return ft
end

return M
