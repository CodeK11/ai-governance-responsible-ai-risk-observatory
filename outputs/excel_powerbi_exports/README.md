# Excel and Power BI Data Export Directory

This directory contains the export manifest and a selected numbered CSV export retained from the project’s Excel and Power BI preparation workflow. The full analytical datasets are maintained in their canonical repository locations to avoid unnecessary duplicate copies.

## Files physically included here

| File | Description |
|---|---|
| `00_export_manifest.csv` | Inventory of the 23 analytical CSV exports prepared for the integrated workbook and Power BI workflow, including each dataset’s canonical repository path. |
| `15_governance_control_register.csv` | Numbered export copy of the 16-record governance control register (13 columns). |

The canonical governance control register is maintained at `governance/registers/governance_control_register.csv`.

## How to use the export manifest

The manifest is an inventory of the 23 prepared export datasets. It is **not** a listing of files physically stored in this directory. Use the `canonical_repository_path` column to locate each dataset in the repository. The `file_size_kb` column records the size of the export at the time the original export set was generated; it should not be interpreted as the size of a separate file currently stored in this directory.

The 23 entries cover source, derived, validation and governance datasets. Their recorded row and column counts describe the prepared export datasets.

## Additional regional analysis export

The six-column, five-record regional analysis dataset is available separately at `data/processed/derived_region_analysis.csv`. It is derived from the `Regional Analysis` worksheet in the integrated Excel workbook and preserves the regional summary values and source reference.

## Where to find the other analytical datasets

| Dataset category | Repository location |
|---|---|
| Original source datasets | `data/raw/` |
| Cleaned and processed datasets | `data/processed/` |
| SQL query results | `outputs/sql_query_results/` |
| Governance registers | `governance/registers/` |
| Governance analysis | `governance/analysis/` |
| Governance validation | `governance/validation/` |
| Power BI semantic-model tables | `outputs/powerbi_model_tables/` |
| SQLite analytical database | `outputs/ai_governance_observatory.db` |
| Integrated Excel workbook | `excel/AI_Governance_Observatory_Integrated_Workbook.xlsx` |

## Interpretation notes

- Publisher-reported benchmark scores are not independently re-scored.
- Derived averages are calculated from published rounded values.
- Selected benchmark examples are purposively selected and are not representative of the full response population.
- The C10 / Sarvam-105B observation remains unavailable and is not imputed.
- Proposed governance controls have not been assessed or implemented.
- Framework mappings do not constitute legal advice or compliance certification.
- The full AI Incident Database archive is not included.
