# Expression Style and Discourse Architecture

Use this reference whenever the user asks to write in Sheng's style or needs
sentence-, paragraph-, or manuscript-level generation. It distills recurring
tendencies from the reference corpus without copying source sentences.

## 1. Overall Language Character

The prose is formal, compact, and mechanism-centered. Its distinctive quality
does not come from ornate vocabulary; it comes from making logical relations
explicit. A typical passage repeatedly answers four questions:

```text
What does the task/method do?
What remains difficult?
Why does the current mechanism create that difficulty?
What design directly addresses that cause?
```

Prefer moderate sentence length with one main proposition and one supporting
relation. Use a longer sentence when a relative, causal, or conditional clause
is necessary to bind mechanism and consequence. Break a sentence when it tries
to contain background, criticism, proposal, and evidence at once.

The tone is confident about author actions (`we propose`, `we formulate`, `we
derive`) and calibrated about interpretation (`may discard`, `can introduce`,
`suggests that`). Avoid both promotional enthusiasm and excessive hesitation.

## 2. Preferred Scientific Subjects and Verbs

Choose a concrete scientific object as the grammatical subject. Preferred
subject types include:

- **Task or setting:** `Multi-domain completion aims to ...`; `The low-resource
  setting requires ...`.
- **Existing paradigm:** `Alignment-based methods transfer ...`; `A shared
  encoder treats ...`.
- **Limitation or signal:** `This coupling can suppress ...`; `Domain-specific
  evidence remains ...`.
- **Method or component:** `The conditional encoder extracts ...`; `The
  constraint preserves ...`.
- **Evidence:** `Table 2 shows ...`; `The larger gain under sparse supervision
  suggests ...`.
- **Authors:** use `we` for research decisions, derivations, designs, and
  observations, not for facts independent of the authors.

### Verb families by rhetorical function

Use verbs that expose the operation or relationship.

| Function | Preferred verbs | Use carefully |
| --- | --- | --- |
| Define a task | aim to, seek to, formulate, identify, predict, infer | solve, tackle |
| Use information | exploit, incorporate, condition on, integrate, aggregate | leverage repeatedly |
| Represent structure | capture, encode, characterize, disentangle, decompose | understand |
| Transform information | propagate, transfer, refine, fuse, align, reconstruct | process |
| Control information | preserve, suppress, filter, constrain, regularize, calibrate | guarantee |
| Create a method | propose, devise, design, introduce, develop | invent, pioneer |
| Explain an effect | lead to, result in, impede, exacerbate, alleviate, mitigate | prove unless formal |
| Report evidence | show, indicate, suggest, yield, outperform | demonstrate for weak evidence |

Do not replace precise verbs with fashionable ones for variety. In particular,
use `unbiased`, `causal`, `minimal`, `sufficient`, `optimal`, `robust`, and
`generalizable` only when defined and supported.

### Noun and adjective tendencies

Favor nouns that encode a technical role: `representation`, `correlation`,
`dependency`, `constraint`, `objective`, `signal`, `interaction`, `distribution`,
`condition`, `property`, `view`, and `mechanism`. Functional modifiers such as
`domain-specific`, `type-level`, `instance-level`, `structure-aware`,
`noise-resistant`, and `low-resource` are useful when they distinguish a real
axis. Avoid chains of three or more modifiers unless they form an established
method name.

Avoid generic praise such as `powerful`, `promising`, `remarkable`, `excellent`,
`superior`, or `groundbreaking`. Replace it with the property, comparison, or
measured behavior that matters.

## 3. Connectives as Logical Operators

Choose a connective only after identifying the logical relation. Do not rotate
connectives merely to create variety.

Across the source corpus, the most recurrent families are problem contrast
(`However`), mechanism elaboration (`Specifically`), inference (`Thus` and
`Therefore`), method introduction (`To this end`, `To address ...`, `we
propose`), and operation/result linkage (`In this way`). Addition markers
(`Besides`, `Moreover`, `Furthermore`) also recur but are more sensitive to
venue and coauthor style. Treat this as a relative profile, not a quota.

