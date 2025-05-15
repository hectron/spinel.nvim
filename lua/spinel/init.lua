-- Spinel Neovim colorscheme (light and dark variants)
-- Usage: require('spinel').load('dark') or require('spinel').load('light')

local M = {}

local palettes = {
  dark = {
    bg         = "#2f2f2f",
    fg         = "#d1ccf1",
    accent     = "#d464eb",
    keyword    = "#dd5555",
    comment    = "#bea17f",
    string     = "#5ac16c",
    number     = "#eee385",
    func       = "#d1ccf1",
    type       = "#dd5555",
    variable   = "#18b5e4",
    constant   = "#ed2a88",
    class      = "#4b82e9",
    property   = "#eee0e0",
    selection  = "#4b4b4b",
    cursor     = "#d1ccf1",
    visual     = "#3b3b3b",
    linebg     = "#3b3b3b",
    gutter     = "#d2cdf2",
    status     = "#333333",
    border     = "#404040",
    inserted   = "#5ac16c",
    deleted    = "#dd5555",
    changed    = "#ff9a3b",
    diffheader = "#18b5e4",
    symbol     = "#7dcfcf",
    param      = "#ff9a3b",
  },
  light = {
    bg         = "#e3e2ec",
    fg         = "#595959",
    accent     = "#d431f5",
    keyword    = "#c03737",
    comment    = "#9c8262",
    string     = "#158927",
    number     = "#bfb23b",
    func       = "#595959",
    type       = "#c03737",
    variable   = "#01a3e3",
    constant   = "#ed2a88",
    class      = "#1e45e0",
    property   = "#eee0e0",
    selection  = "#d8d8db",
    cursor     = "#595959",
    visual     = "#dcdaeb",
    linebg     = "#dcdaeb",
    gutter     = "#808080",
    status     = "#98a4bd",
    border     = "#acabb3",
    inserted   = "#158927",
    deleted    = "#c03737",
    changed    = "#ea7d16",
    diffheader = "#01a3e3",
    symbol     = "#03a2a2",
    param      = "#ea7d16",
  }
}

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

function M.load(style)
  style = style or "dark"
  local p = palettes[style] or palettes.dark
  vim.cmd("highlight clear")
  vim.o.background = style
  set_highlights(p)
end

return M
