# Examples

These examples contrast rhetorical choices rather than prescribe templates.
Bracketed material must come from the user's task and evidence. Change the
sentence structure as well as the content when adapting an example.

## Abstract

Weak (generic AI draft):

```text
In recent years, knowledge graphs have attracted increasing attention.
However, existing methods still have limitations. In this paper, we
propose a novel framework that achieves significant improvements.
```

Mechanism-centered revision:

```text
[Task] aims to [predict X] by [using Y]. Existing methods typically
[named paradigm], which [risks suppressing Z] and can impede further
gains, especially in [hard setting]. To this end, we propose [METHOD],
a [one-line mechanism] framework. Particularly, we [step 1], then
[step 2], and train the result to remain [desired property]. Extensive
experiments on [N datasets] demonstrate [metric, or TBD],
with sustained gains in [hard setting].
```

## Introduction Opening

Weak:

```text
Knowledge graphs are important in many applications. Many researchers
have studied knowledge graph completion. However, the problem is still
challenging.
```

Mechanism-centered revision:

```text
Knowledge graphs, which structure facts as (head, relation, tail)
triples, support [1-2 applications]. Their practical utility is often
hampered by incompleteness, motivating [task]: inferring a missing
[element] from observed triples. This becomes difficult when [specific
pain].

This paper focuses on [narrower task], which aims to [concrete
operation] by using [extra source]. As shown in Figure 1, [walk through
one example]. Here, [term] denotes [definition tied to the example].
```

## Two-Group Contrast

Weak:

```text
Many methods have been proposed [1,2,3,4,5]. They do not work well.
```

Mechanism-centered revision (when two genuine paradigms exist):

```text
Most existing studies can be roughly categorized into two groups.
The first group, namely [paradigm A], [does X]. However, it [misses Y],
as illustrated by [part of Figure 1]. Another group, namely [paradigm B],
[does Z], but may [introduce a different failure]. Despite their
success, both lines [share a root limitation], which becomes severe
in [hard setting].
```

## Method Module

Weak:

```text
Encoder: We use a GNN. Loss: We use a contrastive loss.
```

Mechanism-centered revision:

```text
The remaining obstacle is that [naive solution] would [fail how].
To address this, we devise a [module name] that [does what],
conditioned on [signal from the previous gap]. In this design,
the representation stays [property A] while remaining [property B].
```

## Contribution Items

Weak:

```text
- We propose a novel method.
- We conduct extensive experiments.
```

Evidence-linked revision:

```text
- We formulate [task] from a [perspective] and identify [2-3]
  information or failure types that prior [paradigm] does not separate.
- We propose [METHOD], which [core mechanism] to obtain [desired
  representation property].
- We devise [module A] and [module B] to [preserve X] while
  [suppressing Y].
- Experiments on [N sources / M benchmarks] show gains over
  [SOTA family], especially in [hard setting].
```

## Experiment Claim

Weak:

```text
Our method achieves the best results on all datasets, which
demonstrates the superiority of our model.
```

Evidence-linked revision:

```text
[METHOD] outperforms prior [paradigm] methods on [benchmark].
The margin is larger when [data are scarce / types are long-tail /
views are dissimilar], which aligns with the claim that [mechanism]
matters most in [hard setting]. Removing [module] drops [metric]
mainly in this setting, indicating that [module] is not a generic
add-on.
```

## Conclusion

Weak:

```text
In this paper, we proposed a novel method. Experiments show that
it works well. We will explore more interesting directions in the future.
```

Bounded revision:

```text
This paper addresses [task]. Existing studies mainly [paradigm],
which can [mechanism defect]. To this end, we propose [METHOD],
which [one-line mechanism] while [preserving the neglected property].
Experiments on [scope] show consistent gains, especially in
[hard setting]. Our future work will [one concrete next problem].
```

## Do-Not-Copy Boundary

Do not reuse people or company examples, original sentences, reported numbers,
or distinctive analogies from the reference papers.
Reuse paragraph roles and argument order only.
