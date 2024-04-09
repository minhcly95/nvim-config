return {
  s("snip", fmta([[s("<>", { <> })]], { i(1), i(2) })),
  s("fsnip", fmta([=[s("<>", fmta([[<>]], { <> }))]=], { i(1), i(2), i(3) })),
  s("asnip", fmta([[s({ trig="<>", snippetType="autosnippet" }, { <> })]], { i(1), i(2) })),
}
