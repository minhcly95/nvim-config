local helper = require("minhcly95.helpers.luasnip")
local get_visual = helper.get_visual
local in_math = helper.in_math

return {
    s({ trig = "\\{", wordTrig = false, snippetType = "autosnippet" }, { t "\\{", d(1, get_visual), t "\\}" },
        { condition = in_math }),
    -- s({ trig = "_", wordTrig = false, snippetType = "autosnippet" }, { t "_{", i(1), t "}" }, { condition = in_math }),
    -- s({ trig = "^", wordTrig = false, snippetType = "autosnippet" }, { t "^{", i(1), t "}" }, { condition = in_math }),
    s({ trig = "ff", wordTrig = false, snippetType = "autosnippet" },
        fmta([[\frac{<>}{<>}]], { i(1), i(2) }),
        { condition = in_math }),
    s({ trig = "++", wordTrig = false, snippetType = "autosnippet" },
        fmta([[\sum_{<>}^{<>}]], { i(1), i(2) }),
        { condition = in_math }),

    -- Symbols
    s({ trig = "([^\\%a])in", regTrig = true, wordTrig = false, snippetType = "autosnippet" }, {
        f(function(_, snip) return snip.captures[1] .. "\\in" end) }, { condition = in_math }),
    s({ trig = "([^\\%a])le", regTrig = true, wordTrig = false, snippetType = "autosnippet" }, {
        f(function(_, snip) return snip.captures[1] .. "\\leq" end) }, { condition = in_math }),
    s({ trig = "([^\\%a])ge", regTrig = true, wordTrig = false, snippetType = "autosnippet" }, {
        f(function(_, snip) return snip.captures[1] .. "\\geq" end) }, { condition = in_math }),
    s({ trig = "([^\\%a])sse", regTrig = true, wordTrig = false, snippetType = "autosnippet" }, {
        f(function(_, snip) return snip.captures[1] .. "\\subseteq" end) }, { condition = in_math }),
    s({ trig = "...", wordTrig = false, snippetType = "autosnippet" }, { t [[\ldots]] }, { condition = in_math }),
    s({ trig = "c..", wordTrig = false, snippetType = "autosnippet" }, { t [[\cdots]] }, { condition = in_math }),
    s({ trig = "d..", wordTrig = false, snippetType = "autosnippet" }, { t [[\ddots]] }, { condition = in_math }),
    s({ trig = "v..", wordTrig = false, snippetType = "autosnippet" }, { t [[\vdots]] }, { condition = in_math }),
    s({ trig = "\\*", wordTrig = false, snippetType = "autosnippet" }, { t [[\times]] }, { condition = in_math }),
    s({ trig = "\\-", wordTrig = false, snippetType = "autosnippet" }, { t [[\setminus]] }, { condition = in_math }),
    s({ trig = "\\0", wordTrig = false, snippetType = "autosnippet" }, { t [[\varnothing]] }, { condition = in_math }),

    s({ trig = "!!", wordTrig = false, snippetType = "autosnippet" }, { t [[^{-1}]] }, { condition = in_math }),
    s({ trig = "~~", wordTrig = false, snippetType = "autosnippet" }, { t [[\tilde{]], i(1), t"}" }, { condition = in_math }),
    s({ trig = "^^", wordTrig = false, snippetType = "autosnippet" }, { t [[\hat{]], i(1), t"}" }, { condition = in_math }),

    -- Greeks
    s({ trig = ";a", wordTrig = false, snippetType = "autosnippet" }, { t [[\alpha]] }, { condition = in_math }),
    s({ trig = ";b", wordTrig = false, snippetType = "autosnippet" }, { t [[\beta]] }, { condition = in_math }),
    s({ trig = ";g", wordTrig = false, snippetType = "autosnippet" }, { t [[\gamma]] }, { condition = in_math }),
    s({ trig = ";d", wordTrig = false, snippetType = "autosnippet" }, { t [[\delta]] }, { condition = in_math }),
    s({ trig = ";e", wordTrig = false, snippetType = "autosnippet" }, { t [[\epsilon]] }, { condition = in_math }),
    s({ trig = ";z", wordTrig = false, snippetType = "autosnippet" }, { t [[\zeta]] }, { condition = in_math }),
    s({ trig = ";h", wordTrig = false, snippetType = "autosnippet" }, { t [[\eta]] }, { condition = in_math }),
    s({ trig = ";q", wordTrig = false, snippetType = "autosnippet" }, { t [[\theta]] }, { condition = in_math }),
    s({ trig = ";i", wordTrig = false, snippetType = "autosnippet" }, { t [[\iota]] }, { condition = in_math }),
    s({ trig = ";k", wordTrig = false, snippetType = "autosnippet" }, { t [[\kappa]] }, { condition = in_math }),
    s({ trig = ";l", wordTrig = false, snippetType = "autosnippet" }, { t [[\lambda]] }, { condition = in_math }),
    s({ trig = ";m", wordTrig = false, snippetType = "autosnippet" }, { t [[\mu]] }, { condition = in_math }),
    s({ trig = ";n", wordTrig = false, snippetType = "autosnippet" }, { t [[\nu]] }, { condition = in_math }),
    s({ trig = ";c", wordTrig = false, snippetType = "autosnippet" }, { t [[\xi]] }, { condition = in_math }),
    s({ trig = ";p", wordTrig = false, snippetType = "autosnippet" }, { t [[\pi]] }, { condition = in_math }),
    s({ trig = ";r", wordTrig = false, snippetType = "autosnippet" }, { t [[\rho]] }, { condition = in_math }),
    s({ trig = ";s", wordTrig = false, snippetType = "autosnippet" }, { t [[\sigma]] }, { condition = in_math }),
    s({ trig = ";t", wordTrig = false, snippetType = "autosnippet" }, { t [[\tau]] }, { condition = in_math }),
    s({ trig = ";u", wordTrig = false, snippetType = "autosnippet" }, { t [[\upsilon]] }, { condition = in_math }),
    s({ trig = ";f", wordTrig = false, snippetType = "autosnippet" }, { t [[\phi]] }, { condition = in_math }),
    s({ trig = ";x", wordTrig = false, snippetType = "autosnippet" }, { t [[\chi]] }, { condition = in_math }),
    s({ trig = ";j", wordTrig = false, snippetType = "autosnippet" }, { t [[\psi]] }, { condition = in_math }),
    s({ trig = ";w", wordTrig = false, snippetType = "autosnippet" }, { t [[\omega]] }, { condition = in_math }),
    s({ trig = ";G", wordTrig = false, snippetType = "autosnippet" }, { t [[\Gamma]] }, { condition = in_math }),
    s({ trig = ";D", wordTrig = false, snippetType = "autosnippet" }, { t [[\Delta]] }, { condition = in_math }),
    s({ trig = ";Q", wordTrig = false, snippetType = "autosnippet" }, { t [[\Theta]] }, { condition = in_math }),
    s({ trig = ";L", wordTrig = false, snippetType = "autosnippet" }, { t [[\Lambda]] }, { condition = in_math }),
    s({ trig = ";C", wordTrig = false, snippetType = "autosnippet" }, { t [[\Xi]] }, { condition = in_math }),
    s({ trig = ";P", wordTrig = false, snippetType = "autosnippet" }, { t [[\Pi]] }, { condition = in_math }),
    s({ trig = ";S", wordTrig = false, snippetType = "autosnippet" }, { t [[\Sigma]] }, { condition = in_math }),
    s({ trig = ";U", wordTrig = false, snippetType = "autosnippet" }, { t [[\Upsilon]] }, { condition = in_math }),
    s({ trig = ";F", wordTrig = false, snippetType = "autosnippet" }, { t [[\Phi]] }, { condition = in_math }),
    s({ trig = ";J", wordTrig = false, snippetType = "autosnippet" }, { t [[\Psi]] }, { condition = in_math }),
    s({ trig = ";W", wordTrig = false, snippetType = "autosnippet" }, { t [[\Omega]] }, { condition = in_math }),

    -- Number sets
    s({ trig = "sNN", wordTrig = false, snippetType = "autosnippet" }, { t "\\setnat" }, { condition = in_math }),
    s({ trig = "sZZ", wordTrig = false, snippetType = "autosnippet" }, { t "\\setint" }, { condition = in_math }),
    s({ trig = "sRR", wordTrig = false, snippetType = "autosnippet" }, { t "\\setreal" }, { condition = in_math }),
    s({ trig = "sCC", wordTrig = false, snippetType = "autosnippet" }, { t "\\setcomp" }, { condition = in_math }),
    s({ trig = "sQQ", wordTrig = false, snippetType = "autosnippet" }, { t "\\setrat" }, { condition = in_math }),
    s({ trig = "sII", wordTrig = false, snippetType = "autosnippet" }, { t "\\setirr" }, { condition = in_math }),
    s({ trig = "sBB", wordTrig = false, snippetType = "autosnippet" }, { t "\\setbin" }, { condition = in_math }),

    -- Generic sets
    s({ trig = "([^\\%a])S(%a)", regTrig = true, wordTrig = false, snippetType = "autosnippet" }, {
        f(function(_, snip) return snip.captures[1] .. "\\set" .. snip.captures[2] end) }, { condition = in_math }),

    -- Text
    s("tt", fmta([[\text{<>}]], { d(1, get_visual) }), { condition = in_math }),
    s("tif", t [[\text{if}~]], { condition = in_math }),
    s("tfa", t [[\text{for all}~]], { condition = in_math }),
    s("tot", t [[\text{otherwise}]], { condition = in_math }),

    -- Lim
    s("lim0", fmta([[\lim_{<> \to 0}]], { i(1, "x") }), { condition = in_math }),
    s("liminf", fmta([[\lim_{<> \to \infty}]], { i(1, "n") }), { condition = in_math }),

    -- Environments
    s("cases", fmta([[
    \begin{cases}
        <> & <> \\
        <> & <>
    \end{cases}
    ]], { i(1), i(2), i(3), i(4) }), { condition = in_math }),

    -- Derivative (require physics package)
    s("dv", fmta([[\dv{<>}{<>}]], { i(1), i(2) }), { condition = in_math }),
    s("pdv", fmta([[\pdv{<>}{<>}]], { i(1), i(2) }), { condition = in_math }),
}
