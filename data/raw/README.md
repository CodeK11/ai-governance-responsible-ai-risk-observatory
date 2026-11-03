# Raw Source Data

This directory contains the original input datasets assembled for the AI Governance & Responsible AI Risk Observatory.

| File | Description |
|---|---|
| model_overview.csv | Published model-level benchmark summaries |
| model_dimension_scores.csv | Published scores across governance dimensions |
| selected_case_scores.csv | Available model scores for selected benchmark cases |
| reported_region_summaries.csv | Publisher-reported regional benchmark summaries |
| governance_framework_register.csv | Initial governance and regulatory framework reference register |

## Data handling notes

- Original source inputs are preserved separately from processed analytical datasets.
- Publisher-reported scores are not independently re-scored.
- Selected case examples are not representative of the full benchmark population.
- Missing source observations are retained and documented rather than imputed.
- Source attribution, publication dates and applicable redistribution terms should be checked before reuse.## Benchmark Source and Licensing

The benchmark-derived datasets in this project are based on the following public research resource:

**Indian Responsible AI Benchmark**

- Publisher: Responsible AI Labs
- Publication date: 12 March 2026
- Source: https://huggingface.co/datasets/responsible-ai-labs/indian-responsible-ai-benchmark
- Licence declared by publisher: MIT

The publisher's dataset card identifies the benchmark as MIT-licensed. Its announcement also confirms that the dataset is publicly available under the MIT licence.

### Project-derived files

The following CSVs contain project-organised summaries, extracts or transformations based on the published benchmark and its evaluation documentation:

- `model_overview.csv`
- `model_dimension_scores.csv`
- `selected_case_scores.csv`
- `reported_region_summaries.csv`

These files are not the result of independent model response testing or re-scoring.

### Citation

```bibtex
@dataset{indian_rai_benchmark_2026,
  title={Indian Responsible AI Benchmark},
  author={Responsible AI Labs},
  year={2026},
  url={https://huggingface.co/datasets/responsible-ai-labs/indian-responsible-ai-benchmark},
  note={212 prompts, 22 categories, 10 Indian regions, 8 RAIL dimensions}
}
```

### Additional note

`governance_framework_register.csv` is a separately compiled project reference register. Its entries should be consulted alongside their respective official source links. It is not part of the upstream RAIL benchmark dataset.

Third-party rights and licences remain with their respective owners.
