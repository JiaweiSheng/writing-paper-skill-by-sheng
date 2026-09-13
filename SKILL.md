---
name: writing-paper-skill-by-sheng
description: >-
  Drafts and revises evidence-grounded English computer-science research papers
  using Jiawei Sheng's problem-mechanism-evidence style. Use for abstracts,
  introductions, related work, methods, experiments, conclusions, full-paper
  consistency, and reviewer-oriented revision, especially in AI, NLP, IR,
  knowledge graphs, recommendation, graph learning, and multimodal learning.
  Use for 写论文, 润色论文, 按我的风格写, paper writing, or writing-paper-skill-by-sheng.
  Do not use for scientific peer review, literature discovery, citation
  verification, or submission-format auditing as the primary task.
license: MIT
compatibility: Any agent that supports Agent Skills, including Cursor, Codex, and Claude Code.
metadata:
  version: "1.0.0"
  author: JiaweiSheng
  short-description: Draft rigorous CS papers in Sheng's evidence-driven style
---

# Writing Paper by Sheng

Write a paper whose claims form a traceable chain:

```text
task and setting -> observed limitation -> causal mechanism -> design principle
-> named method components -> evidence that tests each claim
```

The reference papers provide writing moves, not reusable content. Never copy
their sentences, entity examples, analogies, numbers, citations, or claims.
Preserve the user's technical meaning and preferred terminology over stylistic
imitation.

## Route the Request

First identify the task mode and load only the needed guidance:

- Style imitation or prose generation: read
  [style-and-discourse.md](style-and-discourse.md) for vocabulary, connectives,
  sentence patterns, paragraph logic, and whole-paper rhythm.
- Section or full-paper drafting: read [section-moves.md](section-moves.md).
- Rewriting, polishing, shortening, or responding to feedback: read
  [revision-workflow.md](revision-workflow.md).
- Claim, evidence, terminology, or cross-section consistency work: read
  [evidence-and-consistency.md](evidence-and-consistency.md).
- Sentence-level wording: consult [phrase-bank.md](phrase-bank.md) after the
  argument is sound; do not compose by stitching phrases together.
- Style calibration or examples: consult [examples.md](examples.md).
- Provenance and confidence of learned tendencies: consult
  [sources.md](sources.md).

For a small passage, load only the directly relevant file. When the user
explicitly requests Sheng's expression style, always load the style/discourse
guide. For a full draft or substantial revision, use the style and section guides
plus evidence/consistency guidance.

## Establish the Writing Contract

Infer these from the user's materials when possible; ask only if a missing item
would materially change the text:

- deliverable and target length;
- venue or audience, if known;
- task, setting, inputs, outputs, and evaluation unit;
- central gap and why it arises;
- method name, component names, and intended insight;
- available evidence: verified facts, supplied results, planned experiments,
  citations, and unknowns;
- revision freedom: polish only, restructure, or substantive rewrite.

If no venue is given, write neutral conference prose and avoid venue-specific
format claims. If the user supplies text, preserve all supported technical claims
unless asked to reconsider them.

## Core Decisions

### Build the argument before styling it

Summarize the paper internally in six fields: **task, setting, gap, cause,
insight, evidence**. If gap and cause are conflated, separate the observed
failure from the mechanism hypothesized to produce it. Introduce the method only
after the reader can see why its design is necessary.

Use this diagnostic chain for every major claim:

```text
What is difficult? -> Why do existing mechanisms produce it?
-> What property should a solution have? -> Which component creates it?
-> Which experiment could falsify or support that claim?
```

Do not force a causal explanation when the work establishes only an empirical
association. Match causal language to the actual design and evidence.

### Adapt recurring moves instead of enforcing a template

The following are characteristic defaults, not universal requirements:

- A concrete example or figure is useful when the task, failure mode, or method
  interaction is hard to understand. Omit it when it adds no explanatory value.
- Group prior work by mechanism when genuine paradigms exist. Use two groups
  only when the literature naturally supports two; otherwise use the smallest
  defensible taxonomy.
- Emphasize a hard or diagnostic setting when it tests the central mechanism.
  Do not manufacture a hard setting merely to match the style.
