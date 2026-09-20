# Section-Level Writing Moves

Use this guide for drafting sections or planning a full manuscript. These are
rhetorical functions, not mandatory paragraph counts or fill-in templates.

## Title

Make the searchable task and differentiating mechanism visible. A method-name
prefix is useful only when the acronym is pronounceable, stable, and used in the
paper. Prefer `METHOD: Distinguishing Mechanism for Task`, `Task via
Distinguishing Mechanism`, or `Property-Aware Task under Setting`. Avoid claiming
novelty, superiority, or generality in the title unless the scope supports it.

## Abstract

An abstract normally needs these moves, compressed or merged as necessary:

1. **Task and relevance:** define the task operationally, not through broad field
   enthusiasm.
2. **Setting:** identify the specific regime addressed when it matters.
3. **Prior approach and limitation:** name the dominant mechanism and the
   concrete consequence of its limitation.
4. **Method and insight:** introduce the method and the principle that makes it
   responsive to the limitation.
5. **Mechanism:** state only the components needed to understand the claimed
   advance.
6. **Evidence:** report evaluation scope and the main supported conclusion;
   include numbers only when supplied and informative.

The task-gap-method-evidence order is a strong default, but a mature field may
open with the unresolved problem and a methods paper may foreground the new
formulation. Do not turn the abstract into an introduction, module inventory, or
leaderboard. Every abstract claim must be recoverable in the body.

## Introduction

Select the moves that the paper needs: establish the task and setting; make the
difficulty observable; organize the nearest prior solutions; derive the gap and
root cause; present the insight; preview the method; state contributions.

Reach the research task quickly. Define inputs, outputs, and practical setting
at the level needed to understand the problem. Mention applications only when
they explain why the setting matters.

Use a figure, example, statistic, or concise scenario when it exposes a failure
that abstract prose cannot. The example must be drawable, technically faithful,
and reused later in the motivation. Define unfamiliar terms at first use. When
the paper's premise is that a condition is common, quantify it on the actual
benchmark (the share of sentences, pairs, or types affected) or report a small
pilot experiment showing that current methods degrade under it; several corpus
papers do this and it is the strongest form of motivation. A paradigm schematic
that places the existing paradigm(s) beside the proposed one is a common
companion figure when the contribution is a change of paradigm rather than a
new module.

Create a mechanism-based taxonomy only when it clarifies the gap. For each
group, state its shared idea, acknowledge what it handles well, and identify the
specific information or condition it misses. Avoid chronological catalogs.

Separate the **symptom** (observed error or blind spot), **cause** (representation,
objective, assumption, or data process), and **failure condition** (where the
issue should become pronounced). The cause should imply a desired solution
property. Hedge when the cause has not been directly established.

Explain the conceptual change before listing architecture: a decomposition,
conditioning relation, information criterion, causal view, optimization target,
or structural prior. An analogy is optional and should reduce cognitive load.
Where the problem genuinely splits into two or three parallel axes (kinds of
information, correlation, or failure), name them here with fixed labels; the
Method, contributions, and ablations will reuse them (see the style guide on
parallel axes). Then pivot explicitly from idea to instantiation (`To achieve
the above idea, we propose METHOD` / `Following the above idea, ...`), name the
method once, introduce components in dependency order, and connect each to one
stated need.

The corpus default is three bullets in a fixed order: (1) the perspective,
formulation, or finding, often with a bounded first-to claim (`To our
knowledge, we are the first to ...`); (2) the framework and its named
components, each tied to one axis of the problem; (3) the empirical evidence,
stating the evaluation scope and the diagnostic finding (`... on 14 KGs in 3
benchmarks, with sustained gains in low-resource settings`). Keep the evidence
bullet, but make it carry scope and a specific finding rather than “extensive
experiments” alone. Merge overlapping contributions and never split one idea
to reach three; a fourth bullet is justified only by a separate result such
as a theorem, not by listing components apart from the framework. Each bullet should answer what is new, why it matters, and where it is
substantiated. Do not count paper organization or routine implementation as a
contribution.

## Background and Preliminaries

