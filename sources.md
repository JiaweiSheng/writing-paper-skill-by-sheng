# Style Sources and Confidence

This inventory documents provenance; it is not a mandate to load or imitate all
papers for each task. Recurrent patterns across the reference corpus have higher
confidence than moves observed in one paper. Venue, year, and paper type are
confounds, so treat paper-specific structures as options.

Default alignment: the cross-paper tendencies visible in the reference corpus,
adapted to the user's target field and venue.

| Priority | Paper | What to learn |
| --- | --- | --- |
| Default | WWW 2026 DMKGC | compact abstract, explanatory example, paradigm figure, proxy objective, RQ-labelled results, diagnostic setting |
| Default | AAAI 2026 IMKGC | information-theoretic view, three named information axes, definition-driven Method |
| High | SIGIR 2022 CorED | two-level correlations carried through Method and analysis, prevalence statistics in the Introduction, long-tail evidence |
| High | ACL 2021 CasEE | overlap taxonomy with dataset statistics, cascade conditioned decoding, concise contributions |
| High | EMNLP 2020 FAAN | dynamic properties, toy example, early Related Work, `Impact of few-shot size` analysis |
| Medium | ECAI 2024 LoginMEA | paradigm figure with two prior-art groups, challenges posed as questions, local-to-global, low-resource |
| Medium | WSDM 2024 CDRNP | named old paradigm (EMCDR), three-panel paradigm figure, enumerated observations in results |
| Medium | SIGIR 2025 CDMEA | causal view, pilot experiment in the Introduction, three hard settings, labelled contribution bullets |
| Medium | WWW 2025 GWN | physics analogy, role of the equation before derivation, stability theorem as a fourth contribution |
| Medium | ACL 2024 OT-MEL (Findings, long paper) | borrowed tool (OT) introduced in Preliminaries, distillation for efficiency with a timing table, late Related Work with a paragraph on the tool's home field |
| Lower confidence | ICASSP 2024 GCL-LS (4 pages) | short-paper compression: Related Work folded into the Introduction, two-line Method overview, `Variant Analysis` |
| Lower confidence | ACL 2026 HyperMem (long paper) | the style outside KG/IE: LLM-agent memory, three-level hierarchy figure against chunk-based and graph-based RAG, benchmark-centric evaluation, cost and efficiency analysis, Limitations and Ethics sections |
| Lower confidence | WWW 2021 script event prediction; ICDE 2022 VIB CDR; EMNLP 2025 pseudo-labeling | multi-level connection; information-bottleneck transfer with a notation table; distribution-aware calibration |

Do not infer universal venue rules, preferred sentence counts, or mandatory
section order from this small and domain-concentrated corpus.

## Corpus Regularities Behind the Guidance

Counted over the 15 papers above (bodies only, references excluded):

- `However` 15/15; `Formally,` 14/15; `Besides,` 13/15; `In this way` 12/15;
  `Therefore,` 12/15; `Specifically,` 11/15; `To this end` 11/15; `Note that`
  11/15; `Particularly,` 10/15; `Intuitively` 7/15. `Thus,` appears twice in
  the whole corpus; `Generally,` is confined to five papers from 2021-2024.
- Related Work sits early (Section 2) in 6 papers and after Experiments in 8;
  the ICASSP short paper has none. Venue predicts this only loosely.
- Contribution lists: three items in 13 papers (inline in the ICASSP short
  paper), four in GWN (a stability theorem) and IMKGC (components listed
  apart from the framework). The last item is the empirical evidence in every
  case.
- An `Impact of X` or hyper-parameter analysis appears in at least 13 papers;
  a case study in 4; an efficiency comparison in 5; no paper has an error
  analysis section.
- `termed as` occurs 25 times, concentrated in the 2020-2024 papers; the 2026
  papers use `termed X`, `namely X`, or apposition instead.

## Deliberate Departures from the Corpus

The skill reproduces argument structure and paragraph roles, not every verbal
habit. It intentionally does not reproduce:

- `termed as` (unidiomatic; the author's later papers dropped it);
- `In our knowledge` (use `To the best of our knowledge`);
- `effectiveness performance` and similar doubled nouns;
- `novel` attached to nearly every `we propose` (41 uses in 14 papers), and
  `pioneerly` / `innovatively`;
- `significant(ly)` for differences without a statistical test (41 uses);
- `remarkable`, `superior`, `promising` as evaluative fillers;
- sentence-initial `Besides` in neutral prose (kept as an option for close
  imitation).

If the user asks for close imitation rather than a cleaned-up version of the
style, restore these consciously rather than by accident.