### Task or scope transition

- `Generally, ...` gives an operational task definition after brief context.
- `In this paper, we focus on ...` narrows from the broad task to the studied
  setting.
- `Here, ... denotes ...` defines a local term without interrupting the flow.

Use these near the start of an Introduction or problem formulation, not in every
section.

### Contrast and unresolved difficulty

- `However, ...` introduces a direct obstacle, exception, or remaining problem.
- `Despite these advances/successes, ...` first concedes progress, then isolates
  a shared limitation.
- `Nevertheless, ...` preserves a preceding claim while introducing a
  qualification; use more sparingly than `However`.
- `In contrast, ...` marks a genuine mechanism-level comparison, often at the
  end of Related Work.
- `Unlike ... , we ...` is appropriate only when the compared assumptions are
  accurately stated and commensurable.

Avoid beginning several consecutive paragraphs with `However`. If the paragraph
already contains an explicit contrast (`whereas`, `rather than`, `while`), an
additional contrast marker may be unnecessary.

### Problem-to-solution pivot

- `To this end, we propose ...` moves from a clearly established goal or problem
  to the overall method.
- `To address this issue/challenge, we devise ...` maps one local problem to one
  component.
- `Motivated by this observation, we ...` requires an actual preceding empirical
  or conceptual observation.
- `Following this idea, we ...` converts a stated insight into a design.

Do not use `To this end` before the “end” is visible. Do not use all four forms in
one short section.

### Mechanism elaboration and sequence

- `Specifically, ...` expands an abstract method statement into concrete steps.
- `Particularly, ...` highlights the most important mechanism or condition.
- `First / Then / Subsequently / Finally` marks a real dependency or execution
  sequence.
- `Meanwhile, ...` indicates concurrent or complementary behavior, not generic
  addition.
- `Besides / In addition / Furthermore / Moreover` adds a distinct component or
  argument. Prefer `In addition` in neutral prose; retain `Besides` only when the
  surrounding style supports it.

Use `Specifically` once to open a mechanism block, then let scientific subjects
carry subsequent sentences. Avoid starting every module sentence with a
connective.

### Cause, consequence, and interpretation

- `Because / Since ...` states an explicit reason; use `since` only when it
  cannot be misread temporally.
- `Therefore / Thus, ...` states a conclusion licensed by the previous reasoning.
- `Consequently, ...` emphasizes an observed or expected consequence.
- `In this way, ...` explains the property produced by the preceding mechanism.
- `As a result, ...` links an operation or condition to an outcome.

Use `Therefore` or `Thus` only for a real inference. `In this way` should point to
a just-described operation, not vaguely summarize a paragraph.

### Evidence and qualification

- `As shown in Figure/Table ...` directs attention to visible evidence; state the
  pattern after the reference.
- `The results indicate/suggest that ...` introduces an interpretation
  proportional to the design.
- `Notably, ...` foregrounds an important, non-obvious result; use rarely.
- `Especially/particularly under ...` narrows a claim to a diagnostic condition.

## 4. Recurring Sentence Patterns

The patterns below represent grammatical relations, not text templates. Vary
surface form and use only when the relation is true.

### Task definition

```text
[Task] aims to [predict/infer/identify output] from [input] under [setting].
Given [inputs], the goal is to [operation and evaluation unit].
```

Use one operational definition. Avoid following it with a synonymous definition.

### Fair prior-art summary

```text
Existing methods typically [shared mechanism], enabling them to [strength].
One line of work [mechanism A], whereas another [mechanism B].
```

Name the grouping dimension. Do not write “methods can be divided into two
groups” unless the next sentences define a defensible and useful partition.

### Concession plus bounded criticism

```text
Despite their effectiveness in [handled setting], these methods generally
[assumption/operation], which may [mechanistic consequence] when [condition].
Although [approach] captures [information], it does not explicitly model
[missing relation], limiting [specific ability].
```

