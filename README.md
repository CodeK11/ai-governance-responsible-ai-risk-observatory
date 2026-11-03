# AI Governance & Responsible AI Risk Observatory

**An India-first research and analytics project examining published Responsible AI benchmark results, AI governance frameworks, regulatory developments, and proposed organisational controls.**

[![Python](https://img.shields.io/badge/Python-Analysis-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL-SQLite-003B57?logo=sqlite&logoColor=white)](https://www.sqlite.org/)
[![Excel](https://img.shields.io/badge/Excel-Reporting-217346?logo=microsoftexcel&logoColor=white)](https://www.microsoft.com/microsoft-365/excel)
[![Power BI](https://img.shields.io/badge/Power%20BI-Model%20Preparation-F2C811?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)

## Project at a glance

This project examines publicly reported Indian Responsible AI benchmark summaries and selected stress-test examples, compares reported model performance across governance dimensions, organises relevant Indian and international governance instruments, and maps those instruments to a structured set of proposed controls.

The analytical workflow combines Python, SQL/SQLite, Excel and Power BI data-model preparation. The repository is organised to make the source inputs, derived datasets, validation evidence, governance registers and reporting assets inspectable.

> **Research boundary:** This project analyses publisher-reported benchmark summaries and selected published examples. It does not independently re-score raw model responses, conduct original model red-teaming, establish causal claims, or certify the safety or legal compliance of any AI system.

## Start here

| Resource | What it contains |
|---|---|
| [Project notebook](notebooks/AI%20Governance%20Risk%20Observatory%20Project.ipynb) | End-to-end Python workflow, from data discovery and validation through analysis, governance mapping and export preparation |
| [Project methodology](docs/PROJECT_METHODOLOGY.md) | Research design, data provenance, analytical methods, validation approach and limitations |
| [Integrated Excel workbook](excel/AI_Governance_Observatory_Integrated_Workbook.xlsx) | Consolidated 29-worksheet workbook containing datasets, summaries, documentation and manifests |
| [SQLite database](outputs/ai_governance_observatory.db) | Relational analytical database containing 20 tables |
| [SQL schema](sql/01_database_schema.sql) | Database table definitions |
| [Analytical SQL queries](sql/02_analytical_queries.sql) | Nine analytical queries used to interrogate the database |
| [Power BI table manifest](outputs/powerbi_model_tables/00_powerbi_table_manifest.csv) | Inventory of the 13 prepared semantic-model tables |
| [Power BI relationships](outputs/powerbi_model_tables/00_powerbi_relationships.csv) | Eight intended model relationships |
| [Governance control register](governance/registers/governance_control_register.csv) | Canonical register of 16 proposed controls |
| [Framework-control mapping](governance/registers/governance_control_framework_map.csv) | Links between governance controls and framework entries |
| [Evidence-reference mapping](governance/registers/governance_control_evidence_map.csv) | Evidence references associated with controls |
| [Data-quality audit](data/processed/data_quality_audit.csv) | Results of 30 documented data-quality checks |
| [Python-SQL cross-validation](data/processed/python_sql_cross_validation.csv) | Seven cross-validation checks comparing selected analytical results |

## Research questions

1. How do the published overall Responsible AI scores compare across the evaluated models?
2. Which governance dimensions show relatively stronger and weaker reported scores?
3. What patterns appear in the publisher-selected stress-test examples, and where are observations incomplete?
4. How do the published regional summaries compare, including their average-to-lowest reported score gaps?
5. How can relevant governance frameworks be organised and mapped to proposed organisational controls?
6. What data-quality, validation and evidence-traceability checks support a reproducible analysis?

## Data and scope

The benchmark inputs recorded in this project cover:

- **3 evaluated models**;
- **8 governance dimensions**;
- **212 benchmark prompts**;
- publisher-reported response counts of **206, 206 and 202** for the three models;
- **29** available selected case-model observations out of 30 possible combinations; and
- **5** publisher-reported regional summary records.

The benchmark source date recorded in the project data is **12 March 2026**. The current governance framework register contains **9 entries**; source URLs and verification dates are maintained in the register. The governance work includes **16 proposed controls**, **76 framework-control links** and **19 evidence references**.

### Source data

The raw source files and source notes are in [`data/raw/`](data/raw/). The project uses publisher-reported benchmark summaries and examples; it does not claim access to or re-score the complete raw response population. See [the raw-data provenance and licensing notes](data/raw/README.md) and the [publisher's benchmark dataset page](https://huggingface.co/datasets/responsible-ai-labs/indian-responsible-ai-benchmark).

### Processed data

Cleaned datasets, derived summaries, the current governance register, change log and validation outputs are maintained in [`data/processed/`](data/processed/). The regional analysis export is available as [`derived_region_analysis.csv`](data/processed/derived_region_analysis.csv).

## Selected findings

### Published benchmark summaries

- Reported overall scores are **7.43** for Sarvam-30B, **7.43** for Sarvam-105B and **7.24** for Sarvam-M.
- The two reported scores of 7.43 should not be read as proof of identical performance: the published values are rounded.
- Privacy has the highest average reported dimension score in the project calculations, at approximately **9.19/10**.
- Accountability has the lowest average reported dimension score, at approximately **6.13/10**.
- Safety has the largest cross-model score range among the eight dimensions, at **0.52 points**.

### Selected stress-test examples

- C01 has the lowest average reported overall score among the selected cases, at approximately **5.37**.
- C10 has two available model observations. Its average reported overall score is **5.85** and its average reported safety score is **3.00**.
- The C10 / Sarvam-105B observation is unavailable in the source extract and is retained as missing rather than imputed.

The cases are publisher-selected examples and are not a representative sample of model responses.

### Regional summaries

The five published regional average scores range from **7.24 to 7.50**. The reported average-to-lowest score gaps range from **0.78 to 2.24 points**. These are descriptive comparisons of publisher-reported summaries, not estimates of representative regional population performance.

## Governance framework and proposed controls

The framework register covers Indian and international instruments and references, including India's AI Governance Guidelines, the Digital Personal Data Protection Act and Rules, the EU AI Act, NIST AI RMF, ISO/IEC 42001, ISO/IEC 42005, OECD AI Principles and a TRAI draft consultation.

The control register contains:

- **15 controls** with status **Proposed – not assessed**; and
- **1 item** with status **Policy watch – draft**.

The framework-control links are analytical mappings created for this project. They are not legal opinions, applicability determinations, audit findings, evidence of implementation or assessments of control effectiveness. See [`governance/`](governance/README.md) for the register, mapping, analysis and validation files.

## Methodology and technical workflow

1. **Data ingestion:** Read benchmark summaries, selected case examples, regional summaries and governance framework records.
2. **Data profiling:** Inspect shapes, missing values, duplicate records, identifiers and score ranges.
3. **Data-quality validation:** Apply documented checks and record source-specific exceptions.
4. **Exploratory analysis:** Produce descriptive model, dimension, case and regional summaries.
5. **Governance mapping:** Maintain a framework register, control register, framework-control bridge and evidence-reference map.
6. **SQL analysis:** Create a relational SQLite database and execute nine analytical queries.
7. **Cross-validation:** Compare selected Python calculations with SQL query outputs.
8. **Reporting preparation:** Export Power BI-ready tables and relationship definitions and compile an integrated Excel workbook.

The detailed research design and limitations are in [`docs/PROJECT_METHODOLOGY.md`](docs/PROJECT_METHODOLOGY.md).

## Validation evidence

| Validation area | Recorded result |
|---|---:|
| Data-quality checks | 30/30 passed |
| Python-SQL cross-validation | 7/7 passed |
| Analytical SQL queries | 9 executed |
| SQLite tables | 20 |
| Power BI-ready tables | 13 |
| Intended Power BI relationships | 8 |
| Integrated Excel workbook worksheets | 29 |
| Governance mapping checks | 8/8 passed |

These checks test consistency against the project's documented rules and expected outputs. They do not independently validate the upstream benchmark publisher's methodology or establish real-world AI-system safety.

## Repository guide

```text
ai-governance-responsible-ai-risk-observatory/
│
├── README.md
├── requirements.txt
├── .gitignore
│
├── notebooks/
│   └── AI Governance Risk Observatory Project.ipynb
│
├── data/
│   ├── raw/
│   └── processed/
│
├── sql/
│   ├── README.md
│   ├── 01_database_schema.sql
│   └── 02_analytical_queries.sql
│
├── governance/
│   ├── registers/
│   ├── analysis/
│   └── validation/
│
├── outputs/
│   ├── ai_governance_observatory.db
│   ├── sqlite_table_row_counts.csv
│   ├── eda_findings_register.csv
│   ├── sql_query_results/
│   ├── excel_powerbi_exports/
│   └── powerbi_model_tables/
│
├── excel/
│   └── AI_Governance_Observatory_Integrated_Workbook.xlsx
│
└── docs/
    └── PROJECT_METHODOLOGY.md
```

## Reproducing the analysis

The notebook expects the project folder to retain the repository's directory structure, including `data/raw/` and `data/processed/`.

1. Clone or download this repository.
2. From the repository root, create and activate a Python environment.
3. Install the listed dependencies:

   ```bash
   python -m pip install -r requirements.txt
   ```

4. Start Jupyter from the repository root and open the notebook in `notebooks/`.
5. Run the notebook from the first cell, checking the validation outputs as it proceeds.

The project uses Python's built-in `sqlite3` module for SQLite operations. The prebuilt database and workbook are included as inspection-ready outputs; rerunning the notebook recreates project outputs in the local project directory.

## Current project status

### Available in this repository

- Reproducible, documented Jupyter Notebook and dependency list.
- Raw and processed benchmark datasets with provenance notes.
- Data-quality audit and Python-SQL cross-validation outputs.
- SQLite database, schema, analytical queries and query-result CSVs.
- Governance framework and control registers, mappings, evidence references and validation outputs.
- Integrated Excel workbook.
- Thirteen Power BI-ready tables and an eight-relationship manifest.
- Project methodology and limitations documentation.

### Still being finalised

The local Power BI report's semantic model became unavailable, so the four-page interactive PBIX is being reconstructed and revalidated. The corrupted PBIX is intentionally not published. Dashboard screenshots and the final PBIX will be added only after successful validation.

## Limitations and responsible use

- Published aggregate scores are not independently verified through raw model response testing.
- Rounded publisher-reported scores limit comparison precision.
- Selected stress-test examples are purposively selected and are not representative of the full response population.
- Missing case-model observations are not imputed.
- Regional summaries are descriptive and should not be interpreted as representative population estimates.
- The framework register is a project-maintained reference, not a legal opinion.
- Proposed controls have not been assessed for implementation or effectiveness.
- This project is educational research and is not legal advice, a compliance certification or a guarantee of AI-system safety.

## Attribution and third-party material

The benchmark source and publisher-declared licence are documented in [`data/raw/README.md`](data/raw/README.md). Third-party laws, standards, datasets and source materials remain subject to their respective rights and terms. No ownership of third-party material is claimed.

---

**Project focus:** Responsible AI benchmarking, AI governance, safety measurement, data quality, regulatory monitoring and evidence traceability.
