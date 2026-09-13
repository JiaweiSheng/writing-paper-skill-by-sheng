# Evidence and Cross-Section Consistency

Use this guide for full-paper drafting, claim audits during writing, and revisions
that touch more than one section.

## Build a Claim Ledger

Track each central claim with its exact wording, scope, proposed mechanism,
supporting table/figure/theorem/citation, evidence strength, and locations across
the paper. Use the ledger internally unless the user asks to see it. Downgrade or
flag unsupported claims. Method description establishes design intent, not
empirical effectiveness.

For every stated limitation, seek a complete map:

```text
limitation -> desired property -> component/objective -> expected behavior
-> experiment or analysis -> bounded conclusion
```

Not every component needs a separate experiment if it cannot be isolated, but
the paper should explain why and use an appropriate combined comparison.

## Control Claim Strength

- `outperforms` requires a defined comparison and supplied results.
- `consistently` requires the pattern across the declared scope.
- `robust` requires explicit perturbation, shift, or sensitivity evidence.
- `efficient` requires time, memory, parameter, or complexity evidence.
- `generalizable` requires an appropriate transfer evaluation.
- `significant` requires statistical testing when used statistically.
- `causes`, `eliminates`, `guarantees`, and `optimal` require unusually strong
  empirical or formal support; otherwise use bounded alternatives.

## Keep Terminology and Notation Stable

Maintain canonical terms, acronyms, symbols, module names, and aliases to remove.
Check capitalization, hyphenation, singular/plural form, and dataset/metric
spelling. One scientific object should not acquire multiple labels for variety.

For equations, check symbol introduction order, reused symbols, dimensions,
indices, operators, objective direction, and correspondence between prose and
formula. Ensure figures, algorithms, and subsection names use the same component
names.

## Align Sections Without Repetition

- **Abstract:** states the bounded claim and overall evidence.
- **Introduction:** motivates the claim and previews how it is tested.
- **Method:** explains the mechanism that could make it true.
- **Experiments:** evaluates it and reports exceptions.
- **Conclusion:** restates only what survived the evidence.

Repeat the conceptual spine, not identical wording. If results change the
interpretation, revise Abstract and Introduction rather than retaining an
outdated story.

## Handle Missing or Conflicting Evidence

Use precise placeholders such as:

- `[RESULT NEEDED: macro-F1 on Dataset X vs. strongest baseline]`
- `[ABLATION NEEDED: remove module Y under low-resource split]`
- `[CITATION NEEDED: prior methods assuming aligned modalities]`
- `[VERIFY: dataset split may overlap by entity]`
- `[CLAIM TOO STRONG: evidence currently shows association only]`

When supplied numbers conflict, do not choose silently. Identify the cells,
captions, or prose statements that disagree and preserve the uncertainty.

## Final Consistency Pass

Check title-to-task alignment; abstract-to-table agreement; contribution-to-
section mapping; dataset counts and split names; baseline names; metric direction;
table emphasis; figure/equation references; limitation scope; and whether all
placeholders remain visible.