Critique the mechanism, not the authors. Pair the limitation with its failure
condition rather than claiming universal failure.

### Root-cause statement

```text
We attribute this issue to [representation/objective/assumption], which
[explanation of how the symptom arises].
This limitation arises because [mechanism], causing [specific information loss
or optimization behavior].
```

Use `attribute` only for a reasoned interpretation and `show` only when evidence
directly tests the cause.

### Insight and desired property

```text
Our key insight is that [scientific relation], suggesting that a solution should
[desired property].
Rather than [old operation], the task can be viewed as [new formulation], which
allows [benefit tied to the gap].
```

The insight should be more abstract than a module list and concrete enough to
derive the architecture.

### Method introduction

```text
To this end, we propose [METHOD], which [core mechanism] to [desired outcome].
[METHOD] consists of [only the major components], each addressing [mapped need].
```

Expand the acronym once. Prefer `termed METHOD`, `called METHOD`, or direct
apposition; avoid the unidiomatic `termed as METHOD`.

### Component rationale and operation

```text
To preserve [information/property], we devise [COMPONENT] that [operation].
Given [input], [COMPONENT] first [operation]; it then [dependent operation],
yielding [output and role].
```

Use purpose before implementation. End with the property or output needed by the
next component.

### Equation introduction and interpretation

```text
We quantify [scientific relation] using [quantity/objective]:
[equation]
where [symbols]. A larger/smaller [quantity] indicates [interpretation], allowing
the model to [role].
```

Never leave a displayed equation without a prose role, symbol definitions, and
an interpretation of its direction.

### Result plus mechanism interpretation

```text
[METHOD] improves [metric] over [comparison scope] on [scope]. The gain is more
pronounced under [diagnostic condition], supporting the role of [mechanism] in
[bounded conclusion].
Removing [component] mainly degrades [specific setting/metric], suggesting that
it contributes to [claimed property] rather than serving as a generic add-on.
```

Report the pattern, then the representative number, then the interpretation.
Avoid converting one ablation drop into proof of necessity.

## 5. Sentence Rhythm and Local Cohesion

Build sentences around old-to-new information flow:

1. Begin with the object already active in the previous sentence.
2. State what happens to that object.
3. Place the new or contrastive information near the end.
4. Use that ending as the subject or topic of the next sentence.

Example progression:

```text
Existing methods fuse all source representations into one shared embedding.
This shared embedding can obscure source-specific evidence under domain shift.
Such evidence is precisely what the target domain needs for sparse relations.
We therefore preserve it through a source-conditioned constraint.
```

Use demonstratives (`this design`, `this limitation`, `such representations`)
only when the antecedent is singular and unmistakable. Replace vague `this`
with the scientific noun when two antecedents are possible.

Prefer parallel grammar for comparable components, settings, or findings. Do not
force three-item lists merely for rhetorical polish.

## 6. Paragraph Architecture

Each paragraph should perform one dominant move. Common architectures are:

### Context-to-task paragraph

```text
research object/application -> practical deficiency -> target task -> operational
definition -> studied setting
```

Keep broad context to one or two sentences. The paragraph should land on the
paper's task, not end with generic importance.

### Prior-art-to-gap paragraph

```text
shared prior mechanism -> acknowledged strength -> missing information/assumption
-> mechanistic consequence -> failure condition -> transition to desired property
```

This controlled concession is central to the style. Do not attack prior work
before explaining what it was designed to accomplish.

### Example-driven paragraph

```text
orient the reader to a figure -> walk through relevant entities/events/signals
-> expose contrast or failure -> define terms in place -> extract the general
lesson
```

The paragraph must end above the example level, with the principle the method
will address.

### Method-component paragraph

```text
local challenge -> purpose of component -> operation/equation -> resulting
property -> interface to next component
```

If a component requires several equations, use multiple paragraphs: motivation
and setup, formulation, then interpretation or training details.

### Results paragraph

```text
question/comparison scope -> overall pattern -> representative evidence ->
mechanism-based interpretation -> exception or boundary
```

