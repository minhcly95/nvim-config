local helper = require("minhcly95.helpers.luasnip")
local get_visual = helper.get_visual
local in_math = helper.in_math
local in_text = helper.in_text
local line_begin = helper.line_begin
local in_itemize = helper.in_itemize
local in_enumerate = helper.in_enumerate

return {
  s({ trig="ii", snippetType="autosnippet" }, { t[[\item]] },
    { condition = line_begin * (in_itemize + in_enumerate) } ),

  -- Labels
  s("lb", fmta([[\label{eq:<>}]], { i(1) }), { condition = in_math }),

  -- Sections
  s("sec", fmta([[
    \section{<>}
    \label{sec:<>}

  ]], { i(1), i(2) }), { condition = line_begin * in_text }),

  s("ssec", fmta([[
    \subsection{<>}
    \label{ssec:<>}

  ]], { i(1), i(2) }), { condition = line_begin * in_text }),

  s("sssec", fmta([[
    \subsubsection{<>}
    \label{sssec:<>}

  ]], { i(1), i(2) }), { condition = line_begin * in_text }),

  -- Command
  s("cmd", fmta([[\newcommand{<>}{<>}]], { i(1), i(2) }), { condition = line_begin * in_text }),

  -- Text format
  s("tit", fmta([[\textit{<>}]], { d(1, get_visual) }), { condition = in_text }),
  s("tbf", fmta([[\textbf{<>}]], { d(1, get_visual) }), { condition = in_text }),
}
