local M = {}

---@class spinel.Config
---@field style "dark"|"light"
---@field transparent boolean
M.defaults = {
  style = "dark",
  transparent = true,
}

---@type spinel.Config
M.options = nil

---@param opts? spinel.Config
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

---@param opts? spinel.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end
})

return M