Do not enumerate every table cell. Select results that answer the research
question and discuss anomalies when they affect the claim.

### Paragraph linkage

Adjacent paragraphs should connect through a shared concept, not only a generic
transition word. A strong sequence often uses:

```text
Paragraph A ends with neglected information.
Paragraph B begins with why recovering that information is difficult.
Paragraph B ends with a required property.
Paragraph C begins with the component that provides that property.
```

## 7. Whole-Paper Discourse Structure

The default article-level story is a widening and narrowing sequence:

```text
Abstract: compressed claim chain
Introduction: task -> visible difficulty -> closest paradigms -> root cause
              -> insight -> method preview -> contributions
Background: only concepts required to formalize the insight
Related Work: broader mechanism-based positioning
Method: desired properties -> components -> joint objective/inference
Experiments: protocol -> overall effectiveness -> diagnostic conditions
             -> component evidence -> robustness/efficiency/errors
Conclusion: bounded reconstruction of the supported claim chain
```

This is a default topology, not a mandatory section order. Adapt it to the venue
and paper type while preserving dependencies: a term precedes its use, a gap
precedes its solution, a component precedes its ablation, and evidence precedes
the strongest conclusion.

### Narrative recurrence without repetition

Carry the same conceptual spine through the paper at different resolutions:

- Abstract names the task, cause, mechanism, and result in compressed form.
- Introduction explains why the cause matters and why the mechanism is apt.
- Method operationalizes the mechanism.
- Experiments test the predicted behavior of that mechanism.
- Conclusion reports only the interpretation supported by those tests.

Reuse canonical terms but not whole sentences. Each recurrence must add a new
function: define, motivate, formalize, test, or delimit.

### Information pacing

- Introduce at most the component names needed for the current argument.
- Delay implementation details until the reader knows their purpose.
- Place the most important contrast near the end of a motivation paragraph.
- Place the central method name near the beginning of the solution paragraph.
- In results, lead with the answer to the research question, not table metadata.
- End sections with the output or conclusion needed by the next section.

## 8. Controlled Variation

To preserve a recognizable style without mechanical repetition:

- Reuse technical terms exactly; vary only connective surface forms when the
  logical relation remains unchanged.
- Use one strong problem-to-solution pivot per argument level.
- Alternate sentence openings among scientific objects, author actions, and
  evidence references rather than among arbitrary adverbs.
- Prefer implicit cohesion when the relation is obvious; explicit connectives
  are for genuine shifts, causes, consequences, and sequences.
- Do not force favorite words such as `devise`, `particularly`, `besides`, or
  `to this end` into every section.

## 9. Style Failure Modes

Reject or revise prose with these symptoms:

- broad `In recent years` openings that delay the task;
- repeated `However/Furthermore/Specifically` paragraph starts;
- a list of modules before the gap and design principle are clear;
- criticism stated as `fails/cannot` without scope or mechanism;
- several near-synonyms for the same object;
- stacked adjectives and novelty claims instead of operations;
- `This` or `It` with an ambiguous antecedent;
- long sentences joined only by `and`, containing multiple argument moves;
- paragraphs that end on implementation detail rather than scientific meaning;
- result paragraphs that paraphrase tables without answering why the pattern
  matters;
- abstracts that spend most of their space naming components or numbers;
- conclusions that introduce a new motivation, method detail, or experiment.

## 10. Style Pass Before Delivery

Check the prose in this order:

1. Every paragraph has one dominant rhetorical job.
2. Every contrast names the comparison dimension and scope.
3. Every causal connective is licensed by the reasoning or evidence.
4. Every component sentence links purpose, operation, and property.
5. Connectives express real relations and are not repeated mechanically.
6. Canonical terms remain stable across sections.
7. Claims use verbs proportional to their support.
8. Sentence endings carry the information that drives the next sentence.
9. Generic praise, vague pronouns, and empty metadiscourse are removed.
10. The result sounds like one coherent scientific argument, not assembled
    phrases from a bank.