- A compact abstract often needs 6-8 rhetorical moves, but sentence count and
  ordering depend on venue, length, and technical complexity.
- Contribution count follows real contributions, usually 2-4. Never split one
  idea into artificial bullets.

### Keep claims proportional to evidence

- Never invent citations, results, dataset statistics, significance, complexity,
  ablations, or implementation details.
- Mark unavailable content explicitly with a useful placeholder such as
  `[RESULT NEEDED: metric, dataset, comparison]`, `[CITATION NEEDED]`, or
  `[VERIFY: causal interpretation]`.
- Distinguish demonstrated, suggested, and intended properties. Use
  `demonstrates` for direct evidence, `suggests` for indirect evidence, and
  `is designed to` when no result is yet available.
- Reserve `significant` for a reported statistical test; otherwise state the
  measured difference or use `substantial` only when defensible.
- Novelty is comparative. State what differs in formulation or mechanism and
  relative to which prior paradigm; avoid unsupported first/only claims.

## Style Profile

Aim for formal, compact, mechanism-centered prose. Each paragraph should have
one main job and a visible progression, commonly:

```text
claim or question -> mechanism/reason -> consequence/evidence -> transition
```

Prefer concrete scientific subjects: the task, data, representation, module,
constraint, or result. Use `we` for author choices and contributions. Use `this
paper` sparingly. Define a term once, keep one label for it, and avoid swapping
near-synonyms for variety.

Characteristic moves include task-first openings, fair prior-art contrast,
named mechanisms, motivation before equations, and results interpreted through
the paper's claimed mechanism. They should remain natural rather than become
verbal signatures repeated in every paragraph.

The recognizable rhythm is **controlled contrast followed by constructive
resolution**: establish what existing methods achieve, isolate what remains,
explain why it remains, and then introduce the smallest design needed to resolve
it. See [style-and-discourse.md](style-and-discourse.md) for the detailed language
and structural profile.

Avoid promotional language, empty difficulty claims, citation laundry lists,
equation dumps, results without interpretation, and generic transitions. Do not
inherit grammatical slips or obsolete conventions from source papers.

## Venue and Domain Adaptation

Treat venue conventions as current user-provided constraints, not timeless
facts. When exact formatting, anonymity, page limits, or required sections
matter, verify them outside this skill.

- NLP-style papers often place Related Work early and benefit from precise task
  definitions, dataset conditions, and error categories.
- Web/IR/recommendation papers often foreground system setting, comparison
  paradigms, research questions, and behavior under sparsity or distribution
  shift.
- General AI papers often need tighter motivation and explicit definitions or
  objectives, but should not add formalism that serves no reasoning role.
- Short papers should preserve the claim chain while compressing background,
  taxonomies, and secondary analyses.
- Outside the source domains, retain the argument principles but adopt the
  target field's terminology, evidence norms, and section conventions. Do not
  import KG-specific examples or benchmark assumptions.

## Output Behavior

- If asked to draft, return publication-ready prose plus only essential
  placeholders or assumptions.
- If asked to revise, return the revised text first. Briefly list material
  changes only when useful or requested.
- If the source is ambiguous, preserve meaning and flag the ambiguity instead
  of silently resolving it.
- If the requested claim exceeds the evidence, provide the strongest supported
  wording and identify what evidence would justify the stronger version.
- Match LaTeX, Markdown, or plain-text conventions already used by the user.
- Preserve citations and labels exactly unless citation work is explicitly in
  scope.

## Final Quality Gate

Before delivery, check:

1. Can a reader identify task, setting, gap, cause, insight, and evidence?
2. Does every method component answer a previously stated need?
3. Does every central contribution have a corresponding evaluation or an
   explicit evidence placeholder?
4. Are claims no stronger than the supplied results and study design?
5. Are terms, acronyms, symbols, module names, dataset names, and metrics stable?
6. Do Abstract, Introduction, Method, Experiments, and Conclusion tell the same
   story without copying one another?
7. Is prior work described accurately and respectfully, without straw-manning?
8. Does each paragraph perform one main rhetorical function?
9. Have unsupported superlatives, vague intensifiers, and copied source details
   been removed?
10. Does the text fit the requested venue, length, format, and degree of rewrite?
