# Excel and Power BI Data Export Directory

This directory contains the export manifest and a selected numbered CSV export retained from the project's Excel and Power BI preparation workflow.

The analytical datasets generated during the project are maintained in their respective canonical repository locations rather than being unnecessarily duplicated across folders.

## Files currently included in this directory

| File | Description |
|---|---|
| `00_export_manifest.csv` | Inventory of the analytical export datasets prepared during the project |
| `15_governance_control_register.csv` | Numbered export copy of the 16-record governance control register, containing 13 columns |

The canonical governance control register is maintained at:

`governance/registers/governance_control_register.csv`

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

## Export inventory

During project preparation, 23 numbered CSV exports were generated for the integrated Excel and Power BI workflow.

To avoid maintaining duplicate copies, the public repository retains the analytical datasets in their canonical locations. The export manifest is provided as an inventory of the prepared export set; it should not be interpreted as a guarantee that every numbered export is physically stored in this directory.

## Important interpretation notes

- Publisher-reported benchmark scores are not independently re-scored.
- Derived averages are calculated from published rounded values.
- Selected benchmark examples are purposively selected and are not representative of the full response population.
- The C10 / Sarvam-105B observation remains unavailable and is not imputed.
- Proposed governance controls have not been assessed or implemented.
- Framework mappings do not constitute legal advice or compliance certification.
- The full AI Incident Database archive is not included.
