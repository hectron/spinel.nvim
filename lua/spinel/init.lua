-- Spinel Neovim colorscheme (light and dark variants)
-- Usage: require('spinel').load('dark') or require('spinel').load('light')
local config = require("spinel.config")

local M = {}

local function set_highlights(p)
  local set = vim.api.nvim_set_hl
  local ns = 0

  set(ns, "Normal",         { fg = p.fg, bg = p.bg })
  set(ns, "Comment",        { fg = p.comment, italic = true })
  set(ns, "Constant",       { fg = p.constant, bold = true })
  set(ns, "String",         { fg = p.string })
  set(ns, "Number",         { fg = p.number })
  set(ns, "Identifier",     { fg = p.variable })
  set(ns, "Function",       { fg = p.func })
  set(ns, "Statement",      { fg = p.keyword })
  set(ns, "Keyword",        { fg = p.keyword })
  set(ns, "Type",           { fg = p.type, bold = true })
  set(ns, "Special",        { fg = p.symbol })
  set(ns, "PreProc",        { fg = p.param, italic = true })
  set(ns, "Operator",       { fg = p.keyword })
  set(ns, "Title",          { fg = p.class })
  set(ns, "Visual",         { bg = p.selection })
  set(ns, "CursorLine",     { bg = p.linebg })
  set(ns, "CursorLineNr",   { fg = p.gutter, bold = true })
  set(ns, "LineNr",         { fg = p.gutter })
  set(ns, "StatusLine",     { fg = p.fg, bg = p.status })
  set(ns, "VertSplit",      { fg = p.border })
  set(ns, "WinSeparator",   { fg = p.border })
  set(ns, "Pmenu",          { fg = p.fg, bg = p.bg })
  set(ns, "PmenuSel",       { fg = p.fg, bg = p.selection })
  set(ns, "DiffAdd",        { fg = p.inserted })
  set(ns, "DiffDelete",     { fg = p.deleted })
  set(ns, "DiffChange",     { fg = p.changed })
  set(ns, "DiffText",       { fg = p.diffheader, italic = true })
  set(ns, "Cursor",         { fg = p.bg, bg = p.cursor })
  set(ns, "Directory",      { fg = p.class })
  set(ns, "Error",          { fg = p.deleted, bold = true })
  set(ns, "WarningMsg",     { fg = p.changed })
  set(ns, "Todo",           { fg = p.param, bold = true, italic = true })
end

---@param opts? spinel.Config
function M.load(opts)
  opts = require("spinel.config").extend(opts)
  local colors = require("spinel.colors")
  local style = opts.style
  local p = colors.palettes[style] or colors.palettes.dark
  vim.cmd("highlight clear")
  vim.o.termguicolors = true
  vim.o.background = style
  set_highlights(p)
end

M.setup = config.setup

return M
