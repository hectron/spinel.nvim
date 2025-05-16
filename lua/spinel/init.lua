-- Spinel Neovim colorscheme (light and dark variants)
-- Usage: require('spinel').load('dark') or require('spinel').load('light')
local config = require("spinel.config")

local M = {}

---@param opts? spinel.Config
function M.load(opts)
  opts = require("spinel.config").extend(opts)

  local colors = require("spinel.colors")
  local style = opts.style
  local palette = colors.palettes[style] or colors.palettes.dark

  vim.cmd("highlight clear")
  vim.o.termguicolors = true
  vim.o.background = style

  require("spinel.colors.highlight_groups").set_highlights(palette)
end

M.setup = config.setup

return M
