# Raw Source Data

This directory contains the five original input CSV files assembled for the **AI Governance & Responsible AI Risk Observatory**. These inputs are kept separate from the cleaned and derived datasets in `data/processed/`.

## Files

| File | Description |
|---|---|
| `model_overview.csv` | Publisher-reported model-level benchmark summaries. |
| `model_dimension_scores.csv` | Publisher-reported scores across the benchmark's governance dimensions. |
| `selected_case_scores.csv` | Available model observations for selected benchmark cases. |
| `reported_region_summaries.csv` | Publisher-reported regional summary values and examples. |
| `governance_framework_register.csv` | Initial project-compiled reference register for AI governance and regulatory instruments. The maintained nine-entry version is in `data/processed/governance_framework_register_current.csv`. |

## Benchmark source and licensing

The benchmark-derived input data is based on the **Indian Responsible AI Benchmark**, published by Responsible AI Labs. The project records the benchmark source date as **12 March 2026**.

- Dataset: <https://huggingface.co/datasets/responsible-ai-labs/indian-responsible-ai-benchmark>
- Publisher announcement: <https://responsibleailabs.ai/announcements/huggingface-datasets-2026>
- Licence declared on the publisher's dataset page: MIT

The upstream publisher and dataset page remain the authoritative references for the source material and its current licence notice. This repository retains source attribution and does not claim ownership of the upstream benchmark.

## Project-derived benchmark files

The following files contain project-organised summaries or extracts based on the published benchmark and its accompanying documentation:

- `model_overview.csv`
- `model_dimension_scores.csv`
- `selected_case_scores.csv`
- `reported_region_summaries.csv`

They are not the result of independent model response testing, original red-teaming or re-scoring of raw model responses.

## Governance register note

`governance_framework_register.csv` is a separately compiled project reference register; it is not part of the upstream benchmark dataset. Its entries should be interpreted alongside their respective source URLs and official materials. The maintained current register and its change log are published in `data/processed/`.

## Data handling and interpretation

- Original input files are preserved separately from cleaned and derived analytical datasets.
- Publisher-reported scores are not independently re-scored.
- Selected case examples are purposively selected and are not representative of the full benchmark response population.
- Missing source observations are retained and documented rather than imputed.
- Source attribution, publication dates and applicable redistribution terms should be checked before reuse.
