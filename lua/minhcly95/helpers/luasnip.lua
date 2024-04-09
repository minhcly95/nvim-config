local tex_helpers = {}

local ls = require("luasnip")
local sn = ls.snippet_node
local i = ls.insert_node

function tex_helpers.get_visual(args, parent)
  if (#parent.snippet.env.LS_SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else
    return sn(nil, i(1, ''))
  end
end

local lscond = require("luasnip.extras.conditions")

tex_helpers.line_begin = require("luasnip.extras.expand_conditions").line_begin

tex_helpers.in_math = lscond.make_condition(function() -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end)

tex_helpers.in_text = lscond.make_condition(function()
  return not tex_helpers.in_math()
end)

tex_helpers.in_comment = lscond.make_condition(function() -- comment detection
  return vim.fn['vimtex#syntax#in_comment']() == 1
end)

tex_helpers.in_env = lscond.make_condition(function(name) -- generic environment detection
  local is_inside = vim.fn['vimtex#env#is_inside'](name)
  return (is_inside[1] > 0 and is_inside[2] > 0)
end)

tex_helpers.in_equation = lscond.make_condition(function() -- equation environment detection
  return tex_helpers.in_env('equation')
end)

tex_helpers.in_figure = lscond.make_condition(function() -- figure environment detection
  return tex_helpers.in_env('figure')
end)

tex_helpers.in_table = lscond.make_condition(function() -- table environment detection
  return tex_helpers.in_env('table')
end)

tex_helpers.in_itemize = lscond.make_condition(function() -- itemize environment detection
  return tex_helpers.in_env('itemize')
end)

tex_helpers.in_enumerate = lscond.make_condition(function() -- itemize environment detection
  return tex_helpers.in_env('enumerate')
end)

tex_helpers.in_tikz = lscond.make_condition(function() -- TikZ picture environment detection
  return tex_helpers.in_env('tikzpicture')
end)

return tex_helpers
