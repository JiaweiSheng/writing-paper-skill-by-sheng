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
and reused later in the motivation. Define unfamiliar terms at first use.

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
Then name the method once, introduce components in dependency order, and connect
each to one stated need.

Usually contributions cover a problem/formulation or finding, a method/mechanism,
and evidence. Merge overlapping contributions. Each bullet should answer what is
new, why it matters, and where it is substantiated. Do not count paper
organization, routine implementation, or “extensive experiments” alone as a
scientific contribution.

## Background and Preliminaries

Include only concepts and notation used later. Define the problem with inputs,
outputs, assumptions, and evaluation target. For borrowed theory, explain the
specific role it will play; do not reproduce a textbook survey. Use a notation
table only when symbol density justifies it.

## Related Work

Group by research question, assumption, representation, or mechanism. Within a
group, synthesize similarities and meaningful differences instead of assigning
one sentence per citation. End each subsection with the unresolved issue relevant
to this paper, then state the paper's contrast narrowly.

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

Before an equation, state its scientific role. After it, define every new symbol
and interpret the operation. Dimensions, normalization, signs, ranges, and
optimization direction should be recoverable when non-obvious.

Name modules and losses by function rather than fashionable adjectives. Put the
joint objective after its terms have been motivated. Distinguish train-time and
inference-time behavior and state computational implications when relevant.

## Experiments

Design the narrative around claims, not table order.

- **Protocol:** report data provenance, splits and leakage controls, baseline
  selection, metrics, tuning, seeds, hardware when relevant, and whether baseline
  numbers are reproduced, rerun, or cited.
- **Main comparison:** report robust patterns before isolated numbers and explain
  how they align or conflict with the proposed mechanism.
- **Diagnostic evaluation:** test the condition where the claimed limitation
  should matter, such as scarcity, noise, overlap, long tails, modality imbalance,
  domain shift, or scale. Use only a task-appropriate condition.
- **Ablation and alternatives:** map each controlled removal or replacement to a
  component and claim. Test interactions where necessary.
- **Further analysis:** add uncertainty, sensitivity, complexity, runtime, memory,
  cases, or errors according to the claims. Discuss anomalous results and label
  speculative explanations.

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
