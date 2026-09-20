# Functional Language Bank

Consult this only after the argument is settled. The entries illustrate
rhetorical functions; adapt their grammar to the scientific relation instead of
filling slots or imitating a verbal signature. Repetition limits depend on
section length, but avoid conspicuous reuse.

For rules governing where and why these expressions are used, read
[style-and-discourse.md](style-and-discourse.md). This file is a quick lexical
lookup, not the primary style specification.

## Task And Scope

- `X aims to infer / identify / predict ...`
- `X seeks to predict ... by leveraging ...`
- `In general, X aims to ...` (older papers: `Generally, X aims at ...`)
- `This paper focuses on ... , a practical task that ...`
- `Here, we use the term X to generally denote ...`
- `Formally, given ..., the goal is to ...`

## Prior Art

- `Existing methods typically ...`
- `Most existing studies follow a ... paradigm`
- `They can be grouped by whether they ...`
- `Existing approaches differ mainly in how they ...`
- `The first group ..., namely ..., ...`
- `Another group of methods, namely ..., ...`
- `Despite their success, they mostly focus on ..., neglecting ...`
- `We argue that such ... may be suboptimal due to ...`
- `This issue would be exacerbated when ...`

## Gap And Challenge

- `Although the task is practical, it remains underexplored.`
- `A core challenge lies in ...`
- `However, a pivotal challenge still remains:`
- `there are still two vital challenges requiring further designs:`
- `To the best of our knowledge, few studies ...`

## Insight And Proposal

- `To this end, we propose METHOD, a ... framework.`
- `To address the above issues, we propose ..., termed METHOD.`
- `Our key insight is to treat ... as ...`
- `Following the above idea, we propose METHOD.`
- `To achieve the above idea, we propose METHOD, namely ...`
- `Unlike previous studies that regard ... as ..., we ...`

## Mechanism

- `Particularly / Specifically / In particular, ...`
- `Intuitively, ... Formally, ...`
- `We first ... and then ...`
- `We devise ... to ...`
- `We further devise / introduce ...`
- `Following previous studies [refs], we adopt ... as ...`
- `For implementation, we ...`
- `conditioned on ...`
- `In this design, ...`
- `Note that ..., which differs from [cited design] in ...`
- `For simplicity, we omit ...`
- `As such, ...`
- `This naturally ...`

## Evidence

- `Experiments across [evaluation scope] show / suggest ...`
- `Empirical results demonstrate the effectiveness of ...`
- `with sustained gains in low-resource / overlapping / noisy settings`
- `The best result is bold-faced and the runner-up is underlined.`
- `From Table X, we can observe that: (1) ... (2) ... (3) ...`
- `The gains are more pronounced when ...`
- `The reason might be that ...` / `We assume that ...` (one anomaly, one sentence)
- `w/o X` (component removed), `repl. X` (component replaced by the
  conventional alternative)
- `Impact of X` / `Analysis on X` (analysis subsection titles)

## Contribution Openers

- `Our major contributions can be summarized as follows:`
- `The contributions of this paper are three-fold:`
- `We systematically investigate ... and categorize them into ...`
- `We propose [METHOD], which ...`
- `We technically devise ... to ...`

## Conclusion

- `This paper addresses ...`
- `To this end, we propose METHOD ...`
- `Experiments on ... indicate ... , especially in ...`
- `Our future work will ...`

## Words To Prefer

Choose verbs by operation: `impose`, `preserve`, `suppress`, `refine`, `fuse`,
`transfer`, `condition`, `decompose`, `align`, `estimate`, `regularize`.

Use property adjectives such as `unbiased`, `sufficient`, `minimal`, `robust`, or
`causal` only when they have an explicit definition and supporting argument.

`leverage` is allowed, but do not use it twice in one paragraph.

## Words To Avoid

| Avoid | Use instead |
| --- | --- |
| `In our knowledge` | `To the best of our knowledge` |
| `effectiveness performance` | `effectiveness` or the metric name |
| `delve into` / `tapestry` / `landscape` / `underscore` | ordinary academic verbs |
| `significantly` without a statistical test | report the difference or use a non-statistical description |
| `pioneerly` / `innovatively` | state the concrete novelty instead |
| `we merely` / `a simple extension` | state the scientific reason |
| repeated `In recent years` openers | at most once in the paper |

## Hedging

Critique others with `can` / `may` / `risks` / `potentially`.
State author actions directly: `we propose` / `we define` / `we evaluate`.
Calibrate scientific outcomes to evidence rather than hedging or strengthening
them for style.
Do not weaken the method into `might perhaps help`.
