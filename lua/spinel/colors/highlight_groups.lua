local M = {}

---@param palette spinel.Palette
M.set_highlights = function(palette)
  local set = vim.api.nvim_set_hl
  local ns = 0

  set(ns, "Normal",         { fg = palette.fg, bg = palette.bg })
  set(ns, "Comment",        { fg = palette.comment, italic = true })
  set(ns, "Constant",       { fg = palette.constant, bold = true })
  set(ns, "String",         { fg = palette.string })
  set(ns, "Number",         { fg = palette.number })
  set(ns, "Identifier",     { fg = palette.variable })
  set(ns, "Function",       { fg = palette.func })
  set(ns, "Statement",      { fg = palette.keyword })
  set(ns, "Keyword",        { fg = palette.keyword })
  set(ns, "Type",           { fg = palette.type, bold = true })
  set(ns, "Special",        { fg = palette.symbol })
  set(ns, "PreProc",        { fg = palette.param, italic = true })
  set(ns, "Operator",       { fg = palette.keyword })
  set(ns, "Title",          { fg = palette.class })
  set(ns, "Visual",         { bg = palette.selection })
  set(ns, "CursorLine",     { bg = palette.linebg })
  set(ns, "CursorLineNr",   { fg = palette.gutter, bold = true })
  set(ns, "LineNr",         { fg = palette.gutter })
  set(ns, "StatusLine",     { fg = palette.fg, bg = palette.status })
  set(ns, "VertSplit",      { fg = palette.border })
  set(ns, "WinSeparator",   { fg = palette.border })
  set(ns, "Pmenu",          { fg = palette.fg, bg = palette.bg })
  set(ns, "PmenuSel",       { fg = palette.fg, bg = palette.selection })
  set(ns, "DiffAdd",        { fg = palette.inserted })
  set(ns, "DiffDelete",     { fg = palette.deleted })
  set(ns, "DiffChange",     { fg = palette.changed })
  set(ns, "DiffText",       { fg = palette.diffheader, italic = true })
  set(ns, "Cursor",         { fg = palette.bg, bg = palette.cursor })
  set(ns, "Directory",      { fg = palette.class })
  set(ns, "Error",          { fg = palette.deleted, bold = true })
  set(ns, "WarningMsg",     { fg = palette.changed })
  set(ns, "Todo",           { fg = palette.param, bold = true, italic = true })
end

return M
