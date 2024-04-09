local helper = require("minhcly95.helpers.luasnip")
local get_visual = helper.get_visual
local in_text = helper.in_text
local line_begin = helper.line_begin

return {
    s("env", fmta([[
    \begin{<>}
        <>
    \end{<>}
    ]], { i(1), i(0), rep(1) })),

    -- Equations
    s({ trig = "mm", snippetType = "autosnippet" },
        fmta([[$<>$]], { d(1, get_visual) }),
        { condition = in_text }),

    s({ trig = "nn", snippetType = "autosnippet", wordTrig = true },
        fmta("\\[ <> \\]", { d(1, get_visual) }),
        { condition = in_text }),

    s("eqq", fmta([[
    \begin{equation}
        <>
    \end{equation}

    ]], { i(1) }), { condition = in_text * line_begin }),

    s("eqe", fmta([[
    \begin{equation*}
        <>
    \end{equation*}

    ]], { i(1) }), { condition = in_text * line_begin }),

    s("eaa", fmta([[
    \begin{align}
        <>
    \end{align}

    ]], { i(1) }), { condition = in_text * line_begin }),

    s("eae", fmta([[
    \begin{align*}
        <>
    \end{align*}

    ]], { i(1) }), { condition = in_text * line_begin }),

    -- Itemize and Enumerate
    s("itm", fmta([[
    \begin{itemize}
        <>
    \end{itemize}

    ]], { i(1) }), { condition = in_text * line_begin }),

    s("enm", fmta([[
    \begin{enumerate}
        <>
    \end{enumerate}

    ]], { i(1) }), { condition = in_text * line_begin }),

    s("enmr", fmta([[
    \begin{enumerate}[label=(\roman*)]
        <>
    \end{enumerate}

    ]], { i(1) }), { condition = in_text * line_begin }),

    s("enma", fmta([[
    \begin{enumerate}[label=(\alph*)]
        <>
    \end{enumerate}

    ]], { i(1) }), { condition = in_text * line_begin }),

    -- Figure and Table
    s("fig", fmta([[
    \begin{figure}
        \centering
        <>
        \caption{<>}
        \label{fig:<>}
    \end{figure}

    ]], {
        i(1, "% Figure code here"),
        i(2, "Caption"),
        i(3, "new-figure"),
    }), { condition = line_begin * in_text }),

    s("tab", fmta([[
    \begin{table}
        \centering
        <>
        \caption{<>}
        \label{tab:<>}
    \end{table}

    ]], {
        i(1, "% Table code here"),
        i(2, "Caption"),
        i(3, "new-table"),
    }), { condition = line_begin * in_text }),
}