Include only concepts and notation used later. Define the problem with inputs,
outputs, assumptions, and evaluation target. When the method rests on a borrowed
formal tool, the corpus default is a two-part Preliminaries: a task formulation
that opens with `Formally, given ...` and fixes the symbols the Method will
reuse, followed by the tool (information bottleneck, optimal transport, causal
effects, a differential equation, diffusion) presented in its general form with
the role it will play, so that the Method only has to specialize it. Do not
reproduce a textbook survey. Use a notation table only when symbol density
justifies it.

## Related Work

Group by research question, assumption, representation, or mechanism. Within a
group, synthesize similarities and meaningful differences instead of assigning
one sentence per citation. End each subsection with the unresolved issue relevant
to this paper, then state the paper's contrast narrowly (`In contrast, ...`,
`Unlike ..., we ...`, `Distinct from ..., our ...`).

The corpus default has two parts. The first covers the task's own literature,
grouped into the paradigms the Introduction named, and closes on the shared
gap. A common second part covers either the borrowed technique in its home
fields or the same problem in neighboring tasks, and closes by stating why none
of it transfers directly and what this paper is the first to bring to the task.
That second part is where a bounded first-to claim belongs, if anywhere.

Keep Introduction and Related Work complementary: the Introduction contains only
the closest work required to derive the gap; Related Work provides coverage and
technical differentiation. Do not claim “few studies” or “first” without a
literature basis.

## Method

In the overview, restate the design goal, define inputs and outputs, and give an
information-flow roadmap whose order matches the section and figure.

For each substantive component, explain:

1. the problem it addresses;
2. the design principle or desired property;
3. the mechanism and its inputs/outputs;
4. the equation, algorithm, or operation;
5. why that operation can provide the desired property;
6. how it connects to the next component.

Open each component subsection by restating the local limitation it answers, in
the same axis labels the Introduction used, then the design. Before an equation,
state its scientific role, typically with `Formally, ...` after an intuitive
sentence. After it, define every new symbol and interpret the operation.
Dimensions, normalization, signs, ranges, and optimization direction should be
recoverable when non-obvious. Use `Note that ...` for scoping caveats and for
the one-sentence difference from a cited design that the component adapts.

Name modules and losses by function rather than fashionable adjectives. Put the
joint objective after its terms have been motivated. Distinguish train-time and
inference-time behavior and state computational implications when relevant.

## Experiments

Design the narrative around claims, not table order.

- **Protocol:** report data provenance, splits and leakage controls, baseline
  selection, metrics, tuning, seeds, hardware when relevant, and whether baseline
  numbers are reproduced, rerun, or cited.
- **Main comparison:** report robust patterns before isolated numbers and explain
  how they align or conflict with the proposed mechanism. The corpus often
  writes this as an enumerated observation list (`We can observe that: (1) ...
  (2) ...`), one item per pattern with its reason.
- **Diagnostic evaluation:** test the condition where the claimed limitation
  should matter, such as scarcity, noise, overlap, long tails, modality imbalance,
  domain shift, or scale. Use only a task-appropriate condition.
- **Ablation and alternatives:** map each controlled removal or replacement to a
  component and claim, and keep the two kinds distinct in naming: `w/o X`
  removes a component, `repl. X` replaces it with the conventional alternative
  it was designed to improve on. Test interactions where necessary.
- **Further analysis:** the corpus default is a block of `Impact of X` /
  `Analysis on X` subsections: hyper-parameter sensitivity (present in most
  papers), behavior as the diagnostic variable changes, and, when the claims
  call for them, efficiency or complexity, a case study, or an error analysis.
  Discuss anomalous results and label speculative explanations.

Avoid treating rank alone as explanation or inferring necessity from one noisy
ablation drop.

## Limitations, Ethics, and Broader Impact

Follow venue expectations and the actual risk profile. State scope boundaries,
assumptions, failure cases, resource costs, data or privacy concerns, and likely
misuse when relevant. Do not use generic disclaimers.

## Conclusion

Reconstruct the paper at higher compression: task and setting, identified
limitation, core insight and mechanism, and supported evidence. Add no new result,
baseline, claim, or citation. Future work is optional; connect it to a concrete
limitation rather than a generic promise.
