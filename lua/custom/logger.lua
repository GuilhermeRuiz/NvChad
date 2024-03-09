local M = {}

function M.log (path, msg)
  local file = io.open(path,"a")
  if file ~= nil then
    file:write(msg)
    file:close()
  end
end

return M

